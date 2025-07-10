variable resource_group_name {
    type = string
    default = "flask"
    description = "Resource group name"
}

variable resource_group_location {
    type = string
    default = "UK South"
    description = "Resource group location"
}

variable container_registry_name {
    type = string
    default = "flask"
    description = "Container registry name"
}

variable cluster_name {
    type = string
    default = "flask_p"
    description = "aks cluster name"
}



