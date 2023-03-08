view: order_line {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.shopify.order_line`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

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

  dimension: destination_location_address_1 {
    type: string
    sql: ${TABLE}.destination_location_address_1 ;;
  }

  dimension: destination_location_address_2 {
    type: string
    sql: ${TABLE}.destination_location_address_2 ;;
  }

  dimension: destination_location_city {
    type: string
    sql: ${TABLE}.destination_location_city ;;
  }

  dimension: destination_location_country_code {
    type: string
    sql: ${TABLE}.destination_location_country_code ;;
  }

  dimension: destination_location_id {
    type: number
    sql: ${TABLE}.destination_location_id ;;
  }

  dimension: destination_location_name {
    type: string
    sql: ${TABLE}.destination_location_name ;;
  }

  dimension: destination_location_province_code {
    type: string
    sql: ${TABLE}.destination_location_province_code ;;
  }

  dimension: destination_location_zip {
    type: string
    sql: ${TABLE}.destination_location_zip ;;
  }

  dimension: fulfillable_quantity {
    type: number
    sql: ${TABLE}.fulfillable_quantity ;;
  }

  dimension: fulfillment_service {
    type: string
    sql: ${TABLE}.fulfillment_service ;;
  }

  dimension: fulfillment_status {
    type: string
    sql: ${TABLE}.fulfillment_status ;;
  }

  dimension: gift_card {
    type: yesno
    sql: ${TABLE}.gift_card ;;
  }

  dimension: grams {
    type: number
    sql: ${TABLE}.grams ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: origin_location_address_1 {
    type: string
    sql: ${TABLE}.origin_location_address_1 ;;
  }

  dimension: origin_location_address_2 {
    type: string
    sql: ${TABLE}.origin_location_address_2 ;;
  }

  dimension: origin_location_city {
    type: string
    sql: ${TABLE}.origin_location_city ;;
  }

  dimension: origin_location_country_code {
    type: string
    sql: ${TABLE}.origin_location_country_code ;;
  }

  dimension: origin_location_id {
    type: number
    sql: ${TABLE}.origin_location_id ;;
  }

  dimension: origin_location_name {
    type: string
    sql: ${TABLE}.origin_location_name ;;
  }

  dimension: origin_location_province_code {
    type: string
    sql: ${TABLE}.origin_location_province_code ;;
  }

  dimension: origin_location_zip {
    type: string
    sql: ${TABLE}.origin_location_zip ;;
  }

  dimension: pre_tax_price {
    type: number
    sql: ${TABLE}.pre_tax_price ;;
  }

  dimension: pre_tax_price_set {
    type: string
    sql: ${TABLE}.pre_tax_price_set ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: price_set {
    type: string
    sql: ${TABLE}.price_set ;;
  }

  dimension: product_exists {
    type: yesno
    sql: ${TABLE}.product_exists ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: properties {
    type: string
    sql: ${TABLE}.properties ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: requires_shipping {
    type: yesno
    sql: ${TABLE}.requires_shipping ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: tax_code {
    type: string
    sql: ${TABLE}.tax_code ;;
  }

  dimension: taxable {
    type: yesno
    sql: ${TABLE}.taxable ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: total_discount {
    type: number
    sql: ${TABLE}.total_discount ;;
  }

  dimension: total_discount_set {
    type: string
    sql: ${TABLE}.total_discount_set ;;
  }

  dimension: variant_id {
    type: number
    sql: ${TABLE}.variant_id ;;
  }

  dimension: variant_inventory_management {
    type: string
    sql: ${TABLE}.variant_inventory_management ;;
  }

  dimension: variant_title {
    type: string
    sql: ${TABLE}.variant_title ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  measure: count {
    type: count
    drill_fields: [id, destination_location_name, origin_location_name, name]
  }
}
