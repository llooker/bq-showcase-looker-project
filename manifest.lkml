project_name: "bq_demo"


application: bq_demo {
  label: "BigQuery Demo"
  # file: "bundle.js"
  url: "http://localhost:8080/bundle.js"
  # url: "https://develop.open.extension.looker.com:8080/bundle.js"
  entitlements: {
    # use_form_submit: yes
    # use_embeds: yes
    allow_forms: yes
    allow_same_origin: yes
    core_api_methods: ["create_query",
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
      "all_boards"
    ]
  }
}
