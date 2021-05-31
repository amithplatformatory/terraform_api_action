#
# Domain Setup
#

resource "aws_api_gateway_domain_name" "second" {
  domain_name              = aws_acm_certificate.second.domain_name
  regional_certificate_arn = aws_acm_certificate.second.arn

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}

resource "aws_api_gateway_base_path_mapping" "second" {
  api_id      = aws_api_gateway_rest_api.second.id
  domain_name = aws_api_gateway_domain_name.second.domain_name
  stage_name  = aws_api_gateway_stage.second.stage_name
}
