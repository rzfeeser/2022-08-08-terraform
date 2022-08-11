# produces an output value named "spocks_wisdom"
output "spocks_wisdom" {
  description = "response from /spock api"
  value       = data.http.example.response_body
}


# produces an output value named "space_heroes"
output "space_heroes" {
  description = "API that documents folks in space"
  value       = data.http.iss.response_body
}
