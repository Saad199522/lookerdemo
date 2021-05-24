connection: "looker_demo"

# include all the views
include: "/views/**/*.view"

datagroup: looker_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_demo_default_datagroup

explore: employee {}

explore: vca_auto {}

explore: vca_auto_rolled {}
