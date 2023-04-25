view: cust_tags_by_cust {
    derived_table: {
      sql: SELECT
          cust_tag.order_id  AS cust_tag_id,
          STRING_AGG(DISTINCT CAST(cust_tag.value AS STRING), ', ') AS cust_tag_list
      FROM `fivetran-wolf-and-shepher-osfl.prod_schema_shopify.shopify__customers`
           AS shopify__customers
      LEFT JOIN `fivetran-wolf-and-shepher-osfl.shopify.customer_tag`
           AS cust_tag ON shopify__customers.customer_id = cust_tag.customer_id
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

    dimension: customer_tag_id {
      type: number
      sql: ${TABLE}.cust_tag_id ;;
      primary_key: yes
    }

    dimension: customer_tags {
      type: string
      sql: ${TABLE}.cust_tag_list ;;
    }

    dimension: exclude_from_ltv {
      case: {
        when: {
          sql: CONTAINS_SUBSTR(${TABLE}.cust_tag_list,'WHOLESALE');;
          label: "Yes"
        }
        # possibly more when statements
        else: "No"
      }
    }

    set: detail {
      fields: [customer_tag_id, customer_tags]
    }
  }
