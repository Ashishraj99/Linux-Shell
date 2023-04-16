region = "us-east-1"

# VPC variables
vpc_name             = "aws-vpc"
vpc_cidr             = "10.0.0.0/16"
vpc_azs              = ["us-east-1a", "us-east-1b", "us-east-1c"]
vpc_public_subnets   = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
vpc_private_subnets  = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
vpc_database_subnets = ["10.0.21.0/24", "10.0.22.0/24", "10.0.23.0/24"]
vpc_tags             = { "created-by" = "terraform" }

# ASG variables
asg_sg_name                             = "ashish-asg"
asg_sg_description                      = "ashish-asg"
asg_name                                = "ashish-asg"
asg_min_size                            = 0
asg_max_size                            = 2
asg_desired_capacity                    = 2
asg_wait_for_capacity_timeout           = 0
asg_health_check_type                   = "EC2"
asg_launch_template_name                = "ashish-lt"
asg_launch_template_description         = "ashish-lt"
asg_update_default_version              = true
asg_image_id                            = "ami-06e46074ae430fba6"
asg_instance_type                       = "t3.micro"
asg_ebs_optimized                       = true
asg_enable_monitoring                   = true
asg_create_iam_instance_profile         = true
asg_iam_role_name                       = "ashish-asg-iam-role"
asg_iam_role_path                       = "/ec2/"
asg_iam_role_description                = "ashish-asg-iam-role"
asg_block_device_mappings_volume_size_0 = 20
asg_block_device_mappings_volume_size_1 = 30

# ALB variables
alb_sg_name                    = "ashish-alb"
alb_sg_ingress_cidr_blocks     = ["0.0.0.0/0"]
alb_sg_description             = "demo-alb-sg"
alb_name                       = "ashish-alb"
alb_http_tcp_listeners_port    = 80
alb_target_group_name          = "ashish-alb-tg"
alb_target_groups_backend_port = 80

# RDS variables
rds_sg_name                               = "ashish-rds"
rds_sg_description                        = "ashish-rds"
rds_identifier                            = "ashish-rds"
rds_mysql_engine                          = "mysql"
rds_engine_version                        = "8.0.27"
rds_family                                = "mysql8.0" # DB parameter group
rds_major_engine_version                  = "8.0"      # DB option group
rds_instance_class                        = "db.t2.small"
rds_allocated_storage                     = 20
rds_max_allocated_storage                 = 100
rds_db_name                               = "demo_mysql"
rds_username                              = "demo_user"
rds_port                                  = 3306
rds_multi_az                              = false
rds_enabled_cloudwatch_logs_exports       = ["general"]
rds_create_cloudwatch_log_group           = true
rds_backup_retention_period               = 0
rds_skip_final_snapshot                   = true
rds_deletion_protection                   = false
rds_performance_insights_enabled          = false
rds_performance_insights_retention_period = 7
rds_create_monitoring_role                = true
rds_monitoring_interval                   = 60