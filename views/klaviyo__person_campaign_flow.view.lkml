view: klaviyo__person_campaign_flow {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.prod_schema_klaviyo.klaviyo__person_campaign_flow`
    ;;

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: count_active_on_site {
    type: number
    sql: ${TABLE}.count_active_on_site ;;
  }

  dimension: count_clicked_email {
    type: number
    sql: ${TABLE}.count_clicked_email ;;
  }

  dimension: count_clicked_sms {
    type: number
    sql: ${TABLE}.count_clicked_sms ;;
  }

  dimension: count_marked_email_as_spam {
    type: number
    sql: ${TABLE}.count_marked_email_as_spam ;;
  }

  dimension: count_opened_email {
    type: number
    sql: ${TABLE}.count_opened_email ;;
  }

  dimension: count_ordered_product {
    type: number
    sql: ${TABLE}.count_ordered_product ;;
  }

  dimension: count_placed_order {
    type: number
    sql: ${TABLE}.count_placed_order ;;
  }

  dimension: count_received_email {
    type: number
    sql: ${TABLE}.count_received_email ;;
  }

  dimension: count_received_sms {
    type: number
    sql: ${TABLE}.count_received_sms ;;
  }

  dimension: count_refunded_order {
    type: number
    sql: ${TABLE}.count_refunded_order ;;
  }

  dimension: count_sent_sms {
    type: number
    sql: ${TABLE}.count_sent_sms ;;
  }

  dimension: count_unsubscribed {
    type: number
    sql: ${TABLE}.count_unsubscribed ;;
  }

  dimension: count_unsubscribed_from_sms {
    type: number
    sql: ${TABLE}.count_unsubscribed_from_sms ;;
  }

  dimension: count_viewed_product {
    type: number
    sql: ${TABLE}.count_viewed_product ;;
  }

  dimension_group: first_event {
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
    sql: ${TABLE}.first_event_at ;;
  }

  dimension: flow_name {
    type: string
    sql: ${TABLE}.flow_name ;;
  }

  dimension_group: last_event {
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
    sql: ${TABLE}.last_event_at ;;
  }

  dimension: last_touch_campaign_id {
    type: string
    sql: ${TABLE}.last_touch_campaign_id ;;
  }

  dimension: last_touch_flow_id {
    type: string
    sql: ${TABLE}.last_touch_flow_id ;;
  }

  dimension: person_id {
    type: string
    sql: ${TABLE}.person_id ;;
  }

  dimension: source_relation {
    type: string
    sql: ${TABLE}.source_relation ;;
  }

  dimension: sum_revenue_cancelled_order {
    type: number
    sql: ${TABLE}.sum_revenue_cancelled_order ;;
  }

  dimension: sum_revenue_checkout_started {
    type: number
    sql: ${TABLE}.sum_revenue_checkout_started ;;
  }

  dimension: sum_revenue_ordered_product {
    type: number
    sql: ${TABLE}.sum_revenue_ordered_product ;;
  }

  dimension: sum_revenue_placed_order {
    type: number
    sql: ${TABLE}.sum_revenue_placed_order ;;
  }

  dimension: sum_revenue_refunded_order {
    type: number
    sql: ${TABLE}.sum_revenue_refunded_order ;;
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
