
resource "aws_apigatewayv2_api" "gateway" {
  name                         = var.api_name
  protocol_type                = "HTTP"
  disable_execute_api_endpoint = var.disable_execute_api_endpoint
  description                  = var.description

  dynamic "cors_configuration" {
    for_each = var.enable_cors ? [true] : []
    content {
      allow_credentials = var.allow_credentials
      allow_headers     = var.allow_headers
      allow_methods     = var.allow_methods
      allow_origins     = var.allow_origins
      expose_headers    = var.expose_headers
      max_age           = var.max_age
    }
  }
}

resource "aws_apigatewayv2_stage" "stage" {
  api_id      = aws_apigatewayv2_api.gateway.id
  name        = var.env
  auto_deploy = var.auto_deploy

  lifecycle {
    ignore_changes = [deployment_id]
  }
}

