view: shopify__orders {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__orders`
    ;;

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

  dimension: billing_address_address_1 {
    type: string
    sql: ${TABLE}.billing_address_address_1 ;;
  }

  dimension: billing_address_address_2 {
    type: string
    sql: ${TABLE}.billing_address_address_2 ;;
  }

  dimension: billing_address_city {
    type: string
    sql: ${TABLE}.billing_address_city ;;
  }

  dimension: billing_address_company {
    type: string
    sql: ${TABLE}.billing_address_company ;;
  }

  dimension: billing_address_country {
    type: string
    sql: ${TABLE}.billing_address_country ;;
  }

  dimension: billing_address_country_code {
    type: string
    sql: ${TABLE}.billing_address_country_code ;;
  }

  dimension: billing_address_first_name {
    type: string
    sql: ${TABLE}.billing_address_first_name ;;
  }

  dimension: billing_address_last_name {
    type: string
    sql: ${TABLE}.billing_address_last_name ;;
  }

  dimension: billing_address_latitude {
    type: string
    sql: ${TABLE}.billing_address_latitude ;;
  }

  dimension: billing_address_longitude {
    type: string
    sql: ${TABLE}.billing_address_longitude ;;
  }

  dimension: billing_address_name {
    type: string
    sql: ${TABLE}.billing_address_name ;;
  }

  dimension: billing_address_phone {
    type: string
    sql: ${TABLE}.billing_address_phone ;;
  }

  dimension: billing_address_province {
    type: string
    sql: ${TABLE}.billing_address_province ;;
  }

  dimension: billing_address_province_code {
    type: string
    sql: ${TABLE}.billing_address_province_code ;;
  }

  dimension: billing_address_zip {
    type: string
    sql: ${TABLE}.billing_address_zip ;;
  }

  dimension: browser_ip {
    type: string
    sql: ${TABLE}.browser_ip ;;
  }

  dimension: cancel_reason {
    type: string
    sql: ${TABLE}.cancel_reason ;;
  }

  dimension_group: cancelled_timestamp {
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
    sql: ${TABLE}.cancelled_timestamp ;;
  }

  dimension: cart_token {
    type: string
    sql: ${TABLE}.cart_token ;;
  }

  dimension: checkout_token {
    type: string
    sql: ${TABLE}.checkout_token ;;
  }

  dimension_group: closed_timestamp {
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
    sql: ${TABLE}.closed_timestamp ;;
  }

  dimension_group: created_timestamp {
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
    sql: ${TABLE}.created_timestamp ;;
    convert_tz: yes # alex changed
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_order_seq_number {
    type: number
    sql: ${TABLE}.customer_order_seq_number ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: financial_status {
    type: string
    sql: ${TABLE}.financial_status ;;
  }

  dimension: fulfillment_status {
    type: string
    sql: ${TABLE}.fulfillment_status ;;
  }

  dimension: has_buyer_accepted_marketing {
    type: yesno
    sql: ${TABLE}.has_buyer_accepted_marketing ;;
  }

  dimension: has_taxes_included {
    type: yesno
    sql: ${TABLE}.has_taxes_included ;;
  }

  dimension: is_test_order {
    type: yesno
    sql: ${TABLE}.is_test_order ;;
  }

  dimension: landing_site_base_url {
    type: string
    sql: ${TABLE}.landing_site_base_url ;;
  }

  dimension: line_item_count {
    type: number
    sql: ${TABLE}.line_item_count ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.location_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: new_vs_repeat {
    type: string
    sql: ${TABLE}.new_vs_repeat ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: order_adjusted_total {
    type: number
    sql: ${TABLE}.order_adjusted_total ;;
  }

  dimension: order_adjustment_amount {
    type: number
    sql: ${TABLE}.order_adjustment_amount ;;
  }

  dimension: order_adjustment_tax_amount {
    type: number
    sql: ${TABLE}.order_adjustment_tax_amount ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
    primary_key: yes # alex added
    value_format_name: id

  }

  dimension: order_number {
    type: number
    sql: ${TABLE}.order_number ;;
    value_format_name: id
  }

  dimension_group: processed_timestamp {
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
    sql: ${TABLE}.processed_timestamp ;;
  }

  dimension: processing_method {
    type: string
    sql: ${TABLE}.processing_method ;;
  }

  dimension: referring_site {
    type: string
    sql: ${TABLE}.referring_site ;;
  }

  dimension: refund_subtotal {
    type: number
    sql: ${TABLE}.refund_subtotal ;;
  }

  dimension: refund_total_tax {
    type: number
    sql: ${TABLE}.refund_total_tax ;;
  }

  dimension: shipping_address_address_1 {
    type: string
    sql: ${TABLE}.shipping_address_address_1 ;;
  }

  dimension: shipping_address_address_2 {
    type: string
    sql: ${TABLE}.shipping_address_address_2 ;;
  }

  dimension: shipping_address_city {
    type: string
    sql: ${TABLE}.shipping_address_city ;;
  }

  dimension: shipping_address_company {
    type: string
    sql: ${TABLE}.shipping_address_company ;;
  }

  dimension: shipping_address_country {
    type: string
    sql: ${TABLE}.shipping_address_country ;;
  }

  dimension: shipping_address_country_code {
    type: string
    sql: ${TABLE}.shipping_address_country_code ;;
  }

  dimension: shipping_address_first_name {
    type: string
    sql: ${TABLE}.shipping_address_first_name ;;
  }

  dimension: shipping_address_last_name {
    type: string
    sql: ${TABLE}.shipping_address_last_name ;;
  }

  dimension: shipping_address_latitude {
    type: string
    sql: ${TABLE}.shipping_address_latitude ;;
  }

  dimension: shipping_address_longitude {
    type: string
    sql: ${TABLE}.shipping_address_longitude ;;
  }

  dimension: shipping_address_name {
    type: string
    sql: ${TABLE}.shipping_address_name ;;
  }

  dimension: shipping_address_phone {
    type: string
    sql: ${TABLE}.shipping_address_phone ;;
  }

  dimension: shipping_address_province {
    type: string
    sql: ${TABLE}.shipping_address_province ;;
  }

  dimension: shipping_address_province_code {
    type: string
    sql: ${TABLE}.shipping_address_province_code ;;
  }

  dimension: shipping_address_zip {
    type: string
    sql: ${TABLE}.shipping_address_zip ;;
  }

  dimension: shipping_cost {
    type: number
    sql: ${TABLE}.shipping_cost ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }

  dimension: source_relation {
    type: string
    sql: ${TABLE}.source_relation ;;
  }

  dimension: subtotal_price {
    type: number
    sql: ${TABLE}.subtotal_price ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension: total_discounts {
    type: number
    sql: ${TABLE}.total_discounts ;;
  }

  dimension: total_line_items_price {
    type: number
    sql: ${TABLE}.total_line_items_price ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
  }

  dimension: total_shipping_price_set {
    type: string
    sql: ${TABLE}.total_shipping_price_set ;;
  }

  dimension: total_tax {
    type: number
    sql: ${TABLE}.total_tax ;;
  }

  dimension: total_weight {
    type: number
    sql: ${TABLE}.total_weight ;;
  }

  dimension_group: updated_timestamp {
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
    sql: ${TABLE}.updated_timestamp ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  # custom - START
  dimension: subtotal_after_refunds {
    type: number
    sql: ${subtotal_price} - IFNULL(${refund_subtotal}, 0) ;;
  }

  dimension: orderTier {
    sql: CASE
        WHEN ${subtotal_price} = 0 THEN '0'
        WHEN ${subtotal_price} <= 50 THEN '<= $50'
        WHEN ${subtotal_price} <= 100 THEN '<= $100'
        WHEN ${subtotal_price} <= 150 THEN '<= $150'
        WHEN ${subtotal_price} <= 200 THEN '<= $200'
        WHEN ${subtotal_price} <= 250 THEN '<= $250'
        WHEN ${subtotal_price} <= 250 THEN '<= $300'
        WHEN ${subtotal_price} <= 250 THEN '<= $350'
        WHEN ${subtotal_price} <= 400 THEN '<= $400'
        WHEN ${subtotal_price} > 400 THEN '> $400'
        ELSE 'Other'
        END ;;
  }
  # custom - END

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_taxes {
    type: sum
    sql: ${total_tax} ;;
    value_format_name: usd
  }

  measure: total_refund {
    type: sum
    sql: ${refund_subtotal} ;;
    value_format_name: usd
  }

  measure: total_refund_tax {
    type: sum
    sql: ${refund_total_tax} ;;
    value_format_name: usd
  }

  measure: total_product_revenue {
    type: sum
    sql: ${total_line_items_price} ;;
    value_format_name: usd
  }

  measure: total_shipping_cost {
    type: sum
    sql: ${shipping_cost} ;;
    value_format_name: usd
  }

  measure: total_discounts_overall {
    type: sum
    sql: ${total_discounts} ;;
    value_format_name: usd
  }

  measure: total_subtotal {
    type: sum
    sql: ${subtotal_price} ;;
    value_format_name: usd
  }

  measure: total_units {
    type: sum
    sql: ${line_item_count} ;;
  }

  measure: product_rev_minus_discounts {
    type: number
    sql: ${total_product_revenue} - IFNULL(${total_discounts_overall}, 0) ;;
    value_format_name: usd
  }

  measure: total_revenue {
    type: sum
    sql: ${total_price} ;;
    value_format_name: usd
  }








  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      shipping_address_first_name,
      name,
      shipping_address_name,
      source_name,
      shipping_address_last_name,
      billing_address_first_name,
      billing_address_name,
      billing_address_last_name
    ]
  }
}
