output "api_id" {
  value = aws_apigatewayv2_api.gateway.id
}

output "invoke_url" {
  value = aws_apigatewayv2_stage.stage.invoke_url
}

output "stage_id" {
  value = aws_apigatewayv2_stage.stage.id
}