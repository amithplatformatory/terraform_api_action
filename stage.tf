#
# Stage and Stage Settings
#

resource "aws_api_gateway_stage" "second" {
  deployment_id = aws_api_gateway_deployment.second.id
  rest_api_id   = aws_api_gateway_rest_api.second.id
  stage_name    = "second"
}

resource "aws_api_gateway_method_settings" "second" {
  rest_api_id = aws_api_gateway_rest_api.second.id
  stage_name  = aws_api_gateway_stage.second.stage_name
  method_path = "*/*"

  settings {
    metrics_enabled = true
  }
}
