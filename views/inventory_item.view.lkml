view: inventory_item {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.shopify.inventory_item`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
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

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: country_code_of_origin {
    type: string
    sql: ${TABLE}.country_code_of_origin ;;
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

  dimension: province_code_of_origin {
    type: string
    sql: ${TABLE}.province_code_of_origin ;;
  }

  dimension: requires_shipping {
    type: yesno
    sql: ${TABLE}.requires_shipping ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: tracked {
    type: yesno
    sql: ${TABLE}.tracked ;;
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

  measure: count {
    type: count
    drill_fields: [id, product_variant.count, inventory_level.count]
  }
}
