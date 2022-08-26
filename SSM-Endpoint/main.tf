module "SSM-us-east-2-endpoint" {
  source = "../modules/aws-vpc-endpoint-mod"
  vpc_id = var.vpc_id

  endpoints = {
    "com.amazonaws.us-east-2.ssm" : {
      service_name       = "com.amazonaws.us-east-2.ssm"
      service_type       = "Interface"
      security_group_ids = [var.security_group_id]

      subnet_ids = [
        var.private-az2a,
        var.private-az2b,
      var.private-az2c]
      private_dns_enabled = true
      tags = merge(
        { "Name" : "Sample-SSM-us-east-2-Endpoint" }
      )
    },
    "com.amazonaws.us-east-2.ssmmessages" : {
      service_name       = "com.amazonaws.us-east-2.ssmmessages"
      service_type       = "Interface"
      security_group_ids = [var.security_group_id]

      subnet_ids = [
        var.private-az2a,
        var.private-az2b,
      var.private-az2c]
      private_dns_enabled = true
      tags = merge(
        { "Name" : "Sample-SSM-msg-us-east-2-Endpoint" }
      )
    },

    "com.amazonaws.us-east-2.ec2messages" : {
      service_name       = "com.amazonaws.us-east-2.ec2messages"
      service_type       = "Interface"
      security_group_ids = [var.security_group_id]

      subnet_ids = [
        var.private-az2a,
        var.private-az2b,
      var.private-az2c]
      private_dns_enabled = true
      tags = merge(
        { "Name" : "Sample-SSM-ec2msg-us-east-2-Endpoint" }
      )
    }
  }

}
