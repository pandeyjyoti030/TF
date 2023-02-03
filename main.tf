resource "local_file" "foo" {
  filename = "${random_id.random-file-name.dec}.html"
  content = "first file"
}

resource "local_file" "bar" {
  filename = "file2.txt"
  content = local.content_fr_files
}

resource "local_file" "get" {
  filename = var.var_filename
  content = var.var_content
}

locals {
  content_fr_files = "this content can be used anywhere"
}

//RANDOM
 resource "random_id" "random-file-name"{
    //to use random id "$" is used eg. resource local file foo
    byte_length=8
  }

 //MAP
  resource "local_file" "newfilemap" {
  filename = var.practice_map["filename"]
  content = var.practice_map["content"]
}

//LIST
resource "local_file" "newlist" {
  filename = var.a[2]
  content = "using list"
}

//OBJECT
resource "local_file" "newobject" {
  filename = var.obj["f-name"]
  content = var.obj["con"]
}

# //OUTPUT
#  output "content-from-bar" {
#    value = local_file.bar.content
#  }

#  output "content-from-bar2" {
#    value = local_file.bar.filename
#  }

//BOOLEAN
resource "local_file" "bleh" {
  filename = var.for-bool
  content  = var.var-bool  
}

//NUMBER
resource "local_file" "arigato" {
  filename = var.numfile
  content  = var.varnum
}