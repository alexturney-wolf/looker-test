view: shopify_holistic_reporting__customer_enhanced {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.prod_schema_shopify_holistic.shopify_holistic_reporting__customer_enhanced`
    ;;

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.full_name ;;
  }

  dimension: is_shopify_email_verified {
    type: yesno
    sql: ${TABLE}.is_shopify_email_verified ;;
  }

  dimension: klaviyo_address_1 {
    type: string
    sql: ${TABLE}.klaviyo_address_1 ;;
  }

  dimension: klaviyo_address_2 {
    type: string
    sql: ${TABLE}.klaviyo_address_2 ;;
  }

  dimension: klaviyo_city {
    type: string
    sql: ${TABLE}.klaviyo_city ;;
  }

  dimension: klaviyo_count_total_campaigns {
    type: number
    sql: ${TABLE}.klaviyo_count_total_campaigns ;;
  }

  dimension: klaviyo_count_total_flows {
    type: number
    sql: ${TABLE}.klaviyo_count_total_flows ;;
  }

  dimension: klaviyo_country {
    type: string
    sql: ${TABLE}.klaviyo_country ;;
  }

  dimension_group: klaviyo_first_campaign_touch {
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
    sql: ${TABLE}.klaviyo_first_campaign_touch_at ;;
  }

  dimension_group: klaviyo_first_event {
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
    sql: ${TABLE}.klaviyo_first_event_at ;;
  }

  ## Measuring Email Efficacy

  dimension_group: first_email_to_first_purchase {
    type: duration
    sql_start: ${klaviyo_first_event_date} ;;
    sql_end: ${shopify__orders.created_timestamp_date} ;;
    intervals: [day]
  }

  dimension: klaviyo_event_is_first {
    type: yesno
    sql: ${klaviyo_first_event_date} <= ${shopify__orders.created_timestamp_date} ;;
  }

  measure: average_days_between_email_first_purchase {
    label: "Average Amount of Days Between Email and First Purchase"
    type: average
    sql: ${days_first_email_to_first_purchase} ;;
    filters: [shopify__orders.customer_order_seq_number: "1", klaviyo_event_is_first: "yes"]
    drill_fields: [shopify_customer_ids, klaviyo_first_event_date, shopify__orders.created_timestamp_date, days_first_email_to_first_purchase]
  }
  ### END

  dimension_group: klaviyo_first_flow_touch {
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
    sql: ${TABLE}.klaviyo_first_flow_touch_at ;;
  }

  dimension_group: klaviyo_last_campaign_touch {
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
    sql: ${TABLE}.klaviyo_last_campaign_touch_at ;;
  }

  dimension_group: klaviyo_last_event {
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
    sql: ${TABLE}.klaviyo_last_event_at ;;
  }

  dimension_group: klaviyo_last_flow_touch {
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
    sql: ${TABLE}.klaviyo_last_flow_touch_at ;;
  }

  dimension: klaviyo_latitude {
    type: number
    sql: ${TABLE}.klaviyo_latitude ;;
  }

  dimension: klaviyo_longitude {
    type: number
    sql: ${TABLE}.klaviyo_longitude ;;
  }

  dimension: klaviyo_organic_sum_revenue_cancelled_order {
    type: number
    sql: ${TABLE}.klaviyo_organic_sum_revenue_cancelled_order ;;
  }

  dimension: klaviyo_organic_sum_revenue_checkout_started {
    type: number
    sql: ${TABLE}.klaviyo_organic_sum_revenue_checkout_started ;;
  }

  dimension: klaviyo_organic_sum_revenue_ordered_product {
    type: number
    sql: ${TABLE}.klaviyo_organic_sum_revenue_ordered_product ;;
  }

  dimension: klaviyo_organic_sum_revenue_placed_order {
    type: number
    sql: ${TABLE}.klaviyo_organic_sum_revenue_placed_order ;;
  }

  dimension: klaviyo_organic_sum_revenue_refunded_order {
    type: number
    sql: ${TABLE}.klaviyo_organic_sum_revenue_refunded_order ;;
  }

  dimension: klaviyo_organization {
    type: string
    sql: ${TABLE}.klaviyo_organization ;;
  }

  dimension_group: klaviyo_person_first_created {
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
    sql: ${TABLE}.klaviyo_person_first_created_at ;;
  }

  dimension: klaviyo_person_ids {
    type: string
    sql: ${TABLE}.klaviyo_person_ids ;;
  }

  dimension_group: klaviyo_person_last_created {
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
    sql: ${TABLE}.klaviyo_person_last_created_at ;;
  }

  dimension_group: klaviyo_person_last_updated {
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
    sql: ${TABLE}.klaviyo_person_last_updated_at ;;
  }

  dimension: klaviyo_region {
    type: string
    sql: ${TABLE}.klaviyo_region ;;
  }

  dimension: klaviyo_source_relation {
    type: string
    sql: ${TABLE}.klaviyo_source_relation ;;
  }

  dimension: klaviyo_timezone {
    type: string
    sql: ${TABLE}.klaviyo_timezone ;;
  }

  dimension: klaviyo_title {
    type: string
    sql: ${TABLE}.klaviyo_title ;;
  }

  dimension: klaviyo_total_count_active_on_site {
    type: number
    sql: ${TABLE}.klaviyo_total_count_active_on_site ;;
  }

  dimension: klaviyo_total_count_clicked_email {
    type: number
    sql: ${TABLE}.klaviyo_total_count_clicked_email ;;
  }

  dimension: klaviyo_total_count_clicked_sms {
    type: number
    sql: ${TABLE}.klaviyo_total_count_clicked_sms ;;
  }

  dimension: klaviyo_total_count_marked_email_as_spam {
    type: number
    sql: ${TABLE}.klaviyo_total_count_marked_email_as_spam ;;
  }

  dimension: klaviyo_total_count_opened_email {
    type: number
    sql: ${TABLE}.klaviyo_total_count_opened_email ;;
  }

  dimension: klaviyo_total_count_ordered_product {
    type: number
    sql: ${TABLE}.klaviyo_total_count_ordered_product ;;
  }

  dimension: klaviyo_total_count_placed_order {
    type: number
    sql: ${TABLE}.klaviyo_total_count_placed_order ;;
  }

  dimension: klaviyo_total_count_received_email {
    type: number
    sql: ${TABLE}.klaviyo_total_count_received_email ;;
  }

  dimension: klaviyo_total_count_received_sms {
    type: number
    sql: ${TABLE}.klaviyo_total_count_received_sms ;;
  }

  dimension: klaviyo_total_count_refunded_order {
    type: number
    sql: ${TABLE}.klaviyo_total_count_refunded_order ;;
  }

  dimension: klaviyo_total_count_sent_sms {
    type: number
    sql: ${TABLE}.klaviyo_total_count_sent_sms ;;
  }

  dimension: klaviyo_total_count_unsubscribed {
    type: number
    sql: ${TABLE}.klaviyo_total_count_unsubscribed ;;
  }

  dimension: klaviyo_total_count_unsubscribed_from_sms {
    type: number
    sql: ${TABLE}.klaviyo_total_count_unsubscribed_from_sms ;;
  }

  dimension: klaviyo_total_count_viewed_product {
    type: number
    sql: ${TABLE}.klaviyo_total_count_viewed_product ;;
  }

  dimension: klaviyo_total_sum_revenue_cancelled_order {
    type: number
    sql: ${TABLE}.klaviyo_total_sum_revenue_cancelled_order ;;
  }

  dimension: klaviyo_total_sum_revenue_checkout_started {
    type: number
    sql: ${TABLE}.klaviyo_total_sum_revenue_checkout_started ;;
  }

  dimension: klaviyo_total_sum_revenue_ordered_product {
    type: number
    sql: ${TABLE}.klaviyo_total_sum_revenue_ordered_product ;;
  }

  dimension: klaviyo_total_sum_revenue_placed_order {
    type: number
    sql: ${TABLE}.klaviyo_total_sum_revenue_placed_order ;;
  }

  dimension: klaviyo_total_sum_revenue_refunded_order {
    type: number
    sql: ${TABLE}.klaviyo_total_sum_revenue_refunded_order ;;
  }

  dimension: klaviyo_zip {
    type: string
    sql: ${TABLE}.klaviyo_zip ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: shopify_account_state {
    type: string
    sql: ${TABLE}.shopify_account_state ;;
  }

  dimension: shopify_average_order_value {
    type: number
    sql: ${TABLE}.shopify_average_order_value ;;
  }

  dimension_group: shopify_customer_first_created {
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
    sql: ${TABLE}.shopify_customer_first_created_at ;;
  }

  dimension: shopify_customer_ids {
    primary_key: yes
    type: string
    sql: ${TABLE}.shopify_customer_ids ;;
  }

  dimension_group: shopify_customer_last_created {
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
    sql: ${TABLE}.shopify_customer_last_created_at ;;
  }

  dimension_group: shopify_customer_last_updated {
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
    sql: ${TABLE}.shopify_customer_last_updated_at ;;
  }

  dimension: shopify_default_address_id {
    type: number
    sql: ${TABLE}.shopify_default_address_id ;;
  }

  dimension_group: shopify_first_order {
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
    sql: ${TABLE}.shopify_first_order_at ;;
  }

  dimension: shopify_has_accepted_marketing {
    type: yesno
    sql: ${TABLE}.shopify_has_accepted_marketing ;;
  }

  dimension: shopify_is_tax_exempt {
    type: yesno
    sql: ${TABLE}.shopify_is_tax_exempt ;;
  }

  dimension_group: shopify_last_order {
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
    sql: ${TABLE}.shopify_last_order_at ;;
  }

  # dimension: is_new_customer {
  #   type: yesno
  #   sql: ${TABLE}.shopify_last_order_at ;;
  # }

  dimension: shopify_lifetime_count_orders {
    type: number
    sql: ${TABLE}.shopify_lifetime_count_orders ;;
  }

  dimension: shopify_lifetime_total_amount {
    type: number
    sql: ${TABLE}.shopify_lifetime_total_amount ;;
  }

  dimension: shopify_lifetime_total_refunded {
    type: number
    sql: ${TABLE}.shopify_lifetime_total_refunded ;;
  }

  dimension: shopify_lifetime_total_spent {
    type: number
    sql: ${TABLE}.shopify_lifetime_total_spent ;;
  }

  dimension: shopify_source_relation {
    type: string
    sql: ${TABLE}.shopify_source_relation ;;
  }

  measure: count {
    type: count
    drill_fields: [full_name]
  }

















}
