# Define the database connection to be used for this model.
connection: "lookerdata"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: hacknvd_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: hacknvd_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Hacknvd"

explore: nvd {
  join: nvd__configurations__nodes {
    view_label: "Nvd: Configurations Nodes"
    sql: LEFT JOIN UNNEST(${nvd.configurations__nodes}) as nvd__configurations__nodes ;;
    relationship: one_to_many
  }

  join: nvd__cve__references__reference_data {
    view_label: "Nvd: Cve References Reference Data"
    sql: LEFT JOIN UNNEST(${nvd.cve__references__reference_data}) as nvd__cve__references__reference_data ;;
    relationship: one_to_many
  }

  join: nvd__cve__references__reference_data__tags {
    view_label: "Nvd: Cve References Reference Data Tags"
    sql: LEFT JOIN UNNEST(${nvd__cve__references__reference_data.tags}) as nvd__cve__references__reference_data__tags ;;
    relationship: one_to_many
  }

  join: nvd__configurations__nodes__children {
    view_label: "Nvd: Configurations Nodes Children"
    sql: LEFT JOIN UNNEST(${nvd__configurations__nodes.children}) as nvd__configurations__nodes__children ;;
    relationship: one_to_many
  }

  join: nvd__cve__description__description_data {
    view_label: "Nvd: Cve Description Description Data"
    sql: LEFT JOIN UNNEST(${nvd.cve__description__description_data}) as nvd__cve__description__description_data ;;
    relationship: one_to_many
  }

  join: nvd__configurations__nodes__cpe_match {
    view_label: "Nvd: Configurations Nodes Cpe Match"
    sql: LEFT JOIN UNNEST(${nvd__configurations__nodes.cpe_match}) as nvd__configurations__nodes__cpe_match ;;
    relationship: one_to_many
  }

  join: nvd__configurations__nodes__children__cpe_match {
    view_label: "Nvd: Configurations Nodes Children Cpe Match"
    sql: LEFT JOIN UNNEST(${nvd__configurations__nodes__children.cpe_match}) as nvd__configurations__nodes__children__cpe_match ;;
    relationship: one_to_many
  }

  join: nvd__cve__problemtype__problemtype_data__description {
    view_label: "Nvd: Cve Problemtype Problemtype Data Description"
    sql: LEFT JOIN UNNEST(${nvd.cve__problemtype__problemtype_data__description}) as nvd__cve__problemtype__problemtype_data__description ;;
    relationship: one_to_many
  }
}
