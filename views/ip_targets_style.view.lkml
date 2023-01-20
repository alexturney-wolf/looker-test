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

  dimension: crossover_golf {
    type: number
    sql: ${TABLE}.crossover_golf ;;
  }

  dimension: crossover_hiker_wtz {
    type: number
    sql: ${TABLE}.crossover_hiker_wtz ;;
  }

  dimension: crossover_loafer {
    type: number
    sql: ${TABLE}.crossover_loafer ;;
  }

  dimension: crossover_longwing {
    type: number
    sql: ${TABLE}.crossover_longwing ;;
  }

  dimension: crossover_longwing_wtz {
    type: number
    sql: ${TABLE}.crossover_longwing_wtz ;;
  }

  dimension: crossover_mid {
    type: number
    value_format_name: id
    sql: ${TABLE}.crossover_mid ;;
  }

  dimension: crossover_mid_wtz {
    type: number
    sql: ${TABLE}.crossover_mid_wtz ;;
  }

  dimension: crossover_trainer_wtz {
    type: number
    sql: ${TABLE}.crossover_trainer_wtz ;;
  }

  dimension: crossover_victory_trainer {
    type: number
    sql: ${TABLE}.crossover_victory_trainer ;;
  }

  dimension: monaco_loafer {
    type: number
    sql: ${TABLE}.monaco_loafer ;;
  }

  dimension: swift_knit_derby {
    type: number
    sql: ${TABLE}.swift_knit_derby ;;
  }

  dimension: swift_knit_derby_wtz {
    type: number
    sql: ${TABLE}.swift_knit_derby_wtz ;;
  }

  dimension: swift_knit_loafer {
    type: number
    sql: ${TABLE}.swift_knit_loafer ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
