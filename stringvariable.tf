variable "stringvar" {
    type = string
    default = "Dasta"
}

output "myoutput" {
  value="${var.stringvar}" # --> myoutput       = "Dasta"
}

variable "numbervar" {
    type = number
    default = 10 
}

output "mynumberoutput" {
  value="${var.numbervar}" # # --> mynumberoutput = 10
}

variable "mylistvar"{
    type=list
    default=["aws","devops","azure","awsdevops"]
}

output "mylistoutput"{
    # value = "${var.mylistvar[0]}" --> aws
    # value = "${var.mylistvar[0]},${var.mylistvar[1]}" # output --> aws,devops
    value = "${var.mylistvar[0]},${var.mylistvar[1]},${var.mylistvar[2]}" # output --> aws,devops,azure
}

variable "mymapvariable" {
    type = map
    default = {
        "amazon" = "cicd,pipeline"
        "azcloud" = "vm,lb,fw,vnet"
    }
}

output "mymapoutput" {
  value="${var.mymapvariable["amazon"]}" #-->mymapoutput    = "cicd,pipeline"
}

variable "myobjectvariable" {
  type=object({course_name=string,duration=number})
  default = {
    course_name = "aws"
    duration = 6
  }
}

output "myobjoutput" {
  value="${var.myobjectvariable.course_name}" # -->myobjoutput    = "aws"
}

# Variable values during execution time

variable "stringvarde" {
    type = string
}

output "myoutputde" {
  value="${var.stringvarde}" # --> myoutputde     = "Dastagiri"
}

variable "stringvardes" {
    type = string
}

output "myoutputdes" {
  value="${var.stringvardes}" # --> myoutputde     = "Dastagiri"
}

