view: order_tag {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.shopify.order_tag`
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

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
    primary_key: yes
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
    primary_key: yes
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: list_test {
    type: list
    list_field: value
    sql_distinct_key: ${TABLE}.index, ${TABLE}.order_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
