view: wikipedia_v3_non_partition {
  sql_table_name: `lookerdata.bq_showcase.wikipedia_v3_non_partition`
    ;;

  dimension_group: datehour {
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
    sql: ${TABLE}.datehour ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }

  dimension: wiki {
    type: string
    sql: ${TABLE}.wiki ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
