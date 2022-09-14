# The name of this view in Looker is "Shopify Customer Cohorts"
view: shopify__customer_cohorts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `schema_shopify.shopify__customer_cohorts`
    ;;
  drill_fields: [customer_cohort_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: customer_cohort_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.customer_cohort_id ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cohort Month Number" in Explore.

  dimension: cohort_month_number {
    type: number
    sql: ${TABLE}.cohort_month_number ;;
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
    drill_fields: [customer_cohort_id]
  }
}
