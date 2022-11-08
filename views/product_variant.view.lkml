view: product_variant {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.shopify.product_variant`
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

  dimension: barcode {
    type: string
    sql: ${TABLE}.barcode ;;
  }

  dimension: compare_at_price {
    type: number
    sql: ${TABLE}.compare_at_price ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: fulfillment_service {
    type: string
    sql: ${TABLE}.fulfillment_service ;;
  }

  dimension: grams {
    type: number
    sql: ${TABLE}.grams ;;
  }

  dimension: image_id {
    type: number
    sql: ${TABLE}.image_id ;;
  }

  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: inventory_management {
    type: string
    sql: ${TABLE}.inventory_management ;;
  }

  dimension: inventory_policy {
    type: string
    sql: ${TABLE}.inventory_policy ;;
  }

  dimension: inventory_quantity {
    type: number
    sql: ${TABLE}.inventory_quantity ;;
  }

  dimension: inventory_quantity_adjustment {
    type: number
    sql: ${TABLE}.inventory_quantity_adjustment ;;
  }

  dimension: old_inventory_quantity {
    type: number
    sql: ${TABLE}.old_inventory_quantity ;;
  }

  dimension: option_1 {
    type: string
    sql: ${TABLE}.option_1 ;;
  }

  dimension: option_2 {
    type: string
    sql: ${TABLE}.option_2 ;;
  }

  dimension: option_3 {
    type: string
    sql: ${TABLE}.option_3 ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: presentment_prices {
    type: string
    sql: ${TABLE}.presentment_prices ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
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

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  dimension: weight_unit {
    type: string
    sql: ${TABLE}.weight_unit ;;
  }

  dimension: variant_color {
    type:  string
    sql: IF(REGEXP_CONTAINS(${TABLE}.title, '[A-z \\/]+ \\/'),regexp_extract(${TABLE}.title,'([A-z \\/]+) \\/'), regexp_extract(${TABLE}.title,'([A-z]+)') ) ;;
  }

  measure: inv {
    type: sum
    sql: ${inventory_quantity} ;;
  }

  measure: count {
    type: count
    drill_fields: [id, inventory_item.id, product.id]
  }
}
