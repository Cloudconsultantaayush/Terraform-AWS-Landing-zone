resource "aws_cloudformation_stack" "network" {
  name = var.landing_zone_stack
  capabilities = ["CAPABILITY_NAMED_IAM"]
  parameters = {
    SharedServicesAccountEmail = var.SharedServicesAccountEmail,
    LoggingAccountEmail = var.LoggingAccountEmail,
    SecurityAccountEmail = var.SecurityAccountEmail,
    CoreOUName = var.CoreOUName
    NonCoreOUNames = var.NonCoreOUNames
    SecurityAlertEmail = var.SecurityAlertEmail
    AllChangeEventsEmail = var.AllChangeEventsEmail
    VPCOptions = var.VPCOptions
    VPCCidr = var.VPCCidr
    NotificationAddonsEmailParameter = var.NotificationAddonsEmailParameter
    PipelineApprovalEmail = var.PipelineApprovalEmail
  }
  template_url = var.script_url
}
