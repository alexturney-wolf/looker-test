view: concat_products {
  derived_table: {
    sql: with temp as (WITH order_tags_by_order AS (SELECT
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
    CONCAT('#10', (CAST(shopify__orders.order_number  AS STRING))) AS ordernumber,
    CONCAT(shopify__order_lines.title, ' - ', (IF(REGEXP_CONTAINS(shopify__order_lines.variant_title, '[A-z \\/]+ \\/'),regexp_extract(shopify__order_lines.variant_title,'([A-z \\/]+) \\/'), regexp_extract(shopify__order_lines.variant_title,'([A-z]+)') ))) AS stylecolor
FROM `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__transactions`
     AS shopify__transactions
FULL OUTER JOIN `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__orders`
     AS shopify__orders ON shopify__orders.order_id = shopify__transactions.order_id
LEFT JOIN `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__customers`
     AS shopify__customers ON shopify__orders.customer_id = shopify__customers.customer_id
LEFT JOIN `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__order_lines`
     AS shopify__order_lines ON shopify__orders.order_id =  shopify__order_lines.order_id
LEFT JOIN order_tags_by_order ON shopify__orders.order_id = order_tags_by_order.order_tag_order_id
WHERE (shopify__orders.source_relation ) = 'shopify' AND ((( shopify__customers.created_timestamp  ) >= (TIMESTAMP('2023-01-01 00:00:00', 'America/Los_Angeles')) AND ( shopify__customers.created_timestamp  ) < (TIMESTAMP('2023-02-01 00:00:00', 'America/Los_Angeles')))) AND ((order_tags_by_order.order_tag_list_test <> 'wholesale' OR order_tags_by_order.order_tag_list_test IS NULL))
GROUP BY
    1,
    2
ORDER BY
    1
LIMIT 500
)
select temp.ordernumber, STRING_AGG(temp.stylecolor,",") AS products
from temp
group by 1
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ordernumber {
    type: string
    sql: ${TABLE}.ordernumber ;;
  }

  dimension: products {
    type: string
    sql: ${TABLE}.products ;;
  }

  set: detail {
    fields: [ordernumber, products]
  }
}
