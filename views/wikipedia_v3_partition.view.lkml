view: wikipedia_v3_partition {
  sql_table_name: `lookerdata.bq_showcase.wikipedia_v3_partition`
    ;;

  dimension_group: datehour {
    type: time
    timeframes: [
      hour_of_day,
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

  measure: total_views {
    type: sum
    sql: ${views} ;;
    value_format_name: decimal_0
  }

  measure: avg_views {
    type: average
    sql: ${views} ;;
    value_format_name: decimal_0
  }

}
