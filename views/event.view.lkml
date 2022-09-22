view: event {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.klaviyo.event`
    ;;
  drill_fields: [property_event_id]

  dimension: property_event_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.property_event_id ;;
  }

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
  }

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

  dimension: _variation {
    type: string
    sql: ${TABLE}._variation ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension_group: datetime {
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
    sql: ${TABLE}.datetime ;;
  }

  dimension: flow_id {
    type: string
    sql: ${TABLE}.flow_id ;;
  }

  dimension: flow_message_id {
    type: string
    sql: ${TABLE}.flow_message_id ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: metric_id {
    type: string
    sql: ${TABLE}.metric_id ;;
  }

  dimension: person_id {
    type: string
    sql: ${TABLE}.person_id ;;
  }

  dimension: property_answer {
    type: string
    sql: ${TABLE}.property_answer ;;
  }

  dimension: property_answered_at {
    type: string
    sql: ${TABLE}.property_answered_at ;;
  }

  dimension: property_assignee_email {
    type: string
    sql: ${TABLE}.property_assignee_email ;;
  }

  dimension: property_assignee_name {
    type: string
    sql: ${TABLE}.property_assignee_name ;;
  }

  dimension: property_attribute_accelerator {
    type: string
    sql: ${TABLE}.property_attribute_accelerator ;;
  }

  dimension: property_attribute_due_to_worldwide_shipping_delays_from_covid_it_may_take_up_to_2_weeks_for_product_to_ship_ {
    type: number
    sql: ${TABLE}.property_attribute_due_to_worldwide_shipping_delays_from_covid_it_may_take_up_to_2_weeks_for_product_to_ship_ ;;
  }

  dimension: property_attribute_estimated_delivery_late_october {
    type: number
    sql: ${TABLE}.property_attribute_estimated_delivery_late_october ;;
  }

  dimension: property_attribute_estimated_delivery_late_september {
    type: number
    sql: ${TABLE}.property_attribute_estimated_delivery_late_september ;;
  }

  dimension: property_attribute_estimated_ship_date_early_april {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_early_april ;;
  }

  dimension: property_attribute_estimated_ship_date_early_march {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_early_march ;;
  }

  dimension: property_attribute_estimated_ship_date_early_october {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_early_october ;;
  }

  dimension: property_attribute_estimated_ship_date_end_of_september {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_end_of_september ;;
  }

  dimension: property_attribute_estimated_ship_date_february {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_february ;;
  }

  dimension: property_attribute_estimated_ship_date_january {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_january ;;
  }

  dimension: property_attribute_estimated_ship_date_january_10 {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_january_10 ;;
  }

  dimension: property_attribute_estimated_ship_date_late_december {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_late_december ;;
  }

  dimension: property_attribute_estimated_ship_date_late_february {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_late_february ;;
  }

  dimension: property_attribute_estimated_ship_date_late_october {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_late_october ;;
  }

  dimension: property_attribute_estimated_ship_date_late_september {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_late_september ;;
  }

  dimension: property_attribute_estimated_ship_date_mid_april {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_mid_april ;;
  }

  dimension: property_attribute_estimated_ship_date_mid_august {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_mid_august ;;
  }

  dimension: property_attribute_estimated_ship_date_mid_march {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_mid_march ;;
  }

  dimension: property_attribute_estimated_ship_date_mid_october {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_mid_october ;;
  }

  dimension: property_attribute_estimated_ship_date_november_20_th {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_november_20_th ;;
  }

  dimension: property_attribute_estimated_ship_date_october {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_october ;;
  }

  dimension: property_attribute_estimated_ship_date_october_20 {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_date_october_20 ;;
  }

  dimension: property_attribute_estimated_ship_day_early_october {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_day_early_october ;;
  }

  dimension: property_attribute_estimated_ship_late_october {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_late_october ;;
  }

  dimension: property_attribute_estimated_ship_october {
    type: number
    sql: ${TABLE}.property_attribute_estimated_ship_october ;;
  }

  dimension: property_attribute_facebook_order_retailer_id {
    type: number
    sql: ${TABLE}.property_attribute_facebook_order_retailer_id ;;
  }

  dimension: property_attribute_message {
    type: string
    sql: ${TABLE}.property_attribute_message ;;
  }

  dimension: property_attribute_pos_code_key_for_gift_card_creation {
    type: string
    sql: ${TABLE}.property_attribute_pos_code_key_for_gift_card_creation ;;
  }

  dimension: property_attribute_pre_order_estimate_ship_date_december_11 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimate_ship_date_december_11 ;;
  }

  dimension: property_attribute_pre_order_estimate_ship_date_december_16 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimate_ship_date_december_16 ;;
  }

  dimension: property_attribute_pre_order_estimate_ship_date_december_18 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimate_ship_date_december_18 ;;
  }

  dimension: property_attribute_pre_order_estimate_ship_date_december_21 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimate_ship_date_december_21 ;;
  }

  dimension: property_attribute_pre_order_estimate_ship_date_december_23 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimate_ship_date_december_23 ;;
  }

  dimension: property_attribute_pre_order_estimate_ship_date_december_28 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimate_ship_date_december_28 ;;
  }

  dimension: property_attribute_pre_order_estimate_ship_date_december_30 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimate_ship_date_december_30 ;;
  }

  dimension: property_attribute_pre_order_estimate_ship_date_early_august {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimate_ship_date_early_august ;;
  }

  dimension: property_attribute_pre_order_estimate_ship_date_early_july {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimate_ship_date_early_july ;;
  }

  dimension: property_attribute_pre_order_estimate_ship_date_february_12 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimate_ship_date_february_12 ;;
  }

  dimension: property_attribute_pre_order_estimate_ship_date_january_20 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimate_ship_date_january_20 ;;
  }

  dimension: property_attribute_pre_order_estimate_ship_date_january_30 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimate_ship_date_january_30 ;;
  }

  dimension: property_attribute_pre_order_estimate_ship_date_late_august {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimate_ship_date_late_august ;;
  }

  dimension: property_attribute_pre_order_estimate_ship_date_november_5 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimate_ship_date_november_5 ;;
  }

  dimension: property_attribute_pre_order_estimate_ship_date_november_9 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimate_ship_date_november_9 ;;
  }

  dimension: property_attribute_pre_order_estimate_ship_date_october_23 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimate_ship_date_october_23 ;;
  }

  dimension: property_attribute_pre_order_estimate_ship_date_october_28 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimate_ship_date_october_28 ;;
  }

  dimension: property_attribute_pre_order_estimated_delivery_early_july {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_delivery_early_july ;;
  }

  dimension: property_attribute_pre_order_estimated_delivery_end_of_june {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_delivery_end_of_june ;;
  }

  dimension: property_attribute_pre_order_estimated_delivery_end_of_november {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_delivery_end_of_november ;;
  }

  dimension: property_attribute_pre_order_estimated_delivery_end_of_september {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_delivery_end_of_september ;;
  }

  dimension: property_attribute_pre_order_estimated_delivery_late_october {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_delivery_late_october ;;
  }

  dimension: property_attribute_pre_order_estimated_delivery_late_september {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_delivery_late_september ;;
  }

  dimension: property_attribute_pre_order_estimated_delivery_november {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_delivery_november ;;
  }

  dimension: property_attribute_pre_order_estimated_delivery_october {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_delivery_october ;;
  }

  dimension: property_attribute_pre_order_estimated_delivery_within_a_month {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_delivery_within_a_month ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_december_16 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_december_16 ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_december_18 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_december_18 ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_december_21 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_december_21 ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_december_28 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_december_28 ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_december_30 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_december_30 ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_early_august {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_early_august ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_early_july {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_early_july ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_early_june {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_early_june ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_end_of_august {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_end_of_august ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_end_of_july {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_end_of_july ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_end_of_june {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_end_of_june ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_end_of_may {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_end_of_may ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_january_15 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_january_15 ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_january_4 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_january_4 ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_july_30 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_july_30 ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_june_25 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_june_25 ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_late_august {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_late_august ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_late_september {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_late_september ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_march_5 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_march_5 ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_mid_january {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_mid_january ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_mid_june {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_mid_june ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_november_11 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_november_11 ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_november_20 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_november_20 ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_november_6 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_november_6 ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_october_30 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_october_30 ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_date_of_april_2 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_date_of_april_2 ;;
  }

  dimension: property_attribute_pre_order_estimated_ship_late_august {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_ship_late_august ;;
  }

  dimension: property_attribute_pre_order_estimated_shipping_early_july {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_shipping_early_july ;;
  }

  dimension: property_attribute_pre_order_estimated_shipping_early_may {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_shipping_early_may ;;
  }

  dimension: property_attribute_pre_order_estimated_shipping_end_of_april {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_shipping_end_of_april ;;
  }

  dimension: property_attribute_pre_order_estimated_shipping_end_of_march {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_shipping_end_of_march ;;
  }

  dimension: property_attribute_pre_order_estimated_shipping_mid_july {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_shipping_mid_july ;;
  }

  dimension: property_attribute_pre_order_estimated_shipping_mid_may {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_shipping_mid_may ;;
  }

  dimension: property_attribute_pre_order_estimated_shipping_november_19_th {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_shipping_november_19_th ;;
  }

  dimension: property_attribute_pre_order_estimated_to_ship_within_a_month {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_estimated_to_ship_within_a_month ;;
  }

  dimension: property_attribute_pre_order_item_will_ship_by_dec_2 {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_item_will_ship_by_dec_2 ;;
  }

  dimension: property_attribute_pre_order_item_will_ship_in_5_7_days {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_item_will_ship_in_5_7_days ;;
  }

  dimension: property_attribute_pre_order_item_will_ship_in_mid_december {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_item_will_ship_in_mid_december ;;
  }

  dimension: property_attribute_pre_order_item_will_ship_mid_december {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_item_will_ship_mid_december ;;
  }

  dimension: property_attribute_pre_order_item_will_ship_next_week {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_item_will_ship_next_week ;;
  }

  dimension: property_attribute_pre_order_item_will_ship_within_2_weeks {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_item_will_ship_within_2_weeks ;;
  }

  dimension: property_attribute_pre_order_item_will_ship_within_3_weeks {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_item_will_ship_within_3_weeks ;;
  }

  dimension: property_attribute_pre_order_item_will_ship_within_a_month {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_item_will_ship_within_a_month ;;
  }

  dimension: property_attribute_pre_order_items_will_ship_by_end_of_august {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_items_will_ship_by_end_of_august ;;
  }

  dimension: property_attribute_pre_order_items_will_ship_in_2_3_weeks {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_items_will_ship_in_2_3_weeks ;;
  }

  dimension: property_attribute_pre_order_items_will_ship_mid_december {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_items_will_ship_mid_december ;;
  }

  dimension: property_attribute_pre_order_items_will_ship_next_week {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_items_will_ship_next_week ;;
  }

  dimension: property_attribute_pre_order_ships_next_week {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_ships_next_week ;;
  }

  dimension: property_attribute_pre_order_will_ship_mid_december {
    type: number
    sql: ${TABLE}.property_attribute_pre_order_will_ship_mid_december ;;
  }

  dimension: property_attribute_pre_ordered_items {
    type: number
    sql: ${TABLE}.property_attribute_pre_ordered_items ;;
  }

  dimension: property_attribute_preorder {
    type: yesno
    sql: ${TABLE}.property_attribute_preorder ;;
  }

  dimension: property_attribute_zapiet_id {
    type: string
    sql: ${TABLE}.property_attribute_zapiet_id ;;
  }

  dimension: property_attribution {
    type: string
    sql: ${TABLE}.property_attribution ;;
  }

  dimension: property_body_text {
    type: string
    sql: ${TABLE}.property_body_text ;;
  }

  dimension: property_bounce_type {
    type: string
    sql: ${TABLE}.property_bounce_type ;;
  }

  dimension: property_brand {
    type: string
    sql: ${TABLE}.property_brand ;;
  }

  dimension: property_browser {
    type: string
    sql: ${TABLE}.property_browser ;;
  }

  dimension: property_campaign_name {
    type: string
    sql: ${TABLE}.property_campaign_name ;;
  }

  dimension: property_categories {
    type: string
    sql: ${TABLE}.property_categories ;;
  }

  dimension: property_channel {
    type: string
    sql: ${TABLE}.property_channel ;;
  }

  dimension: property_clarification_question {
    type: yesno
    sql: ${TABLE}.property_clarification_question ;;
  }

  dimension: property_client_canonical {
    type: string
    sql: ${TABLE}.property_client_canonical ;;
  }

  dimension: property_client_name {
    type: string
    sql: ${TABLE}.property_client_name ;;
  }

  dimension: property_client_os {
    type: string
    sql: ${TABLE}.property_client_os ;;
  }

  dimension: property_client_os_family {
    type: string
    sql: ${TABLE}.property_client_os_family ;;
  }

  dimension: property_client_type {
    type: string
    sql: ${TABLE}.property_client_type ;;
  }

  dimension: property_cohort_message_send_cohort {
    type: string
    sql: ${TABLE}.property_cohort_message_send_cohort ;;
  }

  dimension: property_cohort_variation_send_cohort {
    type: string
    sql: ${TABLE}.property_cohort_variation_send_cohort ;;
  }

  dimension: property_collections {
    type: string
    sql: ${TABLE}.property_collections ;;
  }

  dimension: property_compare_at_price {
    type: string
    sql: ${TABLE}.property_compare_at_price ;;
  }

  dimension: property_currency_code {
    type: string
    sql: ${TABLE}.property_currency_code ;;
  }

  dimension_group: property_date_sent_email {
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
    sql: ${TABLE}.property_date_sent_email ;;
  }

  dimension: property_discount_codes {
    type: string
    sql: ${TABLE}.property_discount_codes ;;
  }

  dimension: property_email_domain {
    type: string
    sql: ${TABLE}.property_email_domain ;;
  }

  dimension: property_esp {
    type: number
    sql: ${TABLE}.property_esp ;;
  }

  dimension: property_experiment {
    type: string
    sql: ${TABLE}.property_experiment ;;
  }

  dimension: property_extra {
    type: string
    sql: ${TABLE}.property_extra ;;
  }

  dimension: property_from_number {
    type: string
    sql: ${TABLE}.property_from_number ;;
  }

  dimension: property_fulfillment_hours {
    type: number
    sql: ${TABLE}.property_fulfillment_hours ;;
  }

  dimension: property_fulfillment_status {
    type: string
    sql: ${TABLE}.property_fulfillment_status ;;
  }

  dimension: property_group_ids {
    type: string
    sql: ${TABLE}.property_group_ids ;;
  }

  dimension: property_has_partial_fulfillments {
    type: yesno
    sql: ${TABLE}.property_has_partial_fulfillments ;;
  }

  dimension: property_image_url {
    type: string
    sql: ${TABLE}.property_image_url ;;
  }

  dimension: property_internal {
    type: string
    sql: ${TABLE}.property_internal ;;
  }

  dimension: property_ip {
    type: string
    sql: ${TABLE}.property_ip ;;
  }

  dimension: property_is_session_activity {
    type: yesno
    sql: ${TABLE}.property_is_session_activity ;;
  }

  dimension: property_item_count {
    type: number
    sql: ${TABLE}.property_item_count ;;
  }

  dimension: property_items {
    type: string
    sql: ${TABLE}.property_items ;;
  }

  dimension: property_list {
    type: string
    sql: ${TABLE}.property_list ;;
  }

  dimension: property_list_id {
    type: string
    sql: ${TABLE}.property_list_id ;;
  }

  dimension: property_lookback_days {
    type: number
    sql: ${TABLE}.property_lookback_days ;;
  }

  dimension: property_machine_open {
    type: yesno
    sql: ${TABLE}.property_machine_open ;;
  }

  dimension_group: property_merge {
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
    sql: ${TABLE}.property_merge_date ;;
  }

  dimension: property_merge_type {
    type: string
    sql: ${TABLE}.property_merge_type ;;
  }

  dimension: property_message_body {
    type: string
    sql: ${TABLE}.property_message_body ;;
  }

  dimension: property_message_interaction {
    type: string
    sql: ${TABLE}.property_message_interaction ;;
  }

  dimension: property_method {
    type: string
    sql: ${TABLE}.property_method ;;
  }

  dimension: property_name {
    type: string
    sql: ${TABLE}.property_name ;;
  }

  dimension: property_order_id {
    type: number
    sql: ${TABLE}.property_order_id ;;
  }

  dimension: property_os {
    type: string
    sql: ${TABLE}.property_os ;;
  }

  dimension: property_other {
    type: yesno
    sql: ${TABLE}.property_other ;;
  }

  dimension: property_other_response {
    type: string
    sql: ${TABLE}.property_other_response ;;
  }

  dimension: property_page {
    type: string
    sql: ${TABLE}.property_page ;;
  }

  dimension: property_platform {
    type: string
    sql: ${TABLE}.property_platform ;;
  }

  dimension: property_price {
    type: string
    sql: ${TABLE}.property_price ;;
  }

  dimension: property_product_id {
    type: number
    sql: ${TABLE}.property_product_id ;;
  }

  dimension: property_product_name {
    type: string
    sql: ${TABLE}.property_product_name ;;
  }

  dimension: property_promo_id {
    type: number
    sql: ${TABLE}.property_promo_id ;;
  }

  dimension: property_promo_title {
    type: string
    sql: ${TABLE}.property_promo_title ;;
  }

  dimension: property_quantity {
    type: number
    sql: ${TABLE}.property_quantity ;;
  }

  dimension: property_question {
    type: string
    sql: ${TABLE}.property_question ;;
  }

  dimension: property_question_id {
    type: number
    sql: ${TABLE}.property_question_id ;;
  }

  dimension: property_report_name {
    type: string
    sql: ${TABLE}.property_report_name ;;
  }

  dimension: property_response {
    type: string
    sql: ${TABLE}.property_response ;;
  }

  dimension: property_response_ids {
    type: string
    sql: ${TABLE}.property_response_ids ;;
  }

  dimension: property_reviewed_item {
    type: string
    sql: ${TABLE}.property_reviewed_item ;;
  }

  dimension: property_reviewed_rating {
    type: number
    sql: ${TABLE}.property_reviewed_rating ;;
  }

  dimension: property_reviewed_title {
    type: string
    sql: ${TABLE}.property_reviewed_title ;;
  }

  dimension: property_reviewed_url {
    type: string
    sql: ${TABLE}.property_reviewed_url ;;
  }

  dimension: property_score {
    type: number
    sql: ${TABLE}.property_score ;;
  }

  dimension: property_session_end {
    type: number
    sql: ${TABLE}.property_session_end ;;
  }

  dimension: property_shipping_rate {
    type: string
    sql: ${TABLE}.property_shipping_rate ;;
  }

  dimension: property_sku {
    type: string
    sql: ${TABLE}.property_sku ;;
  }

  dimension: property_source_name {
    type: string
    sql: ${TABLE}.property_source_name ;;
  }

  dimension: property_subject {
    type: string
    sql: ${TABLE}.property_subject ;;
  }

  dimension: property_survey_name {
    type: string
    sql: ${TABLE}.property_survey_name ;;
  }

  dimension: property_tags {
    type: string
    sql: ${TABLE}.property_tags ;;
  }

  dimension: property_title {
    type: string
    sql: ${TABLE}.property_title ;;
  }

  dimension: property_to_number {
    type: string
    sql: ${TABLE}.property_to_number ;;
  }

  dimension: property_total_discounts {
    type: number
    sql: ${TABLE}.property_total_discounts ;;
  }

  dimension: property_url {
    type: string
    sql: ${TABLE}.property_url ;;
  }

  dimension: property_value {
    type: number
    sql: ${TABLE}.property_value ;;
  }

  dimension: property_variant_id {
    type: number
    sql: ${TABLE}.property_variant_id ;;
  }

  dimension: property_variant_name {
    type: string
    sql: ${TABLE}.property_variant_name ;;
  }

  dimension: property_variant_option_amount {
    type: string
    sql: ${TABLE}.property_variant_option_amount ;;
  }

  dimension: property_variant_option_color {
    type: string
    sql: ${TABLE}.property_variant_option_color ;;
  }

  dimension: property_variant_option_condition {
    type: string
    sql: ${TABLE}.property_variant_option_condition ;;
  }

  dimension: property_variant_option_resole {
    type: string
    sql: ${TABLE}.property_variant_option_resole ;;
  }

  dimension: property_variant_option_service {
    type: string
    sql: ${TABLE}.property_variant_option_service ;;
  }

  dimension: property_variant_option_size {
    type: string
    sql: ${TABLE}.property_variant_option_size ;;
  }

  dimension: property_variant_option_title {
    type: string
    sql: ${TABLE}.property_variant_option_title ;;
  }

  dimension: property_variant_option_width {
    type: string
    sql: ${TABLE}.property_variant_option_width ;;
  }

  dimension: property_vendor {
    type: string
    sql: ${TABLE}.property_vendor ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      property_event_id,
      property_source_name,
      property_campaign_name,
      property_report_name,
      property_client_name,
      property_variant_name,
      property_name,
      property_assignee_name,
      property_survey_name,
      property_product_name
    ]
  }
}
