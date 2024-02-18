variable "name" { type = string }
variable "namespace" { type = string }
variable "path" { type = string }
variable "vault" { type = string }

variable "static_path" {
  default = false
  type    = bool
}