view: targeting_tags {
  sql_table_name: tenjin.targeting_tags ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }

  dimension: standard {
    type: yesno
    sql: ${TABLE}.standard ;;
  }

  measure: count {
    type: count
    drill_fields: [id, campaigns_targeting_tags.count]
  }
}
