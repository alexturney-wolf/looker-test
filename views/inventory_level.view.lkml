view: inventory_level {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.shopify.inventory_level`
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

  dimension: available {
    type: number
    sql: ${TABLE}.available ;;
  }

  dimension: inventory_item_id {
    type: number
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.location_id ;;
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
    drill_fields: [location.localized_country_name, location.localized_province_name, location.country_name, location.name, location.id]
  }

  measure: total_inv_by_id {
    type: sum
    sql: {TABLE}.available ;;
  }
}
