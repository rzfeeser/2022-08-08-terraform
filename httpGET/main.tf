# The following example shows how to issue an HTTP GET request supplying
# an optional request header.
data "http" "example" {
  url = "http://0.0.0.0:8086/spock"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}


data "http" "iss" {
  url = "http://api.open-notify.org/astros.json"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}
