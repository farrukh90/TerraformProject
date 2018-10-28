resource "aws_vpc" "main" {
	cidr_block = "10.0.0.0/16"
}
resource "aws_subnet" "artemis-private" {
	vpc_id = "artemis"         
	cidr_block = "10.0.0.1/24"
}

resource "aws_subnet" "artemis-public" {
	vpc_id = "artemis"
	cidr_block = "10.0.0.2/24"
}

resource "aws_internet_gateway" "artemis" {
	vpc_id = "artemis"
}

resource "aws_route_table" "artemis" {
	vpc_id = "artemis"

	route {
	   cidr_block  = "10.0.0.2/24"
	   gateway_id = "artemis.id"
  }
}




