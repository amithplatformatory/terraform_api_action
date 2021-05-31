#
# Stage and Stage Settings
#

resource "aws_api_gateway_stage" "third" {
  deployment_id = aws_api_gateway_deployment.third.id
  rest_api_id   = aws_api_gateway_rest_api.third.id
  stage_name    = "third"
}

resource "aws_api_gateway_method_settings" "third" {
  rest_api_id = aws_api_gateway_rest_api.third.id
  stage_name  = aws_api_gateway_stage.third.stage_name
  method_path = "*/*"

  settings {
    metrics_enabled = true
  }
}
