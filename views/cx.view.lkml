view: cx {
  derived_table: {
    sql:
      WITH temp as (
        SELECT o.order_number, l.properties, json_extract(ar,"$.value") as prop_value, l.title,
        CASE
          WHEN properties = "[]" THEN "no metadata"
          WHEN properties like "%Sale%" THEN "final sale"
          WHEN CAST(json_extract(ar,"$.name") AS STRING) like "%Estimated%" THEN "preorder_ship_date"
          WHEN CAST(json_extract(ar,"$.name") AS STRING) like "%Pre-ordered%" THEN "pre_order_qty"
          ELSE "error"
          END AS classification
        FROM `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__orders` as o
        LEFT JOIN `fivetran-wolf-and-shepher-osfl.shopify.order_line` l on l.order_id = o.order_id
        LEFT JOIN UNNEST(JSON_EXTRACT_ARRAY(properties, '$')) as ar
        WHERE o.created_timestamp >= timestamp("2022-01-01 00:00:00") AND
      )
    select *
    from temp
    where classification = "no metadata" OR classification="preorder_ship_date";;
  }

  dimension: title {
    description: ""
    sql:  ${TABLE}.title;;
  }

  dimension: order_number {
    description: ""
    sql:  ${TABLE}.title;;
  }

  dimension: prop_value {
    type: date
    sql: TIMESTAMP(${TABLE}.shopify__orders_created_timestamp_date,"America/Los_Angeles");;
  }

}
