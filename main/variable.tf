variable "rg_name" {
    default = "tech1"

    validation {
      condition = length(var.rg_name) > 4 && substr(var.rg_name, 0, 4)=="tech"
      error_message="the image_id value must be a valid and starting with \"tech\" and should be longer than 4 characters."
   }  
} 