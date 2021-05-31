#
# Domain Setup
#

resource "aws_api_gateway_domain_name" "third" {
  domain_name              = aws_acm_certificate.third.domain_name
  regional_certificate_arn = aws_acm_certificate.third.arn

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}

resource "aws_api_gateway_base_path_mapping" "third" {
  api_id      = aws_api_gateway_rest_api.third.id
  domain_name = aws_api_gateway_domain_name.third.domain_name
  stage_name  = aws_api_gateway_stage.third.stage_name
}
