# If necessary, uncomment the line below to include explore_source.
# include: "looker_fivetran.model.lkml"

view: units_by_month {
  derived_table: {
    explore_source: shopify__transactions {
      column: line_item_qty { field: shopify__order_lines.line_item_qty }
      column: created_timestamp_date { field: shopify__orders.created_timestamp_date }
      column: title { field: shopify__order_lines.title }
    }
  }
  dimension: line_item_qty {
    description: ""
    type: number
  }
  dimension: created_timestamp_date {
    description: ""
    type: date
  }
  dimension: title {
    description: ""
  }
}
