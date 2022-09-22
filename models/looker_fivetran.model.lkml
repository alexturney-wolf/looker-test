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

# dbt model for klaviyo and shopify
explore: shopify_holistic_reporting__daily_customer_metrics {

}

explore: shopify__orders {
  join: shopify__order_lines {
    type: left_outer
    sql_on: ${shopify__orders.order_id} =  ${shopify__order_lines.order_id} ;;
    relationship: one_to_many
  }
}

explore: shopify_holistic_reporting__orders_attribution {
  join: shopify__orders {
    type: inner
    relationship: one_to_one
    sql_on: ${shopify__orders.order_id} = ${shopify_holistic_reporting__orders_attribution.order_id};;
  }
  join: shopify__order_lines {
    type: left_outer
    sql_on: ${shopify__orders.order_id} =  ${shopify__order_lines.order_id} ;;
    relationship: one_to_many
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
