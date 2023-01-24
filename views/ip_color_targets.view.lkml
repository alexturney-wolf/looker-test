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

  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }

  dimension: target {
    type: number
    sql: ${TABLE}.target ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  dimension: target_day {
    type: date
    sql:  TIMESTAMP(${TABLE}.target_time);;
  }

    # sql: cast(PARSE_DATETIME('%m/%e/%Y %k:%M:%S',${TABLE}.target_time) as timestamp);;
    # sql: TIMESTAMP_ADD(cast(PARSE_DATETIME('%m/%e/%Y %k:%M:%S',${TABLE}.target_time) as timestamp),INTERVAL 10 HOUR);;

  measure: sum_target {
    type: sum
    sql: ${TABLE}.target ;;
    value_format: "0"
  }

}
