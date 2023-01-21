# If necessary, uncomment the line below to include explore_source.
# include: "looker_fivetran.model.lkml"
# dimension_group: created_timestamp_time {
#   description: ""
#   timeframes: [
#     date,
#     week,
#     month,
#     quarter,
#     year
#   ]
#   type: time
# }
# If necessary, uncomment the line below to include explore_source.
# include: "looker_fivetran.model.lkml"

view: units_by_month {
  derived_table: {
    explore_source: shopify__transactions {
      column: line_item_qty { field: shopify__order_lines.line_item_qty }
      column: title { field: shopify__order_lines.title }
      column: created_timestamp_date { field: shopify__orders.created_timestamp_raw }
      filters: {
        field: shopify__orders.source_name
        value: "web,88312,3890849"
      }
      filters: {
        field: shopify__orders.source_relation
        value: "shopify,\"shopify_last_call\""
      }
      filters: {
        field: order_tags_by_order.order_tags
        value: "-%Wholesale%,-%wholesale%,-%Draft%,-%draft%,-%Test%,-%test%"
      }
    }
  }
  dimension: title {
    description: ""
  }
  dimension: created_day {
    type: date
    sql: ${TABLE}.created_timestamp_date;;
  }

  dimension: created_month {
    type: date_month
    sql: ${TABLE}.created_timestamp_date;;
  }

  measure: sum_qty {
    type: sum
    sql: ${TABLE}.line_item_qty ;;
    value_format: "0"
  }
}
