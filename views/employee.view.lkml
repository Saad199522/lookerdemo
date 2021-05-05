view: employee {
  sql_table_name: `testdata.employee`
    ;;

  dimension: abscence_rate{
    type: number
    value_format: "0.###"
    sql: ${TABLE}.absc ;;
  }

  dimension: autonomy_score {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.aut_Satisfaction;;
  }

  dimension: benefits_score {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.ben_Satisfaction ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: emp_id {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.empId ;;
  }

  dimension: growth_score {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.gb_Satisfaction ;;
  }

  dimension: jobsat_score {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.js_Satisfaction ;;
  }

  dimension: location {
    primary_key: yes
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: remote1 {
    type: string
    sql: ${TABLE}.rem_non_rem1 ;;
  }

  dimension: remote2 {
    type: string
    sql: ${TABLE}.rem_non_rem2 ;;
  }

  dimension: recognition_score {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.rm_Satisfaction ;;
  }

  dimension: salary_score {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.sal_Satisfaction ;;
  }

  dimension: overall_satisfaction {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.Satisfaction ;;
  }

  dimension: survey_response1 {
    type: string
    sql: ${TABLE}.sur_resp1 ;;
  }

  dimension: survey_response2 {
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
  measure: average_satisfaction {
    value_format_name: decimal_0
    type: average
    sql: ${overall_satisfaction} ;;
    drill_fields: []
  }
  measure: satisfaction_top_ten {
    type: percentile
    percentile: 90
    sql: ${overall_satisfaction} ;;
  }
  measure: maxiumum_satisfaction{
    value_format_name: decimal_0
    type: max
    sql:  ${overall_satisfaction};;
  }
  measure: minimum_satisfaction {
    value_format_name: decimal_0
    type: min
    sql: ${overall_satisfaction} ;;
  }
  measure: median_satisfaction {
    value_format_name: decimal_0
    type: median
    sql: ${overall_satisfaction} ;;
  }
  measure: average_yoe {
    value_format_name: decimal_0
    type: median
    sql: ${yoe} ;;
  }

}
