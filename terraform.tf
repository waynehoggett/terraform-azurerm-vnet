terraform {

  # cloud {
  #   organization = "WayneHoggett"
  #   workspaces {
  #     name = ""
  #   }
  # }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.42.0"
    }
  }
  required_version = ">= 1.3.7"
}