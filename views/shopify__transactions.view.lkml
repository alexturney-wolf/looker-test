view: shopify__transactions {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__transactions`
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

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: currency_exchange_adjustment {
    type: number
    sql: ${TABLE}.currency_exchange_adjustment ;;
  }

  dimension: currency_exchange_calculated_amount {
    type: number
    sql: ${TABLE}.currency_exchange_calculated_amount ;;
  }

  dimension: currency_exchange_currency {
    type: string
    sql: ${TABLE}.currency_exchange_currency ;;
  }

  dimension: currency_exchange_final_amount {
    type: number
    sql: ${TABLE}.currency_exchange_final_amount ;;
  }

  dimension: currency_exchange_id {
    type: number
    sql: ${TABLE}.currency_exchange_id ;;
  }

  dimension: currency_exchange_original_amount {
    type: number
    sql: ${TABLE}.currency_exchange_original_amount ;;
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}.device_id ;;
  }

  dimension: error_code {
    type: string
    sql: ${TABLE}.error_code ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchange_rate ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.gateway ;;
  }

  dimension: kind {
    type: string
    sql: ${TABLE}.kind ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.location_id ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: payment_avs_result_code {
    type: string
    sql: ${TABLE}.payment_avs_result_code ;;
  }

  dimension: payment_credit_card_bin {
    type: string
    sql: ${TABLE}.payment_credit_card_bin ;;
  }

  dimension: payment_credit_card_company {
    type: string
    sql: ${TABLE}.payment_credit_card_company ;;
  }

  dimension: payment_credit_card_number {
    type: string
    sql: ${TABLE}.payment_credit_card_number ;;
  }

  dimension: payment_cvv_result_code {
    type: string
    sql: ${TABLE}.payment_cvv_result_code ;;
  }

  dimension_group: processed_timestamp {
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
    sql: ${TABLE}.processed_timestamp ;;
  }

  dimension: receipt {
    type: string
    sql: ${TABLE}.receipt ;;
  }

  dimension: refund_id {
    type: number
    sql: ${TABLE}.refund_id ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }

  dimension: source_relation {
    type: string
    sql: ${TABLE}.source_relation ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: test {
    type: yesno
    sql: ${TABLE}.test ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}.transaction_id ;;
    primary_key: yes
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: is_return {
    type:  string
    sql: IF(${TABLE}.refund_id = null,"yes", "no");;
  }

  measure: count {
    type: count
    drill_fields: [source_name]
  }

  measure: total_amount {
    type: sum
    sql: ${amount} ;;
    value_format_name: usd
  }
}
