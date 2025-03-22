bucket_name = "dev-proj-1-remote-state-bucket"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-eu-central-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
eu_availability_zone = ["eu-central-1a", "eu-central-1b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDA8phGUBsdKEprqZrMAQ4lgNZdsz7ynV1TwHMJ3XtvaZ8x33jJ+F8Ya70P61f2Z0zOxyqyJO6A2M4an3byfOFmKxXPM4PDiNrlapi5vJcXKlmkuoxNvtZ6JCfM+hp+FAmJtxAlb2sNjHkhjgQcC/A/nA0CnIBKW+zk+cU4p/R/LbdwRZYeFHi/co5d6qb12OReMuxY8pVCLAyQ1YG2Y3hOnCWtBBdimnNWBSW5WapGHDsJfI5eAKtFQwkb+8qA/ak/zgk/xVzoVl5hJYAcd6RHJ0ScWu4kDgqiLArBoCasgMFUVcivBndq+5/RyYL5eKiIQ6z+VyR48Bm/ijo5EODX"
ec2_ami_id     = "ami-06dd92ecc74fdfb36"

ec2_user_data_install_apache = ""

domain_name = "jenkins.3.250.187.135.nip.io"
