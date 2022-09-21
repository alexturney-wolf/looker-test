view: klaviyo__persons {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.prod_schema_klaviyo.klaviyo__persons`
    ;;

  dimension: address_1 {
    type: string
    sql: ${TABLE}.address_1 ;;
  }

  dimension: address_2 {
    type: string
    sql: ${TABLE}.address_2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: count_total_campaigns {
    type: number
    sql: ${TABLE}.count_total_campaigns ;;
  }

  dimension: count_total_flows {
    type: number
    sql: ${TABLE}.count_total_flows ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension_group: first_campaign_touch {
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
    sql: ${TABLE}.first_campaign_touch_at ;;
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

  dimension_group: first_flow_touch {
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
    sql: ${TABLE}.first_flow_touch_at ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.full_name ;;
  }

  dimension_group: last_campaign_touch {
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
    sql: ${TABLE}.last_campaign_touch_at ;;
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

  dimension_group: last_flow_touch {
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
    sql: ${TABLE}.last_flow_touch_at ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: organic_sum_revenue_cancelled_order {
    type: number
    sql: ${TABLE}.organic_sum_revenue_cancelled_order ;;
  }

  dimension: organic_sum_revenue_checkout_started {
    type: number
    sql: ${TABLE}.organic_sum_revenue_checkout_started ;;
  }

  dimension: organic_sum_revenue_ordered_product {
    type: number
    sql: ${TABLE}.organic_sum_revenue_ordered_product ;;
  }

  dimension: organic_sum_revenue_placed_order {
    type: number
    sql: ${TABLE}.organic_sum_revenue_placed_order ;;
  }

  dimension: organic_sum_revenue_refunded_order {
    type: number
    sql: ${TABLE}.organic_sum_revenue_refunded_order ;;
  }

  dimension: organization {
    type: string
    sql: ${TABLE}.organization ;;
  }

  dimension: person_id {
    type: string
    sql: ${TABLE}.person_id ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: source_relation {
    type: string
    sql: ${TABLE}.source_relation ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: total_count_active_on_site {
    type: number
    sql: ${TABLE}.total_count_active_on_site ;;
  }

  dimension: total_count_clicked_email {
    type: number
    sql: ${TABLE}.total_count_clicked_email ;;
  }

  dimension: total_count_clicked_sms {
    type: number
    sql: ${TABLE}.total_count_clicked_sms ;;
  }

  dimension: total_count_marked_email_as_spam {
    type: number
    sql: ${TABLE}.total_count_marked_email_as_spam ;;
  }

  dimension: total_count_opened_email {
    type: number
    sql: ${TABLE}.total_count_opened_email ;;
  }

  dimension: total_count_ordered_product {
    type: number
    sql: ${TABLE}.total_count_ordered_product ;;
  }

  dimension: total_count_placed_order {
    type: number
    sql: ${TABLE}.total_count_placed_order ;;
  }

  dimension: total_count_received_email {
    type: number
    sql: ${TABLE}.total_count_received_email ;;
  }

  dimension: total_count_received_sms {
    type: number
    sql: ${TABLE}.total_count_received_sms ;;
  }

  dimension: total_count_refunded_order {
    type: number
    sql: ${TABLE}.total_count_refunded_order ;;
  }

  dimension: total_count_sent_sms {
    type: number
    sql: ${TABLE}.total_count_sent_sms ;;
  }

  dimension: total_count_unsubscribed {
    type: number
    sql: ${TABLE}.total_count_unsubscribed ;;
  }

  dimension: total_count_unsubscribed_from_sms {
    type: number
    sql: ${TABLE}.total_count_unsubscribed_from_sms ;;
  }

  dimension: total_count_viewed_product {
    type: number
    sql: ${TABLE}.total_count_viewed_product ;;
  }

  dimension: total_sum_revenue_cancelled_order {
    type: number
    sql: ${TABLE}.total_sum_revenue_cancelled_order ;;
  }

  dimension: total_sum_revenue_checkout_started {
    type: number
    sql: ${TABLE}.total_sum_revenue_checkout_started ;;
  }

  dimension: total_sum_revenue_ordered_product {
    type: number
    sql: ${TABLE}.total_sum_revenue_ordered_product ;;
  }

  dimension: total_sum_revenue_placed_order {
    type: number
    sql: ${TABLE}.total_sum_revenue_placed_order ;;
  }

  dimension: total_sum_revenue_refunded_order {
    type: number
    sql: ${TABLE}.total_sum_revenue_refunded_order ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [full_name]
  }
}
