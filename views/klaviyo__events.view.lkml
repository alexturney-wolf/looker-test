view: klaviyo__events {
  sql_table_name: `fivetran-wolf-and-shepher-osfl.prod_schema_klaviyo.klaviyo__events`
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

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: flow_id {
    type: string
    sql: ${TABLE}.flow_id ;;
  }

  dimension: flow_message_id {
    type: string
    sql: ${TABLE}.flow_message_id ;;
  }

  dimension: flow_name {
    type: string
    sql: ${TABLE}.flow_name ;;
  }

  dimension: integration_category {
    type: string
    sql: ${TABLE}.integration_category ;;
  }

  dimension: integration_name {
    type: string
    sql: ${TABLE}.integration_name ;;
  }

  dimension_group: last_touch {
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
    sql: ${TABLE}.last_touch_at ;;
  }

  dimension: last_touch_campaign_id {
    type: string
    sql: ${TABLE}.last_touch_campaign_id ;;
  }

  dimension: last_touch_event_type {
    type: string
    sql: ${TABLE}.last_touch_event_type ;;
  }

  dimension: last_touch_flow_id {
    type: string
    sql: ${TABLE}.last_touch_flow_id ;;
  }

  dimension: last_touch_type {
    type: string
    sql: ${TABLE}.last_touch_type ;;
  }

  dimension: metric_id {
    type: string
    sql: ${TABLE}.metric_id ;;
  }

  dimension: numeric_value {
    type: number
    sql: ${TABLE}.numeric_value ;;
  }

  dimension_group: occurred_at {
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
    sql: ${TABLE}.occurred_at ;;
  }

  dimension_group: occurred_on {
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
    sql: ${TABLE}.occurred_on ;;
  }

  dimension: person_city {
    type: string
    sql: ${TABLE}.person_city ;;
  }

  dimension: person_country {
    type: string
    sql: ${TABLE}.person_country ;;
  }

  dimension: person_email {
    type: string
    sql: ${TABLE}.person_email ;;
  }

  dimension: person_id {
    type: string
    sql: ${TABLE}.person_id ;;
  }

  dimension: person_region {
    type: string
    sql: ${TABLE}.person_region ;;
  }

  dimension: person_timezone {
    type: string
    sql: ${TABLE}.person_timezone ;;
  }

  dimension: source_relation {
    type: string
    sql: ${TABLE}.source_relation ;;
  }

  dimension: touch_id {
    type: string
    sql: ${TABLE}.touch_id ;;
  }

  dimension: touch_type {
    type: string
    sql: ${TABLE}.touch_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: unique_event_id {
    type: string
    sql: ${TABLE}.unique_event_id ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  dimension: variation_id {
    type: string
    sql: ${TABLE}.variation_id ;;
  }

  measure: count {
    type: count
    drill_fields: [integration_name, campaign_name, flow_name]
  }
}
