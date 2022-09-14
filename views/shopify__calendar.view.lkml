# The name of this view in Looker is "Shopify Calendar"
view: shopify__calendar {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `schema_shopify.shopify__calendar`
    ;;
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension_group: date_day {
    #X# primary_key:true
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
    datatype: datetime
    sql: ${TABLE}.date_day ;;
  }

}
