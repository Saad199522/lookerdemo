view: saas {
  sql_table_name: `testdata.employee`
    ;;

  dimension: Sales_Conversion {
    type: number
    sql: ${TABLE}.absc ;;
  }

  dimension: Engineering_Construction {
    type: number
    sql: ${TABLE}.aut_Satisfaction ;;
  }

  dimension: Tourism {
    type: number
    sql: ${TABLE}.ben_Satisfaction ;;
  }

  dimension: feature {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.empId ;;
  }

  dimension: Other {
    type: number
    sql: ${TABLE}.gb_Satisfaction ;;
  }

  dimension: technology {
    type: number
    sql: ${TABLE}.js_Satisfaction ;;
  }

  dimension: location {
    primary_key: yes
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: help_social1 {
    type: string
    sql: ${TABLE}.rem_non_rem1 ;;
  }

  dimension: help_social2 {
    type: string
    sql: ${TABLE}.rem_non_rem2 ;;
  }

  dimension: Healthcare {
    type: number
    sql: ${TABLE}.rm_Satisfaction ;;
  }

  dimension: Retail_ECommerce {
    type: number
    sql: ${TABLE}.sal_Satisfaction ;;
  }

  dimension: Usage {
    type: number
    sql: ${TABLE}.Satisfaction ;;
  }

  dimension: paid1 {
    type: string
    sql: ${TABLE}.sur_resp1 ;;
  }

  dimension: paid2 {
    type: string
    sql: ${TABLE}.sur_resp2 ;;
  }

  dimension: yoe {
    type: number
    sql: ${TABLE}.yoe ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: average {
    type: average
    sql: ${Usage} ;;
    drill_fields: []
  }
}
