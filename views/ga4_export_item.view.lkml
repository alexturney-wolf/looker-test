view: ga4_export_item {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.google_analytics_4_export.item` ;;
  drill_fields: [id]

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: _fivetran_id {
    primary_key: yes
    type: string
    sql: ${TABLE}._fivetran_id ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: affiliation {
    type: string
    sql: ${TABLE}.affiliation ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: category_2 {
    type: string
    sql: ${TABLE}.category_2 ;;
  }
  dimension: category_3 {
    type: string
    sql: ${TABLE}.category_3 ;;
  }
  dimension: category_4 {
    type: string
    sql: ${TABLE}.category_4 ;;
  }
  dimension: category_5 {
    type: string
    sql: ${TABLE}.category_5 ;;
  }
  dimension: coupon {
    type: string
    sql: ${TABLE}.coupon ;;
  }
  dimension: creative_name {
    type: string
    sql: ${TABLE}.creative_name ;;
  }
  dimension: creative_slot {
    type: string
    sql: ${TABLE}.creative_slot ;;
  }
  dimension_group: event_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.event_timestamp ;;
  }
  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }
  dimension: list_id {
    type: string
    sql: ${TABLE}.list_id ;;
  }
  dimension: list_index {
    type: string
    sql: ${TABLE}.list_index ;;
  }
  dimension: list_name {
    type: string
    sql: ${TABLE}.list_name ;;
  }
  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }
  dimension: price_in_usd {
    type: number
    sql: ${TABLE}.price_in_usd ;;
  }
  dimension: promotion_id {
    type: string
    sql: ${TABLE}.promotion_id ;;
  }
  dimension: promotion_name {
    type: string
    sql: ${TABLE}.promotion_name ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }
  dimension: refund {
    type: number
    sql: ${TABLE}.refund ;;
  }
  dimension: refund_in_usd {
    type: number
    sql: ${TABLE}.refund_in_usd ;;
  }
  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }
  dimension: revenue_in_usd {
    type: number
    sql: ${TABLE}.revenue_in_usd ;;
  }
  dimension: variant {
    type: string
    sql: ${TABLE}.variant ;;
  }
  measure: count {
    type: count
    drill_fields: [id, creative_name, list_name, promotion_name, name]
  }
}
