variable "size_of_database" {
  description = "specify size of database"
  type        = string
  default     = 20
}
variable "engine_for_database" {
  description = "specify engine for database ex. mysql/postgresql/sqlserver etc"
  type        = string
  default     = "mysql"
}
variable "engine_version" {
  description = "version of database engine"
  type        = string
  default     = "5.7"
}
variable "instance_class" {
  description = "class of your instance ex. t2.micro, t3.micro etc"
  type        = string
  default     = "db.t2.micro"
}
variable "name" {
  description = "name of database"
  type        = string
  default     = "testing"
}
variable "username" {
  description = "username for database"
  type        = string
  default     = "admin"
}

variable "password" {
  description = "password for database"
  type        = string
}
variable "skip_final_snapshot" {
  description = "if you want to take skip final snap short at the time of database deletion"
  type        = bool
  default     = true
}