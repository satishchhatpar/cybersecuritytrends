view: nvd123 {
  # # You can specify the table name if it's different from the view name:
  sql_table_name: `red-team-project.bq_nvd.nvd` ;;

  dimension: cve_data_version {
    type: number
    sql: ${TABLE}.configurations.CVE_data_version ;;
  }
}
