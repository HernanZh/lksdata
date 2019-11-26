view: campaigns {
  sql_table_name: tenjin.campaigns ;;
  drill_fields: [remote_campaign_id]

  dimension: remote_campaign_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.remote_campaign_id ;;
  }

  dimension: ad_network_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ad_network_id ;;
  }

  dimension: app_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.app_id ;;
  }

  dimension: campaign_bucket_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.campaign_bucket_id ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: oldest_date {
    type: date
    sql:  MIN(${updated_date});;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      remote_campaign_id,
      name,
      ad_networks.id,
      ad_networks.name,
      apps.id,
      apps.name,
      campaign_buckets.id,
      campaign_buckets.name,
      ad_engagements.count,
      campaigns_targeting_tags.count,
      cohort_behavior.count,
      daily_behavior.count,
      daily_country_spend.count,
      daily_spend.count,
      reporting_cohort_metrics.count,
      reporting_metrics.count,
      user_attributes.count
    ]
  }
}
