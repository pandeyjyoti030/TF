 variable "var_filename"{
  type= string
  description="enter filename"
  default= "myfile.txt"
}

variable "var_content"{
  type= string
  description="enter content"
  default= "demo content"
}

//MAP
variable "practice_map" {
   type= map(string)
 }

//LIST
variable "a" {
  type = list(string)
}

//OBJECT
variable "obj" {
  type = object({
    f-name = string,
    con = string
  }
  )
}

//BOOLEAN
variable "for-bool" {
  type = string
  default = "new.txt"
}

variable "var-bool" {
type = bool
default = false
}

//NUMBER
variable "varnum"{
  type = number
 default= 4206930
}

variable "numfile"{
  type = string
 default= "mynum.txt"
}
