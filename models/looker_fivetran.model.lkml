# Define the database connection to be used for this model.
connection: "looker_fivetran"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: looker_fivetran_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_fivetran_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Looker Fivetran"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.


# dbt model for klaviyo and shopify
explore: shopify_holistic_reporting__customer_enhanced {
  join: shopify__orders {
    type: left_outer
    relationship: one_to_many
    sql_on: CAST(${shopify__orders.customer_id} as string) = cast(${shopify_holistic_reporting__customer_enhanced.shopify_customer_ids} as string) ;;
  }
}

explore: shopify__customer_cohorts {
  label: "Customer Cohorts"
}

explore: units_by_month {
  label: "Integrated Planning Targets"
  join: ip_targets_style {
    type: left_outer
    sql_on: ${units_by_month.title} = ${ip_targets_style.style} AND ${units_by_month.created_timestamp_time_date} = ${ip_targets_style.target_time_date};;
    # sql_on: ${units_by_month.title} = ${ip_targets_style.style};;
    relationship: one_to_one
  }
}


explore: first_order_date {

}

# explore: shopify__customers {}
# explore: shopify__order_lines {}
# explore: og_orders {
#   from: shopify__orders
# }
# explore: og_transactions {
#   from: shopify__transactions
# }
explore: product {
  label: "W&S Inventory"
  join: product_variant {
    type: left_outer
    relationship: one_to_many
    sql_on: ${product.id} = ${product_variant.product_id};;
  }
  join: inventory_item {
    type: left_outer
    relationship: one_to_one
    sql_on: ${product_variant.inventory_item_id} = ${inventory_item.id};;
  }
  join: inventory_level {
    type: left_outer
    relationship: one_to_many
    sql_on: ${inventory_item.id} = ${inventory_level.inventory_item_id};;
  }
}


explore: shopify__transactions {
  label: "W&S Master Orders"
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
   sql_always_where: (${order_tags_by_order.order_tags} <> 'wholesale' OR ${order_tags_by_order.order_tags} IS NULL);;
}

explore: shopify_holistic_reporting__orders_attribution {
  join: shopify__orders {
    type: inner
    relationship: one_to_one
    sql_on: ${shopify__orders.order_id} = ${shopify_holistic_reporting__orders_attribution.order_id};;
  }
  join: shopify__order_lines {
    type: full_outer
    relationship: one_to_many
    sql_on: ${shopify__orders.order_id} =  ${shopify__order_lines.order_id} ;;
  }
}



# explore: klaviyo__person_campaign_flow {
#   join: klaviyo__persons {
#     type: inner
#     relationship: one_to_one
#     sql_on: ${klaviyo__persons.person_id} = ${klaviyo__person_campaign_flow.person_id};;
#   }
# }

# explore: event {
#   join: klaviyo__persons {
#     type: inner
#     relationship: one_to_one
#     sql_on: ${klaviyo__persons.person_id} = ${event.person_id};;
#   }
# }
