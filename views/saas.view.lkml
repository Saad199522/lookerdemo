view: saas {
  sql_table_name: `testdata.employee`
    ;;

  dimension: tweet_Sentiment{
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.absc ;;
  }

  dimension: integrations_score {
    value_format_name: decimal_0
    type: number
    sql: 0.75*${TABLE}.aut_Satisfaction;;
  }

  dimension: communities_score {
    value_format_name: decimal_0
    type: number
    sql: 0.75*${TABLE}.ben_Satisfaction ;;
  }

  dimension: industry {
    type: string
    sql: REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(${TABLE}.Department, 'Sales','Technology'), 'Delivery', 'Healthcare')
    , 'Engineering', 'Construction'), 'Operations', 'Retail'), 'Design', 'Tourism') ;;
  }

  dimension: uid {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.empId ;;
  }

  dimension: calls_score {
    value_format_name: decimal_0
    type: number
    sql: 0.75*${TABLE}.gb_Satisfaction ;;
  }

  dimension: bots_score {
    value_format_name: decimal_0
    type: number
    sql: 0.75*${TABLE}.js_Satisfaction ;;
  }

  dimension: location {
    primary_key: yes
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: help_request {
    type: string
    sql: ${TABLE}.rem_non_rem1 ;;
  }

  dimension: mentions {
    type: string
    sql: ${TABLE}.rem_non_rem2 ;;
  }

  dimension: chat_score {
    value_format_name: decimal_0
    type: number
    sql: 0.75*${TABLE}.rm_Satisfaction ;;
  }

  dimension: other_score {
    value_format_name: decimal_0
    type: number
    sql: 0.75*${TABLE}.sal_Satisfaction ;;
  }

  dimension: overall_score {
    value_format_name: decimal_0
    type: number
    sql: 0.75*${TABLE}.Satisfaction ;;
  }

  dimension: free {
    type: string
    sql: ${TABLE}.sur_resp1 ;;
  }

  dimension: paid {
    type: string
    sql: ${TABLE}.sur_resp2 ;;
  }

  dimension: sentiment {
    value_format_name: decimal_0
    type: number
    sql: ${TABLE}.yoe ;;
  }

  measure: count {
    value_format_name: decimal_0
    type: count
    drill_fields: []
  }
  measure: average_score {
    value_format_name: decimal_0
    type: average
    sql: ${overall_score} ;;
    drill_fields: []
  }
  measure: score_top_ten {
    type: percentile
    percentile: 90
    sql: ${overall_score} ;;
  }
  measure: maxiumum_satisfaction{
    value_format_name: decimal_0
    type: max
    sql:  ${overall_score};;
  }
  measure: minimum_satisfaction {
    value_format_name: decimal_0
    type: min
    sql: ${overall_score} ;;
  }
  measure: median_satisfaction {
    value_format_name: decimal_0
    type: median
    sql: ${overall_score} ;;
  }
  measure: average_sentiment {
    value_format_name: decimal_0
    type: median
    sql: ${sentiment} ;;
  }
}
