view: vca_auto {
  sql_table_name: `testdata.vca_auto`
    ;;

  dimension: page {
    type: string
    sql: ${TABLE}.page ;;
  }

  dimension: pageviews {
    type: number
    sql: ${TABLE}.pageviews ;;
  }

  dimension: ph {
    type: number
    sql: ${TABLE}.ph ;;
  }

  dimension: term_name {
    type: string
    sql: ${TABLE}.Term_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [term_name]
  }
}
