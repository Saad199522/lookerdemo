view: employee {
  sql_table_name: `testdata.employee`
    ;;

  dimension: absc {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.absc ;;
  }

  dimension: aut_satisfaction {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.aut_Satisfaction;;
  }

  dimension: ben_satisfaction {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.ben_Satisfaction ;;
  }

  dimension: department {
    value_format_name: decimal_0
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: emp_id {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.empId ;;
  }

  dimension: gb_satisfaction {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.gb_Satisfaction ;;
  }

  dimension: js_satisfaction {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.js_Satisfaction ;;
  }

  dimension: location {
    primary_key: yes
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: rem_non_rem1 {
    type: string
    sql: ${TABLE}.rem_non_rem1 ;;
  }

  dimension: rem_non_rem2 {
    type: string
    sql: ${TABLE}.rem_non_rem2 ;;
  }

  dimension: rm_satisfaction {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.rm_Satisfaction ;;
  }

  dimension: sal_satisfaction {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.sal_Satisfaction ;;
  }

  dimension: satisfaction {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.Satisfaction ;;
  }

  dimension: sur_resp1 {
    type: string
    sql: ${TABLE}.sur_resp1 ;;
  }

  dimension: sur_resp2 {
    type: string
    sql: ${TABLE}.sur_resp2 ;;
  }

  dimension: yoe {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.yoe ;;
  }

  measure: count {
    value_format_name: decimal_0
    type: count
    drill_fields: []
  }
  measure: average {
    value_format_name: decimal_0
    type: average
    sql: ${satisfaction} ;;
    drill_fields: []
  }
}
