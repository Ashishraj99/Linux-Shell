variable "ashish_domain_name" {
  type = string
  description = "Name of the domain"
}
variable "class" {
  type = string
  description = "Name of the class."
}
variable "region" {
    type = string
    default = "us-west-2"
}
variable "access_key" {
    type = string
    default = "Ashish"
}
variable "secret_key" {
    type = string
    description = "This is new secreste key"
}