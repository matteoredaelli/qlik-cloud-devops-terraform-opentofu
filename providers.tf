
provider "restapi" {
  alias                = "qlik_saas"
  uri                  = "${var.QLIK_URI}"
  debug                = true
  write_returns_object = true

  headers = {
      Authorization = "Bearer ${var.QLIK_APIKEY}"
      "Content-Type" = "application/json"
  }
}
