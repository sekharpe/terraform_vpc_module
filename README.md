### algorith to create VPC
* create VPC
* Create an internet gate way and attach
* create all subnets
* create routes
* associate with subnet
* create elastic ip
* create NAT Gateway
* add nat gateway route in private and database subnet
* peering connection
* routes


### AWS VPC MODULE
this module creates following resources. we qre using high availability.. we are getting first 2 AZ
* vpc
* internet gateway with vpc association
* 2 public subnets in 1a and 1b
* 2 private subnets in 1a and 1b
* 2 database subnets in 1a and 1b
* Elastic Ip
* NAT Gate way in 1a public subnet
* public route table
* private route table
* database route table
* subnets and route table association
* vpc peering if user requests
* adding the peering routr to default vpc, if user dont provide acceptor vpc explicitly
* adding the peering routes in public, private and database route tables

### INPUTS
* project_name (required) -- your project name
* environment (required) -- which environment you are working
* vpc_cidr (optional) --- default value is 10.0.0.0/16 , user can over ride
* enable_dns_hostname (optional) ---- default value is true
* common_tags (optional) --- better to provide
* vpc_tags (optional) --- default value is empyy and type is map
* igw_tags (optional)  --- default value is empyy and type is map
* public_subnets_cidr (required) --- user must provide two valid public subnet cidr
* public_subnet_tags (optional) --- default value is empyy and type is map
* private_subnets_cidr (required) --- user must provide two valid private subnet cidr
* private_subnet_tags (optional) --- default value is empyy and type is map
* database_subnets_cidr (required) --- user must provide two valid database subnet cidr
* database_subnet_tags (optional) --- default value is empyy and type is map
* natgateway_tags (optional) --- default value is empyy and type is map
* public_route_table_tags (optional) --- default value is empyy and type is map
* private_route_table_tags (optional) --- default value is empyy and type is map
* database_route_table_tags (optional) --- default value is empyy and type is map
*  is_peering_required (optional) --- default value is false
* acceptor_vpc_id (optional) --- default value is default vpc id

### OUTPUTS
* vpc_id -- VPC ID created
* public_subnet_ids --- 2 public subnet ids created
* private_subnet_ids --- 2 private subnet ids created
* database_subnet_ids --- 2 database subnet ids created

