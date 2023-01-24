view: ip_color_targets {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.google_sheets_sc.ip_color_targets`
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

  dimension: _row {
    type: number
    sql: ${TABLE}._row ;;
  }

  dimension: style_color {
    type: string
    sql: ${TABLE}.style_color ;;
  }

  dimension: target {
    type: number
    sql: ${TABLE}.target ;;
  }

  # dimension_group: target {
  #   type: time
  #   timeframes: [
  #     raw,
  #     time,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   datatype: datetime
  #   sql: ${TABLE}.target_time ;;
  # }

  dimension: target_day {
    type: date
    sql:  TIMESTAMP(${TABLE}.target_time);;
  }

  measure: sum_target {
    type: sum
    sql: ${TABLE}.target ;;
    value_format: "0"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
