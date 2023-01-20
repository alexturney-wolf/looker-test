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

  dimension: date {
    type: string
    sql: CAST(${TABLE}.date as TIMESTAMP FORMAT 'MM-DD-YYYY' )  ;;
  }

  dimension: style {
    type: string
    sql: ${TABLE}.style ;;
  }

  dimension: target {
    type: number
    sql: ${TABLE}.target ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: running_target {
    type: sum
    sql: ${TABLE}.target ;;
  }
}
