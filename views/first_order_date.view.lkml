view: first_order_date {
    derived_table: {
      sql: SELECT
          shopify__customers.email AS email,
          MIN(shopify__customers.first_order_timestamp) AS real_first_order
      FROM `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__customers`
          AS shopify__customers
      GROUP BY
          1
       ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension_group: real_first_order {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.real_first_order ;;
  }

    set: detail {
      fields: [email]
    }

}
