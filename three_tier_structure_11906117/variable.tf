variable "region" {
  description = "Name of the region"
  type        = string
  default     = "us-east-1"
}

# VPC variables
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "aws-vpc"
}

variable "vpc_cidr" {
  description = "range of the vpc cidr"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "List of AZs"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "vpc_public_subnets" {
  description = "public subnet"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
}

variable "vpc_private_subnets" {
  description = "private subnet"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "vpc_database_subnets" {
  description = "database subnet"
  type        = list(string)
  default     = ["10.0.21.0/24", "10.0.22.0/24", "10.0.23.0/24"]
}

# Auto scaling variables

variable "asg_sg_name" {
  description = "autoscaling group security group"
  type        = string
  default     = "ashish-asg"
}

variable "asg_sg_description" {
  description = "Description of the autoscaling group security group"
  type        = string
  default     = "ashish-asg"
}

variable "asg_name" {
  description = "Name of the autoscaling group"
  type        = string
  default     = "ashish-asg"
}

variable "asg_min_size" {
  description = "Auto scaling minimum size"
  type        = number
  default     = 0
}

variable "asg_max_size" {
  description = "Auto scaling maximum size"
  type        = number
  default     = 1
}

variable "asg_desired_capacity" {
  description = "Auto scaling desired capacity"
  type        = number
  default     = 1
}

variable "asg_wait_for_capacity_timeout" {
  description = "Auto scaling wait for capacity timeout"
  type        = number
  default     = 0
}

variable "asg_health_check_type" {
  description = "Auto scaling health check type"
  type        = string
  default     = "EC2"
}

variable "asg_launch_template_name" {
  description = "autoscaling group launch template"
  type        = string
  default     = "ashish-lt"
}

variable "asg_launch_template_description" {
  description = "autoscaling group security group"
  type        = string
  default     = "ashish-lt"
}

variable "asg_update_default_version" {
  description = "Auto scaling group update default version"
  type        = bool
  default     = true
}

variable "asg_image_id" {
  description = "Auto scaling group image id"
  type        = string
  default     = "ami-06e46074ae430fba6"
}

variable "asg_instance_type" {
  description = "Auto scaling group instance type"
  type        = string
  default     = "t3.micro"
}

variable "asg_ebs_optimized" {
  description = "Auto scaling group ebs optimized"
  type        = bool
  default     = true
}

variable "asg_enable_monitoring" {
  description = "Auto scaling group enable monitoring"
  type        = bool
  default     = true
}

variable "asg_create_iam_instance_profile" {
  description = "Auto scaling group create iam instance profile"
  type        = bool
  default     = true
}

variable "asg_iam_role_name" {
  description = "Auto scaling group iam role name"
  type        = string
  default     = "ashish-asg-iam-role"
}

variable "asg_iam_role_path" {
  description = "Auto scaling group iam role path"
  type        = string
  default     = "/ec2/"
}

variable "asg_iam_role_description" {
  description = "Auto scaling group iam role description"
  type        = string
  default     = "ashish-asg-iam-role"
}

variable "asg_block_device_mappings_volume_size_0" {
  description = "Auto scaling group block device mapping volume size 0"
  type        = number
  default     = 20
}

variable "asg_block_device_mappings_volume_size_1" {
  description = "Auto scaling group block device mapping volume size 1"
  type        = number
  default     = 30
}

# application load balancer variables
variable "alb_sg_name" {
  description = "Application load balancer security group name"
  type        = string
  default     = "ashish-alb"
}

variable "alb_sg_ingress_cidr_blocks" {
  description = "Application load balancer cidr blocks"
  type        = list(any)
  default     = ["0.0.0.0/0"]
}

variable "alb_sg_description" {
  description = "Application load balancer security group description"
  type        = string
  default     = "ashish-alb"
}

variable "alb_description" {
  description = "Application load balancer description"
  type        = string
  default     = "ashish-alb"
}

variable "alb_name" {
  description = "Application load balancer name"
  type        = string
  default     = "ashish-alb"
}

variable "alb_http_tcp_listeners_port" {
  description = "Application load balancer http listeners port"
  type        = number
  default     = 80
}

variable "alb_target_group_name" {
  description = "Application load balancer target group name"
  type        = string
  default     = "ashish-alb-tg"
}

variable "alb_target_groups_backend_port" {
  description = "Application load balancer http listeners port"
  type        = number
  default     = 80
}

# RDS variables
variable "rds_sg_name" {
  description = "RDS security group name"
  type        = string
  default     = "ashish-rds"
}

variable "rds_sg_description" {
  description = "Relational database service security group description"
  type        = string
  default     = "ashish-rds"
}

variable "rds_identifier" {
  description = "Relational database service identifier"
  type        = string
  default     = "ashish-rds"
}

variable "rds_mysql_engine" {
  description = "Relational database service mysql engine"
  type        = string
  default     = "mysql"
}

variable "rds_engine_version" {
  description = "Relational database service mysql engine version"
  type        = string
  default     = "8.0.27"
}

variable "rds_family" {
  description = "Relational database service family"
  type        = string
  default     = "mysql8.0"
}

variable "rds_major_engine_version" {
  description = "Relational database service major engine version"
  type        = string
  default     = "8.0"
}

variable "rds_instance_class" {
  description = "Relational database service instance class"
  type        = string
  default     = "db.t2.small"
}

variable "rds_allocated_storage" {
  description = "Relational database service allocated storage"
  type        = number
  default     = 20
}

variable "rds_max_allocated_storage" {
  description = "RDS max allocated storage"
  type        = number
  default     = 100
}

variable "rds_db_name" {
  description = "RDS db name"
  type        = string
  default     = "ashish_mysql"
}

variable "rds_username" {
  description = "RDS username"
  type        = string
  default     = "ashish_user"
}

variable "rds_port" {
  description = "RDS port"
  type        = number
  default     = 3306
}

variable "rds_multi_az" {
  description = "RDS multi az"
  type        = bool
  default     = false
}

variable "rds_maintenance_window" {
  description = "RDS maintenance window"
  type        = string
  default     = "Mon:00:00-Mon:03:00"
}

variable "rds_backup_window" {
  description = "RDS backup window"
  type        = string
  default     = "03:00-06:00"
}

variable "rds_enabled_cloudwatch_logs_exports" {
  description = "RDS enabled cloudwatch log exports"
  type        = list(any)
  default     = ["general"]
}

variable "rds_create_cloudwatch_log_group" {
  description = "RDS create cloudwatch log group"
  type        = bool
  default     = true
}

variable "rds_backup_retention_period" {
  description = "RDS backup retention period"
  type        = number
  default     = 0
}

variable "rds_skip_final_snapshot" {
  description = "RDS skip final snapshot"
  type        = bool
  default     = true
}

variable "rds_deletion_protection" {
  description = "RDS deletion protection"
  type        = bool
  default     = false
}

variable "rds_performance_insights_enabled" {
  description = "RDS insights enabled"
  type        = bool
  default     = false
}

variable "rds_performance_insights_retention_period" {
  description = "RDS retention period"
  type        = number
  default     = 7
}

variable "rds_create_monitoring_role" {
  description = "RDS create monitoring role"
  type        = bool
  default     = true
}

variable "rds_monitoring_interval" {
  description = "RDS monitoring interval"
  type        = number
  default     = 60
}
