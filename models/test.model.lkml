connection: "looker_fivetran"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }


explore: shopify__transactions {
  label: "TEST ROAS"
  join: shopify__orders {
    type: full_outer
    relationship: many_to_one
    sql_on: ${shopify__orders.order_id} = ${shopify__transactions.order_id};;
  }
  join: shopify__customers {
    type:  left_outer
    relationship: many_to_many
    sql_on: ${shopify__orders.customer_id} = ${shopify__customers.customer_id} ;;
  }
  join: cust_tags_by_cust {
    type:  left_outer
    relationship: many_to_one
    sql_on: ${shopify__customers.customer_id} = ${cust_tags_by_cust.customer_tag_id} ;;
  }
  join: first_order_date {
    type:  left_outer
    relationship: many_to_one
    sql_on: ${shopify__customers.email} = ${first_order_date.email} ;;
  }
  join: shopify__order_lines {
    type: left_outer
    sql_on: ${shopify__orders.order_id} =  ${shopify__order_lines.order_id} ;;
    relationship: one_to_many
  }
  # new
  join: order_line_tags {
    type: left_outer
    sql_on: ${shopify__order_lines.order_line_id} =  ${order_line_tags.order_line_id} ;;
    relationship: one_to_many
  }

  join: shopify__products {
    type:  left_outer
    sql_on: ${shopify__order_lines.product_id} = ${shopify__products.product_id} ;;
    relationship:  many_to_one
  }
  join: order_tags_by_order {
    type:  left_outer
    sql_on: ${shopify__orders.order_id} = ${order_tags_by_order.order_tag_order_id} ;;
    relationship: one_to_one
  }
  join: daily_spend {
    type:  left_outer
    sql_on: ${daily_spend.date_date} = ${shopify__orders.created_timestamp_date} ;;
    relationship: many_to_one
  }
  sql_always_where: (${order_tags_by_order.order_tags} <> 'wholesale' OR ${order_tags_by_order.order_tags} IS NULL);;
}
