
include: "//saas/usage_views/*.view.lkml"
include: "//saas/sfdc_views/*.view.lkml"
include: "//saas/usage_views/derived_tables/*.view.lkml"
include: "//saas/sfdc_views/derived_tables/*.view.lkml"

connection: "looker-private-demo"

explore: event_logs_new {
  fields: [ALL_FIELDS*, -event_logs__log__cs_uri_stem.first_event,
    -event_logs__log__cs_uri_stem.second_event, -event_logs__log__cs_uri_stem.third_event,
    -event_logs__log__cs_uri_stem.fourth_event, -event_logs__log__cs_uri_stem.fifth_event, -event_logs__log__cs_uri_stem.last_event]
  from: event_logs
  hidden: yes
  view_label: "Events"
    ##unnest JSON fields
    join: event_logs__log {
      view_label: "Events"
      sql: LEFT JOIN UNNEST([${event_logs_new.log}]) as event_logs__log ;;
      relationship: one_to_one
    }
    join: event_logs__log__cs_uri_stem {
      view_label: "Events"
      sql: LEFT JOIN UNNEST([${event_logs__log.cs_uri_stem}]) as event_logs__log__cs_uri_stem ;;
      relationship: one_to_one
    }
    join: event_logs__log__cs_uri_query {
      view_label: "Events"
      sql: LEFT JOIN UNNEST([${event_logs__log.cs_uri_query}]) as event_logs__log__cs_uri_query ;;
      relationship: one_to_one
    }
    join: event_labels {
      view_label: "Events"
      relationship: many_to_one
      sql_on: ${event_labels.old_event_name} = ${event_logs__log__cs_uri_stem.event_type} and
        (${event_labels.old_uri}=${event_logs__log__cs_uri_query.uri} or ${event_labels.old_uri} is null) ;;
    }
    join: event_sessions {
      view_label: "Sessions"
      relationship: many_to_one
      sql_on: ${event_sessions.unique_session_id} = ${event_logs_new.session_id} ;;
    }
    join: event_session_facts {
      view_label: "Sessions"
      relationship: one_to_one
      sql_on: ${event_sessions.unique_session_id} = ${event_session_facts.unique_session_id} ;;
    }
    join: client {
      relationship: many_to_one
      fields: []
      sql_on: ${client.id} = ${event_logs_new.client_id} ;;
    }
    join: account {
      relationship: many_to_one
      view_label: "Account"
      sql_on: ${client.salesforce_account_id} = ${account.id} ;;
    }
  }
