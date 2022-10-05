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

  dimension: field_name {
    type: string
    sql:  (SELECT STRING_AGG(values) AS string_agg
FROM UNNEST([NULL, "narvar_returns", "wholesale"]) AS values)  ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
