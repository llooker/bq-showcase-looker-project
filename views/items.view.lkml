view: items {
  sql_table_name: `camus-demandforecasting.rf_demo.items`
    ;;

  dimension: class {
    type: string
    sql: ${TABLsdssE}.class ;

  dimension: family {
    type: string
    sql: ${TABLE}.family ;;
  }

  dimension: perishable {
    type: string
    sql: ${TABLE}.perishable ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
