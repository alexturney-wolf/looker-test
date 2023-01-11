view: shopify__customers {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__customers`
    ;;

  dimension_group: _fivetran_synced {
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
    sql: ${TABLE}._fivetran_synced ;;
  }

  dimension: account_state {
    type: string
    sql: ${TABLE}.account_state ;;
  }

  dimension: average_order_value {
    type: number
    sql: ${TABLE}.average_order_value ;;
  }

  dimension_group: created_timestamp {
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
    sql: ${TABLE}.created_timestamp ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: default_address_id {
    type: number
    sql: ${TABLE}.default_address_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
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

  dimension: has_accepted_marketing {
    type: yesno
    sql: ${TABLE}.has_accepted_marketing ;;
  }

  dimension: is_tax_exempt {
    type: yesno
    sql: ${TABLE}.is_tax_exempt ;;
  }

  dimension: is_verified_email {
    type: yesno
    sql: ${TABLE}.is_verified_email ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: lifetime_count_orders {
    type: number
    sql: ${TABLE}.lifetime_count_orders ;;
  }

  dimension: lifetime_total_amount {
    type: number
    sql: ${TABLE}.lifetime_total_amount ;;
  }

  dimension: lifetime_total_refunded {
    type: number
    sql: ${TABLE}.lifetime_total_refunded ;;
  }

  dimension: lifetime_total_spent {
    type: number
    sql: ${TABLE}.lifetime_total_spent ;;
  }

  dimension_group: most_recent_order_timestamp {
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
    sql: ${TABLE}.most_recent_order_timestamp ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: source_relation {
    type: string
    sql: ${TABLE}.source_relation ;;
  }

  dimension_group: updated_timestamp {
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
    sql: ${TABLE}.updated_timestamp ;;
  }

  measure: customer_count {
    type: count
    drill_fields: [last_name, first_name]
  }

  measure: email_count {
    type: count
    drill_fields: [email]
  }

  measure: real_first_order_date{
    type: string
    sql: MIN(${first_order_timestamp_date}) ;;
  }

}
