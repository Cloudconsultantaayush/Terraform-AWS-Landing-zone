#Enter the name of the Landing Zone Implementation 
variable "landing_zone_stack" {
  type = string
  description = "Enter the name of Landing Zone"
  default = "HCL-TF-Landing-Zone"
}
variable "AWS_REGION" {
  type = string
  description = "Enter the region syntax"
  default = "ap-south-1"
}
#Enter a non used email address for shared services core AWS account 
variable "SharedServicesAccountEmail" {
  type = string
  description = "Enter a non used email address"
  default = "SSdummyemail@hcl.com"
}
#Enter a non used email address for log archival core AWS account 
variable "LoggingAccountEmail" {
  type = string
  description = "Enter a non used email address"
  default = "Logdummyemail@hcl.com"
}
#Enter a non used email address for security core AWS account
variable "SecurityAccountEmail" {
  type = string
  description = "Enter a non used email address"
  default = "secdummyemail@hcl.com"
}
#Enter the name of the organizational unit for core accounts
variable "CoreOUName" {
  type = string
  description = "Enter a name for Core OU which will have Landing zone accounts"
  default = "Landingzone-CICD"
}
#Enter the name of the organizational unit for non-core accounts
variable "NonCoreOUNames" {
  type = string
  description = "Enter a name for OU which will have Spoke workload accounts"
  default = "App-CICD"
}
#Enter the email address for recieving security alerts
variable "SecurityAlertEmail" {
  type = string
  description = "Enter an email address for notifications"
  default = "aayush.arora@hcl.com"
}
#Enter the email address for recieving all changes to landing zone deployment
variable "AllChangeEventsEmail" {
  type = string
  description = "Enter an email address for notifications"
  default = "rohit.sharma@hcl.com"
}
variable "VPCOptions" {
  default = "Shared-Services-Network-3-AZs"
}
#Enter a valid CIDR of choice for shared services account VPC
variable "VPCCidr" {
  type = string
  description = "Enter a valid CIDR of choice for shared services account VPC"
  default = "192.168.0.0/26"
}

#Enter the email address for recieving all notifications
variable "NotificationAddonsEmailParameter" {
  type = string
  description = "Enter an email address for notifications"
  default = "aayush.arora@hcl.com"
}
#Enter an email address for pipeline approval
variable "PipelineApprovalEmail" {
  type = string
  description = "Enter an email address for pipeline approval"
  default = "aayush.arora@hcl.com"

}
#Do not touch this variable
variable "script_url"{
  default = "https://s3.amazonaws.com/solutions-reference/aws-landing-zone/latest/aws-landing-zone-initiation.template"
}
