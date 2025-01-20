resource "google_storage_bucket" "bucket" {
  name                        = var.bucket_name 
  location                    = var.bucket_location
  uniform_bucket_level_access = true
}



resource "google_dialogflow_cx_agent" "full_agent" {
  display_name            = "minimal-agent"
  default_language_code   = "en" 
  time_zone               = "Europe/Berlin" # Oder deine Zeitzone
  location		  = var.agent_location 
  git_integration_settings {
    github_settings {
      display_name    = "baumilicious/dialogflow-agent-demo-1"
      repository_uri  = "https://api.github.com/repos/baumilicious/dialogflow-agent-demo-1"
      tracking_branch = "main" 
      access_token    = var.dialogflow_cx_github_token
      branches        = ["main"]
    }
  }

}

#resource "google_discovery_engine_data_store" "example" {
#  provider                  = google-beta
#  location                  = "global" #  Must match the agent's location
#  data_store_id             = "dialogflowcx-data-store-sdasdas2323y1212"
#  display_name              = "My Dialogflow CX Data Store"
#  industry_vertical         = "GENERIC"
#  content_config            = "NO_CONTENT"
#  solution_types            = ["SOLUTION_TYPE_SEARCH"] # Required for use with Dialogflow CX
#
#}
