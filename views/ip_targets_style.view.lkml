# dimension_group: target_time {
#   type: time
#   timeframes: [ date, week, month, year ]
#   # sql: CAST(${TABLE}.target_time as timestamp);;
#   sql: TIMESTAMP_ADD(cast(PARSE_DATETIME('%m/%e/%Y %k:%M:%S',${TABLE}.target_time) as timestamp),INTERVAL 10 HOUR);;
#   # sql:  ${TABLE}.target_time  ;;
# }

view: ip_targets_style {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.google_sheets.ip_targets_style`
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

  dimension: style {
    type: string
    sql: ${TABLE}.style ;;
  }

  dimension: target {
    type: number
    sql: ${TABLE}.target ;;
  }

  dimension: target_day {
    type: date
    sql:  ${TABLE}.target_time ;;
    # sql: cast(PARSE_DATETIME('%m/%e/%Y %k:%M:%S',${TABLE}.target_time) as timestamp);;
    # sql: TIMESTAMP_ADD(cast(PARSE_DATETIME('%m/%e/%Y %k:%M:%S',${TABLE}.target_time) as timestamp),INTERVAL 10 HOUR);;
  }
  # dimension: target_month {
  #   type: date_month
  #   sql: TIMESTAMP_ADD(cast(PARSE_DATETIME('%m/%e/%Y %k:%M:%S',${TABLE}.target_time) as timestamp),INTERVAL 10 HOUR);;
  # }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sum_target {
    type: sum
    sql: ${TABLE}.target ;;
    value_format: "0"
  }

}
