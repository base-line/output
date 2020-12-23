resource "random_pet" "name" {
  length = 4
  prefix = "pre"
  separator = "-"
  keepers = {
    "key" = "value"
  }
}

output "pet_name" {
  description = "random pet name"
  value = random_pet.name.id
}