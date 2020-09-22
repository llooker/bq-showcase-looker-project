project_name: "bq_demo"


application: bq_demo {
  label: "BigQuery Demo"
  url: "http://localhost:8080/bundle.js"
  entitlements: {
    local_storage: yes
    navigation: yes
    new_window: yes
    allow_same_origin: yes
    core_api_methods: [
      "run_inline_query",
      "lookml_model_explore",
      "create_query"
    ]
  }
}
