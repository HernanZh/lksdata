view: mopub_ad_impressions {
  sql_table_name: tenjin.mopub_ad_impressions ;;

  dimension: adgroup_id {
    type: string
    sql: ${TABLE}.adgroup_id ;;
  }

  dimension: adgroup_name {
    type: string
    sql: ${TABLE}.adgroup_name ;;
  }

  dimension: adgroup_priority {
    type: number
    sql: ${TABLE}.adgroup_priority ;;
  }

  dimension: adgroup_type {
    type: string
    sql: ${TABLE}.adgroup_type ;;
  }

  dimension: adunit_format {
    type: string
    sql: ${TABLE}.adunit_format ;;
  }

  dimension: adunit_id {
    type: string
    sql: ${TABLE}.adunit_id ;;
  }

  dimension: adunit_name {
    type: string
    sql: ${TABLE}.adunit_name ;;
  }

  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }

  dimension: app_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.app_id ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }

  dimension: bundle_id {
    type: string
    sql: ${TABLE}.bundle_id ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: developer_device_id {
    type: string
    sql: ${TABLE}.developer_device_id ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: impression_country {
    type: string
    sql: ${TABLE}.impression_country ;;
  }

  dimension: impression_id {
    type: string
    sql: ${TABLE}.impression_id ;;
  }

  dimension: limit_ad_tracking {
    type: yesno
    sql: ${TABLE}.limit_ad_tracking ;;
  }

  dimension: network_name {
    type: string
    sql: ${TABLE}.network_name ;;
  }

  dimension: network_placement_id {
    type: string
    sql: ${TABLE}.network_placement_id ;;
  }

  dimension: os_version {
    type: string
    sql: ${TABLE}.os_version ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: publisher_revenue {
    type: number
    sql: ${TABLE}.publisher_revenue ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: revenue_precision {
    type: string
    sql: ${TABLE}.revenue_precision ;;
  }

  dimension: sdk_version {
    type: string
    sql: ${TABLE}.sdk_version ;;
  }

  dimension: source_uuid {
    type: string
    sql: ${TABLE}.source_uuid ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  measure: count {
    type: count
    drill_fields: [adunit_name, network_name, adgroup_name, apps.id, apps.name]
  }
}
