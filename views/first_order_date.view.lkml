view: first_order_date {
    derived_table: {
      sql: SELECT
          shopify__customers.customer_id  AS id,
          shopify__customers.email AS email,
          shopify__customers.first_order_timestamp AS first_order_timestamp
      FROM `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__customers`
           AS shopify__customers
       ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension_group: first_order_timestamp {
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
    sql: ${TABLE}.first_order_timestamp ;;
  }

    set: detail {
      fields: [id, email]
    }

}
