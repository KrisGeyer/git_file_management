variable "file_map" {
  type = map(
    map(
      object({
        links = map(object({
          link : string,
          type : string
        }))
      })
    )
  )

  description = <<EOT
  This variable is intended to generte empty files across directories.
    An example of the structure of the variable is as follows:
        terraform_concept (e.g: IaC Concepts): {
            sub_component (e.g.: IaC Patterns): {
                links[title] = {
                    type = string
                    link = string
                }
                documentation = []
                tutorial = []
            }
        }
    EOT
}
variable "repo_name" {
  type = string
}

variable "landing_branch_name" {
    type = string
    default = "landing"
}

variable "notes_root_folder" {
  type    = string
}