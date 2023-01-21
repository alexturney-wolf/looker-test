# If necessary, uncomment the line below to include explore_source.
# include: "looker_fivetran.model.lkml"
# dimension_group: created_timestamp_time {
#   description: ""
#   timeframes: [
#     date,
#     week,
#     month,
#     quarter,
#     year
#   ]
#   type: time
# }
# If necessary, uncomment the line below to include explore_source.
# include: "looker_fivetran.model.lkml"

# explore_source: shopify__transactions {
#   column: line_item_qty { field: shopify__order_lines.line_item_qty }
#   column: title { field: shopify__order_lines.title }
#   column: created_timestamp_date { field: shopify__orders.created_timestamp_date }
#   filters: {
#     field: shopify__orders.source_name
#     value: "web,88312,3890849"
#   }
#   filters: {
#     field: shopify__orders.source_relation
#     value: "shopify,\"shopify_last_call\""
#   }
#   filters: {
#     field: order_tags_by_order.order_tags
#     value: "-%Wholesale%,-%wholesale%,-%Draft%,-%draft%,-%Test%,-%test%"
#   }
# }

view: units_by_month {
  derived_table: {
    sql:
      WITH order_tags_by_order AS (SELECT
          order_tag.order_id  AS order_tag_order_id,
          STRING_AGG(DISTINCT CAST(order_tag.value AS STRING), ', ') AS order_tag_list_test
      FROM `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__orders`
           AS shopify__orders
      LEFT JOIN `fivetran-wolf-and-shepher-osfl.shopify.order_tag`
           AS order_tag ON shopify__orders.order_id = order_tag.order_id
      GROUP BY
          1
      ORDER BY
          2 DESC
       )
    SELECT
        shopify__order_lines.title  AS shopify__order_lines_title,
            (DATE(shopify__orders.created_timestamp)) AS shopify__orders_created_timestamp_date,
        ROUND(COALESCE(CAST( ( SUM(DISTINCT (CAST(ROUND(COALESCE( shopify__order_lines.quantity  ,0)*(1/1000*1.0), 9) AS NUMERIC) + (cast(cast(concat('0x', substr(to_hex(md5(CAST( shopify__order_lines.order_line_id   AS STRING))), 1, 15)) as int64) as numeric) * 4294967296 + cast(cast(concat('0x', substr(to_hex(md5(CAST( shopify__order_lines.order_line_id   AS STRING))), 16, 8)) as int64) as numeric)) * 0.000000001 )) - SUM(DISTINCT (cast(cast(concat('0x', substr(to_hex(md5(CAST( shopify__order_lines.order_line_id   AS STRING))), 1, 15)) as int64) as numeric) * 4294967296 + cast(cast(concat('0x', substr(to_hex(md5(CAST( shopify__order_lines.order_line_id   AS STRING))), 16, 8)) as int64) as numeric)) * 0.000000001) )  / (1/1000*1.0) AS FLOAT64), 0), 6) AS shopify__order_lines_line_item_qty
    FROM `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__transactions`
         AS shopify__transactions
    FULL OUTER JOIN `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__orders`
         AS shopify__orders ON shopify__orders.order_id = shopify__transactions.order_id
    LEFT JOIN `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__customers`
         AS shopify__customers ON shopify__orders.customer_id = shopify__customers.customer_id
    LEFT JOIN `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__order_lines`
         AS shopify__order_lines ON shopify__orders.order_id =  shopify__order_lines.order_id
    LEFT JOIN order_tags_by_order ON shopify__orders.order_id = order_tags_by_order.order_tag_order_id
    WHERE (shopify__orders.source_name ) IN ('3890849', '88312', 'web') AND (shopify__orders.source_relation ) IN ('shopify', 'shopify_last_call') AND ((order_tags_by_order.order_tag_list_test ) NOT LIKE '%wholesale%' AND ((order_tags_by_order.order_tag_list_test ) NOT LIKE '%Wholesale%' AND (order_tags_by_order.order_tag_list_test ) NOT LIKE '%draft%') AND ((order_tags_by_order.order_tag_list_test ) NOT LIKE '%Draft%' AND ((order_tags_by_order.order_tag_list_test ) NOT LIKE '%Test%' AND (order_tags_by_order.order_tag_list_test ) NOT LIKE '%test%')) OR (order_tags_by_order.order_tag_list_test ) IS NULL) AND ((order_tags_by_order.order_tag_list_test <> 'wholesale' OR order_tags_by_order.order_tag_list_test IS NULL))
    GROUP BY
        1,
        2
    ORDER BY
        2
      ;;
  }

  dimension: title {
    description: ""
    sql:  ${TABLE}.shopify__order_lines_title ;;
  }
  dimension: created_day {
    type: date
    sql: TIMESTAMP(${TABLE}.shopify__orders_created_timestamp_date,"UTC");;
  }

  # dimension: created_month {
  #   type: date_month
  #   sql: ${TABLE}.created_timestamp_date;;
  # }

  measure: sum_qty {
    type: sum
    sql: ${TABLE}.shopify__order_lines_line_item_qty ;;
    value_format: "0"
  }
}
