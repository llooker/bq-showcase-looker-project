project_name: "bq_demo"


application: bq_demo {
  label: "BigQuery Demo"
  # url: "http://localhost:8080/bundle.js"
  file: "bundle.js"
  # url: "https://develop.open.extension.looker.com:8080/bundle.js"
  entitlements: {
    # use_form_submit: yes
    # use_embeds: yes
    local_storage: yes
    allow_forms: yes
    allow_same_origin: yes
    core_api_methods: [
      "create_query",
      "query_for_slug",
      "all_dashboards",
      "all_looks",
      "search_content_favorites",
      "search_dashboards",
      "search_looks",
      "dashboard",
      "look",
      "me",
      "session",
      "all_connections",
      "all_lookml_models",
      "sql_query",
      "connection_schemas",
      "create_sql_query",
      "run_sql_query",
      "connection_cost_estimate",
      "all_boards",
      "board",
      "query",
      "run_look",

    ]
    new_window: yes
    new_window_external_urls: [
      "https://cloud.google.com",
      "https://console.google.com",
      "https://pantheon.corp.google.com"
    ]
    oauth2_urls: ["https://github.com/login/oauth/authorize", "https://github.com/login/oauth/access_token"]
    global_user_attributes: ["github_access_token"]
  }
}

remote_dependency: saas {
  url: "https://github.com/looker/saas_demo.git"
  ref: "master"
}
