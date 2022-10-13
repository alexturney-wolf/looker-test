view: order_tags_by_order {
  derived_table: {
    sql: SELECT
          order_tag.order_id  AS order_tag_order_id,
          STRING_AGG(DISTINCT CAST(order_tag.value AS STRING), '|RECORD|') AS order_tag_list_test
      FROM `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__orders`
           AS shopify__orders
      LEFT JOIN `fivetran-wolf-and-shepher-osfl.shopify.order_tag`
           AS order_tag ON shopify__orders.order_id = order_tag.order_id
      WHERE ((order_tag.value <> 'wholesale' OR order_tag.value IS NULL))
      GROUP BY
          1
      ORDER BY
          2 DESC
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: order_tag_order_id {
    type: number
    sql: ${TABLE}.order_tag_order_id ;;
    primary_key: yes
  }

  dimension: order_tags {
    type: string
    sql: ${TABLE}.order_tag_list_test ;;
  }

  set: detail {
    fields: [order_tag_order_id, order_tags]
  }
}
