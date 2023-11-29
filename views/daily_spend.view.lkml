view: daily_spend {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.google_sheets.daily_spend` ;;

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: _row {
    type: number
    sql: ${TABLE}._row ;;
  }
  dimension: bing {
    type: number
    sql: ${TABLE}.bing ;;
  }
  dimension: criteo {
    type: number
    sql: ${TABLE}.criteo ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: digital_spend {
    type: number
    sql: ${TABLE}.digital_spend ;;
  }
  dimension: facebook {
    type: number
    sql: ${TABLE}.facebook ;;
  }
  dimension: forecast {
    type: number
    sql: ${TABLE}.forecast ;;
  }
  dimension: google {
    type: number
    sql: ${TABLE}.google ;;
  }
  dimension: other {
    type: number
    sql: ${TABLE}.other ;;
  }
  dimension: outbrain {
    type: number
    sql: ${TABLE}.outbrain ;;
  }
  dimension: podcast {
    type: number
    sql: ${TABLE}.podcast ;;
  }
  dimension: radio {
    type: number
    sql: ${TABLE}.radio ;;
  }
  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }
  dimension: roas {
    type: number
    sql: ${TABLE}.roas ;;
  }
  dimension: streaming {
    type: number
    sql: ${TABLE}.streaming ;;
  }
  dimension: taboola {
    type: number
    sql: ${TABLE}.taboola ;;
  }
  dimension: total_spend {
    type: number
    sql: ${TABLE}.total_spend ;;
    value_format_name: usd
  }
  dimension: tv {
    type: number
    sql: ${TABLE}.tv ;;
  }
  dimension: yahoo {
    type: number
    sql: ${TABLE}.yahoo ;;
  }
  dimension: youtube {
    type: number
    sql: ${TABLE}.youtube ;;
  }
  measure: count {
    type: count
  }
}
