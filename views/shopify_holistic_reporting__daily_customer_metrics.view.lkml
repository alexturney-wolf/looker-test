view: shopify_holistic_reporting__daily_customer_metrics {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.prod_schema_shopify_holistic.shopify_holistic_reporting__daily_customer_metrics`
    ;;

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: campaign_subject_line {
    type: string
    sql: ${TABLE}.campaign_subject_line ;;
  }

  dimension: campaign_type {
    type: string
    sql: ${TABLE}.campaign_type ;;
  }

  dimension_group: date_day {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_day ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: flow_id {
    type: string
    sql: ${TABLE}.flow_id ;;
  }

  dimension: flow_name {
    type: string
    sql: ${TABLE}.flow_name ;;
  }

  dimension: klaviyo_count_active_on_site {
    type: number
    sql: ${TABLE}.klaviyo_count_active_on_site ;;
  }

  dimension: klaviyo_count_clicked_email {
    type: number
    sql: ${TABLE}.klaviyo_count_clicked_email ;;
  }

  dimension: klaviyo_count_clicked_sms {
    type: number
    sql: ${TABLE}.klaviyo_count_clicked_sms ;;
  }

  dimension: klaviyo_count_marked_email_as_spam {
    type: number
    sql: ${TABLE}.klaviyo_count_marked_email_as_spam ;;
  }

  dimension: klaviyo_count_opened_email {
    type: number
    sql: ${TABLE}.klaviyo_count_opened_email ;;
  }

  dimension: klaviyo_count_ordered_product {
    type: number
    sql: ${TABLE}.klaviyo_count_ordered_product ;;
  }

  dimension: klaviyo_count_placed_order {
    type: number
    sql: ${TABLE}.klaviyo_count_placed_order ;;
  }

  dimension: klaviyo_count_received_email {
    type: number
    sql: ${TABLE}.klaviyo_count_received_email ;;
  }

  dimension: klaviyo_count_received_sms {
    type: number
    sql: ${TABLE}.klaviyo_count_received_sms ;;
  }

  dimension: klaviyo_count_refunded_order {
    type: number
    sql: ${TABLE}.klaviyo_count_refunded_order ;;
  }

  dimension: klaviyo_count_sent_sms {
    type: number
    sql: ${TABLE}.klaviyo_count_sent_sms ;;
  }

  dimension: klaviyo_count_unsubscribed {
    type: number
    sql: ${TABLE}.klaviyo_count_unsubscribed ;;
  }

  dimension: klaviyo_count_unsubscribed_from_sms {
    type: number
    sql: ${TABLE}.klaviyo_count_unsubscribed_from_sms ;;
  }

  dimension: klaviyo_count_viewed_product {
    type: number
    sql: ${TABLE}.klaviyo_count_viewed_product ;;
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

  dimension: klaviyo_source_relation {
    type: string
    sql: ${TABLE}.klaviyo_source_relation ;;
  }

  dimension: klaviyo_sum_revenue_cancelled_order {
    type: number
    sql: ${TABLE}.klaviyo_sum_revenue_cancelled_order ;;
  }

  dimension: klaviyo_sum_revenue_checkout_started {
    type: number
    sql: ${TABLE}.klaviyo_sum_revenue_checkout_started ;;
  }

  dimension: klaviyo_sum_revenue_ordered_product {
    type: number
    sql: ${TABLE}.klaviyo_sum_revenue_ordered_product ;;
  }

  dimension: klaviyo_sum_revenue_placed_order {
    type: number
    sql: ${TABLE}.klaviyo_sum_revenue_placed_order ;;
  }

  dimension: klaviyo_sum_revenue_refunded_order {
    type: number
    sql: ${TABLE}.klaviyo_sum_revenue_refunded_order ;;
  }

  dimension: shopify_count_cancelled_orders {
    type: number
    sql: ${TABLE}.shopify_count_cancelled_orders ;;
  }

  dimension: shopify_count_line_items {
    type: number
    sql: ${TABLE}.shopify_count_line_items ;;
  }

  dimension: shopify_count_product_variants {
    type: number
    sql: ${TABLE}.shopify_count_product_variants ;;
  }

  dimension: shopify_count_products {
    type: number
    sql: ${TABLE}.shopify_count_products ;;
  }

  dimension: shopify_source_relation {
    type: string
    sql: ${TABLE}.shopify_source_relation ;;
  }

  dimension: shopify_sum_quantity {
    type: number
    sql: ${TABLE}.shopify_sum_quantity ;;
  }

  dimension: shopify_total_discounts {
    type: number
    sql: ${TABLE}.shopify_total_discounts ;;
  }

  dimension: shopify_total_line_items_price {
    type: number
    sql: ${TABLE}.shopify_total_line_items_price ;;
  }

  dimension: shopify_total_order_adjustment_amount {
    type: number
    sql: ${TABLE}.shopify_total_order_adjustment_amount ;;
  }

  dimension: shopify_total_order_adjustment_tax_amount {
    type: number
    sql: ${TABLE}.shopify_total_order_adjustment_tax_amount ;;
  }

  dimension: shopify_total_orders {
    type: number
    sql: ${TABLE}.shopify_total_orders ;;
  }

  dimension: shopify_total_price {
    type: number
    sql: ${TABLE}.shopify_total_price ;;
  }

  dimension: shopify_total_refund_subtotal {
    type: number
    sql: ${TABLE}.shopify_total_refund_subtotal ;;
  }

  dimension: shopify_total_refund_tax {
    type: number
    sql: ${TABLE}.shopify_total_refund_tax ;;
  }

  dimension: shopify_total_shipping_cost {
    type: number
    sql: ${TABLE}.shopify_total_shipping_cost ;;
  }

  dimension: shopify_total_tax {
    type: number
    sql: ${TABLE}.shopify_total_tax ;;
  }

  dimension: variation_id {
    type: string
    sql: ${TABLE}.variation_id ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name, flow_name]
  }
}
