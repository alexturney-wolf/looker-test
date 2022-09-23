view: shopify__order_lines {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__order_lines`
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

  dimension: grams {
    type: number
    sql: ${TABLE}.grams ;;
  }

  dimension: image_id {
    type: number
    sql: ${TABLE}.image_id ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: inventory_item_id {
    type: number
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: is_gift_card {
    type: yesno
    sql: ${TABLE}.is_gift_card ;;
  }

  dimension: is_requiring_shipping {
    type: yesno
    sql: ${TABLE}.is_requiring_shipping ;;
  }

  dimension: is_taxable {
    type: yesno
    sql: ${TABLE}.is_taxable ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_line_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.order_line_id ;;
  }

  dimension: pre_tax_price {
    type: number
    sql: ${TABLE}.pre_tax_price ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: property_charge_interval_frequency {
    type: number
    sql: ${TABLE}.property_charge_interval_frequency ;;
  }

  dimension: property_for_shipping_jan_3_rd_2020 {
    type: string
    sql: ${TABLE}.property_for_shipping_jan_3_rd_2020 ;;
  }

  dimension: property_shipping_interval_frequency {
    type: number
    sql: ${TABLE}.property_shipping_interval_frequency ;;
  }

  dimension: property_shipping_interval_unit_type {
    type: string
    sql: ${TABLE}.property_shipping_interval_unit_type ;;
  }

  dimension: property_subscription_id {
    type: number
    sql: ${TABLE}.property_subscription_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: quantity_net_refunds {
    type: number
    sql: ${TABLE}.quantity_net_refunds ;;
  }

  dimension: refunded_quantity {
    type: number
    sql: ${TABLE}.refunded_quantity ;;
  }

  dimension: refunded_subtotal {
    type: number
    sql: ${TABLE}.refunded_subtotal ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: source_relation {
    type: string
    sql: ${TABLE}.source_relation ;;
  }

  dimension: subtotal_net_refunds {
    type: number
    sql: ${TABLE}.subtotal_net_refunds ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: total_discount {
    type: number
    sql: ${TABLE}.total_discount ;;
  }

  dimension: variant_barcode {
    type: string
    sql: ${TABLE}.variant_barcode ;;
  }

  dimension: variant_compare_at_price {
    type: number
    sql: ${TABLE}.variant_compare_at_price ;;
  }

  dimension_group: variant_created {
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
    sql: ${TABLE}.variant_created_at ;;
  }

  dimension: variant_fulfillment_service {
    type: string
    sql: ${TABLE}.variant_fulfillment_service ;;
  }

  dimension: variant_grams {
    type: number
    sql: ${TABLE}.variant_grams ;;
  }

  dimension: variant_id {
    type: number
    sql: ${TABLE}.variant_id ;;
  }

  dimension: variant_inventory_management {
    type: string
    sql: ${TABLE}.variant_inventory_management ;;
  }

  dimension: variant_inventory_policy {
    type: string
    sql: ${TABLE}.variant_inventory_policy ;;
  }

  dimension: variant_inventory_quantity {
    type: number
    sql: ${TABLE}.variant_inventory_quantity ;;
  }

  dimension: variant_is_requiring_shipping {
    type: yesno
    sql: ${TABLE}.variant_is_requiring_shipping ;;
  }

  dimension: variant_is_taxable {
    type: yesno
    sql: ${TABLE}.variant_is_taxable ;;
  }

  dimension: variant_option_1 {
    type: string
    sql: ${TABLE}.variant_option_1 ;;
  }

  dimension: variant_option_2 {
    type: string
    sql: ${TABLE}.variant_option_2 ;;
  }

  dimension: variant_option_3 {
    type: string
    sql: ${TABLE}.variant_option_3 ;;
  }

  dimension: variant_position {
    type: number
    sql: ${TABLE}.variant_position ;;
  }

  dimension: variant_price {
    type: number
    sql: ${TABLE}.variant_price ;;
  }

  dimension: variant_sku {
    type: string
    sql: ${TABLE}.variant_sku ;;
  }

  dimension: variant_tax_code {
    type: string
    sql: ${TABLE}.variant_tax_code ;;
  }

  dimension: variant_title {
    type: string
    sql: ${TABLE}.variant_title ;;
  }

  dimension: variant_color {
    type:  string
    sql: regexp_extract(${TABLE}.variant_title,'\w+ \\/ \w+') ;;
  }

  dimension_group: variant_updated {
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
    sql: ${TABLE}.variant_updated_at ;;
  }

  dimension: variant_weight {
    type: number
    sql: ${TABLE}.variant_weight ;;
  }

  dimension: variant_weight_unit {
    type: string
    sql: ${TABLE}.variant_weight_unit ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }

  measure: line_item_qty {
    type: sum
    sql:  ${TABLE}.quantity ;;
  }
}
