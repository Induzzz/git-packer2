terraform {
  backend "s3" {
    bucket = "shopp.induzz.terra"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
