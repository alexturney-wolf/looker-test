view: ga4_export_event {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.google_analytics_4_export.event` ;;

  dimension: _fivetran_id {
    type: string
    sql: ${TABLE}._fivetran_id ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: app_info_firebase_app_id {
    type: string
    sql: ${TABLE}.app_info_firebase_app_id ;;
  }
  dimension: app_info_id {
    type: string
    sql: ${TABLE}.app_info_id ;;
  }
  dimension: app_info_install_source {
    type: string
    sql: ${TABLE}.app_info_install_source ;;
  }
  dimension: app_info_version {
    type: string
    sql: ${TABLE}.app_info_version ;;
  }
  dimension: bundle_sequence_id {
    type: number
    sql: ${TABLE}.bundle_sequence_id ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: device_advertising_id {
    type: string
    sql: ${TABLE}.device_advertising_id ;;
  }
  dimension: device_category {
    type: string
    sql: ${TABLE}.device_category ;;
  }
  dimension: device_is_limited_ad_tracking {
    type: string
    sql: ${TABLE}.device_is_limited_ad_tracking ;;
  }
  dimension: device_language {
    type: string
    sql: ${TABLE}.device_language ;;
  }
  dimension: device_mobile_brand_name {
    type: string
    sql: ${TABLE}.device_mobile_brand_name ;;
  }
  dimension: device_mobile_marketing_name {
    type: string
    sql: ${TABLE}.device_mobile_marketing_name ;;
  }
  dimension: device_mobile_model_name {
    type: string
    sql: ${TABLE}.device_mobile_model_name ;;
  }
  dimension: device_mobile_os_hardware_model {
    type: string
    sql: ${TABLE}.device_mobile_os_hardware_model ;;
  }
  dimension: device_operating_system {
    type: string
    sql: ${TABLE}.device_operating_system ;;
  }
  dimension: device_operating_system_version {
    type: string
    sql: ${TABLE}.device_operating_system_version ;;
  }
  dimension: device_time_zone_offset_seconds {
    type: number
    sql: ${TABLE}.device_time_zone_offset_seconds ;;
  }
  dimension: device_vendor_id {
    type: string
    sql: ${TABLE}.device_vendor_id ;;
  }
  dimension: device_web_info_browser {
    type: string
    sql: ${TABLE}.device_web_info_browser ;;
  }
  dimension: device_web_info_browser_version {
    type: string
    sql: ${TABLE}.device_web_info_browser_version ;;
  }
  dimension: device_web_info_hostname {
    type: string
    sql: ${TABLE}.device_web_info_hostname ;;
  }
  dimension: ecommerce_purchase_revenue {
    type: number
    sql: ${TABLE}.ecommerce_purchase_revenue ;;
  }
  dimension: ecommerce_purchase_revenue_in_usd {
    type: number
    sql: ${TABLE}.ecommerce_purchase_revenue_in_usd ;;
  }
  dimension: ecommerce_refund_value {
    type: number
    sql: ${TABLE}.ecommerce_refund_value ;;
  }
  dimension: ecommerce_refund_value_in_usd {
    type: number
    sql: ${TABLE}.ecommerce_refund_value_in_usd ;;
  }
  dimension: ecommerce_shipping_value {
    type: number
    sql: ${TABLE}.ecommerce_shipping_value ;;
  }
  dimension: ecommerce_shipping_value_in_usd {
    type: number
    sql: ${TABLE}.ecommerce_shipping_value_in_usd ;;
  }
  dimension: ecommerce_tax_value {
    type: number
    sql: ${TABLE}.ecommerce_tax_value ;;
  }
  dimension: ecommerce_tax_value_in_usd {
    type: number
    sql: ${TABLE}.ecommerce_tax_value_in_usd ;;
  }
  dimension: ecommerce_total_item_quantity {
    type: number
    sql: ${TABLE}.ecommerce_total_item_quantity ;;
  }
  dimension: ecommerce_transaction_id {
    type: string
    sql: ${TABLE}.ecommerce_transaction_id ;;
  }
  dimension: ecommerce_unique_items {
    type: number
    sql: ${TABLE}.ecommerce_unique_items ;;
  }
  dimension: event_dimensions_hostname {
    type: string
    sql: ${TABLE}.event_dimensions_hostname ;;
  }
  dimension: geo_city {
    type: string
    sql: ${TABLE}.geo_city ;;
  }
  dimension: geo_continent {
    type: string
    sql: ${TABLE}.geo_continent ;;
  }
  dimension: geo_country {
    type: string
    sql: ${TABLE}.geo_country ;;
  }
  dimension: geo_metro {
    type: string
    sql: ${TABLE}.geo_metro ;;
  }
  dimension: geo_region {
    type: string
    sql: ${TABLE}.geo_region ;;
  }
  dimension: geo_sub_continent {
    type: string
    sql: ${TABLE}.geo_sub_continent ;;
  }
  dimension: is_intraday {
    type: yesno
    sql: ${TABLE}.is_intraday ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: param_campaign {
    type: string
    sql: ${TABLE}.param_campaign ;;
  }
  dimension: param_cart_total {
    type: number
    sql: ${TABLE}.param_cart_total ;;
  }
  dimension: param_click_text {
    type: string
    sql: ${TABLE}.param_click_text ;;
  }
  dimension: param_click_url {
    type: string
    sql: ${TABLE}.param_click_url ;;
  }
  dimension: param_content {
    type: string
    sql: ${TABLE}.param_content ;;
  }
  dimension: param_coupon {
    type: string
    sql: ${TABLE}.param_coupon ;;
  }
  dimension: param_currency {
    type: string
    sql: ${TABLE}.param_currency ;;
  }
  dimension: param_engaged_session_event {
    type: number
    sql: ${TABLE}.param_engaged_session_event ;;
  }
  dimension: param_engagement_time_msec {
    type: number
    sql: ${TABLE}.param_engagement_time_msec ;;
  }
  dimension: param_entrances {
    type: number
    sql: ${TABLE}.param_entrances ;;
  }
  dimension: param_firebase_conversion {
    type: number
    sql: ${TABLE}.param_firebase_conversion ;;
  }
  dimension: param_ga_session_id {
    type: number
    sql: ${TABLE}.param_ga_session_id ;;
  }
  dimension: param_ga_session_number {
    type: number
    sql: ${TABLE}.param_ga_session_number ;;
  }
  dimension: param_gclid {
    type: string
    sql: ${TABLE}.param_gclid ;;
  }
  dimension: param_ignore_referrer {
    type: yesno
    sql: ${TABLE}.param_ignore_referrer ;;
  }
  dimension: param_inner_html {
    type: string
    sql: ${TABLE}.param_inner_html ;;
  }
  dimension: param_item_list_id {
    type: string
    sql: ${TABLE}.param_item_list_id ;;
  }
  dimension: param_item_list_name {
    type: string
    sql: ${TABLE}.param_item_list_name ;;
  }
  dimension: param_link_classes {
    type: string
    sql: ${TABLE}.param_link_classes ;;
  }
  dimension: param_link_domain {
    type: string
    sql: ${TABLE}.param_link_domain ;;
  }
  dimension: param_link_id {
    type: string
    sql: ${TABLE}.param_link_id ;;
  }
  dimension: param_link_url {
    type: string
    sql: ${TABLE}.param_link_url ;;
  }
  dimension: param_medium {
    type: string
    sql: ${TABLE}.param_medium ;;
  }
  dimension: param_outbound {
    type: yesno
    sql: ${TABLE}.param_outbound ;;
  }
  dimension: param_page_location {
    type: string
    sql: ${TABLE}.param_page_location ;;
  }
  dimension: param_page_referrer {
    type: string
    sql: ${TABLE}.param_page_referrer ;;
  }
  dimension: param_page_title {
    type: string
    sql: ${TABLE}.param_page_title ;;
  }
  dimension: param_percent_scrolled {
    type: number
    sql: ${TABLE}.param_percent_scrolled ;;
  }
  dimension: param_product_name {
    type: string
    sql: ${TABLE}.param_product_name ;;
  }
  dimension: param_search_term {
    type: string
    sql: ${TABLE}.param_search_term ;;
  }
  dimension: param_session_engaged {
    type: number
    sql: ${TABLE}.param_session_engaged ;;
  }
  dimension: param_shipping {
    type: number
    sql: ${TABLE}.param_shipping ;;
  }
  dimension: param_source {
    type: string
    sql: ${TABLE}.param_source ;;
  }
  dimension: param_srsltid {
    type: string
    sql: ${TABLE}.param_srsltid ;;
  }
  dimension: param_synthetic_bundle {
    type: number
    sql: ${TABLE}.param_synthetic_bundle ;;
  }
  dimension: param_tax {
    type: number
    sql: ${TABLE}.param_tax ;;
  }
  dimension: param_term {
    type: string
    sql: ${TABLE}.param_term ;;
  }
  dimension: param_transaction_id {
    type: string
    sql: ${TABLE}.param_transaction_id ;;
  }
  dimension: param_unique_search_term {
    type: number
    sql: ${TABLE}.param_unique_search_term ;;
  }
  dimension: param_value {
    type: number
    sql: ${TABLE}.param_value ;;
  }
  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }
  dimension_group: previous_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.previous_timestamp ;;
  }
  dimension: privacy_info_ads_storage {
    type: string
    sql: ${TABLE}.privacy_info_ads_storage ;;
  }
  dimension: privacy_info_analytics_storage {
    type: string
    sql: ${TABLE}.privacy_info_analytics_storage ;;
  }
  dimension: privacy_info_uses_transient_token {
    type: string
    sql: ${TABLE}.privacy_info_uses_transient_token ;;
  }
  dimension_group: server_timestamp_offset {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.server_timestamp_offset ;;
  }
  dimension: stream_id {
    type: string
    sql: ${TABLE}.stream_id ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }
  dimension: traffic_source_medium {
    type: string
    sql: ${TABLE}.traffic_source_medium ;;
  }
  dimension: traffic_source_name {
    type: string
    sql: ${TABLE}.traffic_source_name ;;
  }
  dimension: traffic_source_source {
    type: string
    sql: ${TABLE}.traffic_source_source ;;
  }
  dimension_group: user_first_touch_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.user_first_touch_timestamp ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  dimension: user_ltv_currency {
    type: string
    sql: ${TABLE}.user_ltv_currency ;;
  }
  dimension: user_ltv_revenue {
    type: number
    sql: ${TABLE}.user_ltv_revenue ;;
  }
  dimension: user_property_prevenue_28_d {
    type: string
    sql: ${TABLE}.user_property_prevenue_28_d ;;
  }
  dimension: user_property_user_id {
    type: string
    sql: ${TABLE}.user_property_user_id ;;
  }
  dimension: user_property_visitor_type {
    type: string
    sql: ${TABLE}.user_property_visitor_type ;;
  }
  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
  }
  dimension: value_in_usd {
    type: number
    sql: ${TABLE}.value_in_usd ;;
  }
  dimension: custom_source {
    type:  string
    sql: CASE
      WHEN ${param_source} = "Facebook" THEN "facebook"
      WHEN ${param_source} = "facebook" THEN "facebook"
      WHEN ${param_source} is not null THEN ${param_source}
      ELSE ${traffic_source_source}
      END ;;
  }
  dimension: custom_medium {
    type:  string
    sql: CASE
      WHEN ${param_medium} is not null THEN ${param_medium}
      ELSE ${traffic_source_medium}
      END ;;
  }
  dimension: custom_campaign {
    type:  string
    sql: CASE
      WHEN ${param_campaign} is not null THEN ${param_campaign}
      ELSE ${traffic_source_name}
      END ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  param_item_list_name,
  device_mobile_model_name,
  traffic_source_name,
  device_mobile_brand_name,
  param_product_name,
  device_web_info_hostname,
  event_dimensions_hostname,
  name,
  device_mobile_marketing_name
  ]
  }

}
