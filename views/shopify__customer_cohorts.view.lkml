view: shopify__customer_cohorts {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__customer_cohorts`
    ;;

  dimension_group: cohort_month {
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
    sql: ${TABLE}.cohort_month ;;
  }

  dimension: cohort_month_number {
    type: number
    sql: ${TABLE}.cohort_month_number ;;
  }

  dimension: customer_cohort_id {
    type: string
    sql: ${TABLE}.customer_cohort_id ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension_group: date_month {
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
    datatype: datetime
    sql: ${TABLE}.date_month ;;
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

  dimension: line_item_count_in_month {
    type: number
    sql: ${TABLE}.line_item_count_in_month ;;
  }

  dimension: line_item_count_lifetime {
    type: number
    sql: ${TABLE}.line_item_count_lifetime ;;
  }

  dimension: order_count_in_month {
    type: number
    sql: ${TABLE}.order_count_in_month ;;
  }

  dimension: order_count_lifetime {
    type: number
    sql: ${TABLE}.order_count_lifetime ;;
  }

  dimension: source_relation {
    type: string
    sql: ${TABLE}.source_relation ;;
  }

  dimension: total_price_in_month {
    type: number
    sql: ${TABLE}.total_price_in_month ;;
  }

  dimension: total_price_lifetime {
    type: number
    sql: ${TABLE}.total_price_lifetime ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
