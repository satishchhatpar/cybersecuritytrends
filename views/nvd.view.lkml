# The name of this view in Looker is "Nvd"
view: nvd {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `red-team-project.bq_nvd.nvd`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Configurations Cve Data Version" in Explore.

  dimension: configurations__cve_data_version {
    type: number
    sql: ${TABLE}.configurations.CVE_data_version ;;
    group_label: "Configurations"
    group_item_label: "Cve Data Version"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_configurations__cve_data_version {
    type: sum
    sql: ${configurations__cve_data_version} ;;
  }

  measure: average_configurations__cve_data_version {
    type: average
    sql: ${configurations__cve_data_version} ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: configurations__nodes {
    hidden: yes
    sql: ${TABLE}.configurations.nodes ;;
    group_label: "Configurations"
    group_item_label: "Nodes"
  }

  dimension: cve__cve_data_meta__assigner {
    type: string
    sql: ${TABLE}.cve.CVE_data_meta.ASSIGNER ;;
    group_label: "Cve Cve Data Meta"
    group_item_label: "Assigner"
  }

  dimension: cve__cve_data_meta__id {
    type: string
    sql: ${TABLE}.cve.CVE_data_meta.ID ;;
    group_label: "Cve Cve Data Meta"
    group_item_label: "ID"
  }

  dimension: cve__data_format {
    type: string
    sql: ${TABLE}.cve.data_format ;;
    group_label: "Cve"
    group_item_label: "Data Format"
  }

  dimension: cve__data_type {
    type: string
    sql: ${TABLE}.cve.data_type ;;
    group_label: "Cve"
    group_item_label: "Data Type"
  }

  dimension: cve__data_version {
    type: number
    sql: ${TABLE}.cve.data_version ;;
    group_label: "Cve"
    group_item_label: "Data Version"
  }

  dimension: cve__description__description_data {
    hidden: yes
    sql: ${TABLE}.cve.description.description_data ;;
    group_label: "Cve Description"
    group_item_label: "Description Data"
  }

  dimension: cve__problemtype__problemtype_data__description {
    hidden: yes
    sql: ${TABLE}.cve.problemtype.problemtype_data.description ;;
    group_label: "Cve Problemtype Problemtype Data"
    group_item_label: "Description"
  }

  dimension: cve__references__reference_data {
    hidden: yes
    sql: ${TABLE}.cve.references.reference_data ;;
    group_label: "Cve References"
    group_item_label: "Reference Data"
  }

  dimension: impact__base_metric_v2__ac_insuf_info {
    type: yesno
    sql: ${TABLE}.impact.baseMetricV2.acInsufInfo ;;
    group_label: "Impact Base Metric V2"
    group_item_label: "Ac Insuf Info"
  }

  dimension: impact__base_metric_v2__cvss_v2__access_complexity {
    type: string
    sql: ${TABLE}.impact.baseMetricV2.cvssV2.accessComplexity ;;
    group_label: "Impact Base Metric V2 Cvss V2"
    group_item_label: "Access Complexity"
  }

  dimension: impact__base_metric_v2__cvss_v2__access_vector {
    type: string
    sql: ${TABLE}.impact.baseMetricV2.cvssV2.accessVector ;;
    group_label: "Impact Base Metric V2 Cvss V2"
    group_item_label: "Access Vector"
  }

  dimension: impact__base_metric_v2__cvss_v2__authentication {
    type: string
    sql: ${TABLE}.impact.baseMetricV2.cvssV2.authentication ;;
    group_label: "Impact Base Metric V2 Cvss V2"
    group_item_label: "Authentication"
  }

  dimension: impact__base_metric_v2__cvss_v2__availability_impact {
    type: string
    sql: ${TABLE}.impact.baseMetricV2.cvssV2.availabilityImpact ;;
    group_label: "Impact Base Metric V2 Cvss V2"
    group_item_label: "Availability Impact"
  }

  dimension: impact__base_metric_v2__cvss_v2__base_score {
    type: number
    sql: ${TABLE}.impact.baseMetricV2.cvssV2.baseScore ;;
    group_label: "Impact Base Metric V2 Cvss V2"
    group_item_label: "Base Score"
  }

  dimension: impact__base_metric_v2__cvss_v2__confidentiality_impact {
    type: string
    sql: ${TABLE}.impact.baseMetricV2.cvssV2.confidentialityImpact ;;
    group_label: "Impact Base Metric V2 Cvss V2"
    group_item_label: "Confidentiality Impact"
  }

  dimension: impact__base_metric_v2__cvss_v2__integrity_impact {
    type: string
    sql: ${TABLE}.impact.baseMetricV2.cvssV2.integrityImpact ;;
    group_label: "Impact Base Metric V2 Cvss V2"
    group_item_label: "Integrity Impact"
  }

  dimension: impact__base_metric_v2__cvss_v2__vector_string {
    type: string
    sql: ${TABLE}.impact.baseMetricV2.cvssV2.vectorString ;;
    group_label: "Impact Base Metric V2 Cvss V2"
    group_item_label: "Vector String"
  }

  dimension: impact__base_metric_v2__cvss_v2__version {
    type: number
    sql: ${TABLE}.impact.baseMetricV2.cvssV2.version ;;
    group_label: "Impact Base Metric V2 Cvss V2"
    group_item_label: "Version"
  }

  dimension: impact__base_metric_v2__exploitability_score {
    type: number
    sql: ${TABLE}.impact.baseMetricV2.exploitabilityScore ;;
    group_label: "Impact Base Metric V2"
    group_item_label: "Exploitability Score"
  }

  dimension: impact__base_metric_v2__impact_score {
    type: number
    sql: ${TABLE}.impact.baseMetricV2.impactScore ;;
    group_label: "Impact Base Metric V2"
    group_item_label: "Impact Score"
  }

  dimension: impact__base_metric_v2__obtain_all_privilege {
    type: yesno
    sql: ${TABLE}.impact.baseMetricV2.obtainAllPrivilege ;;
    group_label: "Impact Base Metric V2"
    group_item_label: "Obtain All Privilege"
  }

  dimension: impact__base_metric_v2__obtain_other_privilege {
    type: yesno
    sql: ${TABLE}.impact.baseMetricV2.obtainOtherPrivilege ;;
    group_label: "Impact Base Metric V2"
    group_item_label: "Obtain Other Privilege"
  }

  dimension: impact__base_metric_v2__obtain_user_privilege {
    type: yesno
    sql: ${TABLE}.impact.baseMetricV2.obtainUserPrivilege ;;
    group_label: "Impact Base Metric V2"
    group_item_label: "Obtain User Privilege"
  }

  dimension: impact__base_metric_v2__severity {
    type: string
    sql: ${TABLE}.impact.baseMetricV2.severity ;;
    group_label: "Impact Base Metric V2"
    group_item_label: "Severity"
  }

  dimension: impact__base_metric_v2__user_interaction_required {
    type: yesno
    sql: ${TABLE}.impact.baseMetricV2.userInteractionRequired ;;
    group_label: "Impact Base Metric V2"
    group_item_label: "User Interaction Required"
  }

  dimension: impact__base_metric_v3__cvss_v3__attack_complexity {
    type: string
    sql: ${TABLE}.impact.baseMetricV3.cvssV3.attackComplexity ;;
    group_label: "Impact Base Metric V3 Cvss V3"
    group_item_label: "Attack Complexity"
  }

  dimension: impact__base_metric_v3__cvss_v3__attack_vector {
    type: string
    sql: ${TABLE}.impact.baseMetricV3.cvssV3.attackVector ;;
    group_label: "Impact Base Metric V3 Cvss V3"
    group_item_label: "Attack Vector"
  }

  dimension: impact__base_metric_v3__cvss_v3__availability_impact {
    type: string
    sql: ${TABLE}.impact.baseMetricV3.cvssV3.availabilityImpact ;;
    group_label: "Impact Base Metric V3 Cvss V3"
    group_item_label: "Availability Impact"
  }

  dimension: impact__base_metric_v3__cvss_v3__base_score {
    type: number
    sql: ${TABLE}.impact.baseMetricV3.cvssV3.baseScore ;;
    group_label: "Impact Base Metric V3 Cvss V3"
    group_item_label: "Base Score"
  }

  dimension: impact__base_metric_v3__cvss_v3__base_severity {
    type: string
    sql: ${TABLE}.impact.baseMetricV3.cvssV3.baseSeverity ;;
    group_label: "Impact Base Metric V3 Cvss V3"
    group_item_label: "Base Severity"
  }

  dimension: impact__base_metric_v3__cvss_v3__confidentiality_impact {
    type: string
    sql: ${TABLE}.impact.baseMetricV3.cvssV3.confidentialityImpact ;;
    group_label: "Impact Base Metric V3 Cvss V3"
    group_item_label: "Confidentiality Impact"
  }

  dimension: impact__base_metric_v3__cvss_v3__integrity_impact {
    type: string
    sql: ${TABLE}.impact.baseMetricV3.cvssV3.integrityImpact ;;
    group_label: "Impact Base Metric V3 Cvss V3"
    group_item_label: "Integrity Impact"
  }

  dimension: impact__base_metric_v3__cvss_v3__privileges_required {
    type: string
    sql: ${TABLE}.impact.baseMetricV3.cvssV3.privilegesRequired ;;
    group_label: "Impact Base Metric V3 Cvss V3"
    group_item_label: "Privileges Required"
  }

  dimension: impact__base_metric_v3__cvss_v3__scope {
    type: string
    sql: ${TABLE}.impact.baseMetricV3.cvssV3.scope ;;
    group_label: "Impact Base Metric V3 Cvss V3"
    group_item_label: "Scope"
  }

  dimension: impact__base_metric_v3__cvss_v3__user_interaction {
    type: string
    sql: ${TABLE}.impact.baseMetricV3.cvssV3.userInteraction ;;
    group_label: "Impact Base Metric V3 Cvss V3"
    group_item_label: "User Interaction"
  }

  dimension: impact__base_metric_v3__cvss_v3__vector_string {
    type: string
    sql: ${TABLE}.impact.baseMetricV3.cvssV3.vectorString ;;
    group_label: "Impact Base Metric V3 Cvss V3"
    group_item_label: "Vector String"
  }

  dimension: impact__base_metric_v3__cvss_v3__version {
    type: number
    sql: ${TABLE}.impact.baseMetricV3.cvssV3.version ;;
    group_label: "Impact Base Metric V3 Cvss V3"
    group_item_label: "Version"
  }

  dimension: impact__base_metric_v3__exploitability_score {
    type: number
    sql: ${TABLE}.impact.baseMetricV3.exploitabilityScore ;;
    group_label: "Impact Base Metric V3"
    group_item_label: "Exploitability Score"
  }

  dimension: impact__base_metric_v3__impact_score {
    type: number
    sql: ${TABLE}.impact.baseMetricV3.impactScore ;;
    group_label: "Impact Base Metric V3"
    group_item_label: "Impact Score"
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.lastModifiedDate ;;
  }

  dimension_group: published {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.publishedDate ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

# The name of this view in Looker is "Nvd Configurations Nodes"
view: nvd__configurations__nodes {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: children {
    hidden: yes
    sql: ${TABLE}.children ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cpe Match" in Explore.

  dimension: cpe_match {
    hidden: yes
    sql: ${TABLE}.cpe_match ;;
  }

  dimension: operator {
    type: string
    sql: ${TABLE}.operator ;;
  }
}

# The name of this view in Looker is "Nvd Cve References Reference Data"
view: nvd__cve__references__reference_data {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Name" in Explore.

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: refsource {
    type: string
    sql: ${TABLE}.refsource ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: tags {
    hidden: yes
    sql: ${TABLE}.tags ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
}

# The name of this view in Looker is "Nvd Cve References Reference Data Tags"
view: nvd__cve__references__reference_data__tags {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Nvd Cve References Reference Data Tags" in Explore.

  dimension: nvd__cve__references__reference_data__tags {
    type: string
    sql: nvd__cve__references__reference_data__tags ;;
  }
}

# The name of this view in Looker is "Nvd Configurations Nodes Children"
view: nvd__configurations__nodes__children {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: cpe_match {
    hidden: yes
    sql: ${TABLE}.cpe_match ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Negate" in Explore.

  dimension: negate {
    type: yesno
    sql: ${TABLE}.negate ;;
  }

  dimension: operator {
    type: string
    sql: ${TABLE}.operator ;;
  }
}

# The name of this view in Looker is "Nvd Cve Description Description Data"
view: nvd__cve__description__description_data {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Lang" in Explore.

  dimension: lang {
    type: string
    sql: ${TABLE}.lang ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

# The name of this view in Looker is "Nvd Configurations Nodes Cpe Match"
view: nvd__configurations__nodes__cpe_match {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cpe23 URI" in Explore.

  dimension: cpe23_uri {
    type: string
    sql: ${TABLE}.cpe23Uri ;;
  }

  dimension: version_end_excluding {
    type: string
    sql: ${TABLE}.versionEndExcluding ;;
  }

  dimension: version_end_including {
    type: string
    sql: ${TABLE}.versionEndIncluding ;;
  }

  dimension: version_start_excluding {
    type: string
    sql: ${TABLE}.versionStartExcluding ;;
  }

  dimension: version_start_including {
    type: string
    sql: ${TABLE}.versionStartIncluding ;;
  }

  dimension: vulnerable {
    type: yesno
    sql: ${TABLE}.vulnerable ;;
  }
}

# The name of this view in Looker is "Nvd Configurations Nodes Children Cpe Match"
view: nvd__configurations__nodes__children__cpe_match {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cpe23 URI" in Explore.

  dimension: cpe23_uri {
    type: string
    sql: ${TABLE}.cpe23Uri ;;
  }

  dimension: version_end_excluding {
    type: string
    sql: ${TABLE}.versionEndExcluding ;;
  }

  dimension: version_end_including {
    type: string
    sql: ${TABLE}.versionEndIncluding ;;
  }

  dimension: version_start_excluding {
    type: string
    sql: ${TABLE}.versionStartExcluding ;;
  }

  dimension: version_start_including {
    type: string
    sql: ${TABLE}.versionStartIncluding ;;
  }

  dimension: vulnerable {
    type: yesno
    sql: ${TABLE}.vulnerable ;;
  }
}

# The name of this view in Looker is "Nvd Cve Problemtype Problemtype Data Description"
view: nvd__cve__problemtype__problemtype_data__description {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Lang" in Explore.

  dimension: lang {
    type: string
    sql: ${TABLE}.lang ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}
