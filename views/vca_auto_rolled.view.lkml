view: vca_auto_rolled {
  sql_table_name: `testdata.vca_auto_rolled`
    ;;

  dimension: count_vca_auto_rolled {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: pageviews {
    type: number
    sql: ${TABLE}.pageviews ;;
  }

  dimension: ph {
    type: number
    sql: ${TABLE}.ph ;;
  }

  dimension: pv_count {
    type: number
    sql: ${TABLE}.pv_count ;;
  }

  dimension: pv_pv {
    type: number
    sql: ${TABLE}.pv_pv ;;
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
