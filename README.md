# AWS-Landing-Zone
Deploy AWS Landing Zone using terraform.
In this project, we will use terraform to trigger the enterprise setup of multi account structure called AWS Landing zone. 
The deployment will be done via an automated pipeline which will include jenkins as the CI CD tool.
Jenkins will then provision infrastructure components on AWS account.
Steps to follow
1.) Create a Linux jenkins machine with IAM role to execute landing zone services
2.) Install terraform on Jenkins machine
3.) Create jenkins pipeline to execute the terraform code in the repo
4.) Terraform code will trigger AWS CFT resource for AWS Landing zone
5.) Change the data in variable file for new landing zone deployment
