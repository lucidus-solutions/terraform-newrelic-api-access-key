resource "newrelic_api_access_key" "this" {
  name        = "${local.stack}-ingest-license-key"
  account_id  = var.account_id
  key_type    = var.key_type
  ingest_type = var.ingest_type
  notes       = "Ingest key to receive data from cloud platforms"
}
