resource "local_file" "pet-file" {
    filename = "/Users/bgpathak/Documents/terraform-demo/test/pet.txt"
    content = "I like ${random_pet.pet-name.id}"
}

resource "random_pet" "pet-name" {
    length  = 1
    separator = "."
    prefix = "Mr"
}
