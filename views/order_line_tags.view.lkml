view: order_line_tags {
  derived_table: {
    sql: SELECT
          order_line.id  AS order_line_id,
          STRING_AGG(DISTINCT lower(CAST(order_line.properties AS STRING)), ', ') AS order_line_properties
      FROM `fivetran-wolf-and-shepher-osfl.shopify.order_line`
           AS order_line
      GROUP BY
          1
      ORDER BY
          2 DESC
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: order_line_id {
    type: number
    sql: ${TABLE}.order_line_id ;;
    primary_key: yes
  }

  dimension: properties {
    type: string
    sql: ${TABLE}.order_line_properties ;;
  }

  dimension: gender {
    case: {
      when: {
        sql: CONTAINS_SUBSTR(${TABLE}.order_line_properties,'women');;
        label: "womens"
      }
      when: {
        sql: CONTAINS_SUBSTR(${TABLE}.order_line_properties,'men');;
        label: "mens"
      }
      # possibly more when statements
      else: "not specified"
    }
  }

  set: detail {
    fields: [order_line_id, properties]
  }
}
