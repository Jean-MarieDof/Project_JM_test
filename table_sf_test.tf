# provider block defines the provider, in this case Snowflake
provider "snowflake" {
  account = "myaccount"
  username = "myuser"
  password = "mypassword"
  role     = "myrole"
}

# resource block defines the Snowflake table
resource "snowflake_table" "example" {
  name           = "example_table"
  database       = "mydatabase"
  schema         = "myschema"
  columns = [
    {
      name = "id"
      type = "NUMBER(10,0)"
    },
    {
      name = "name"
      type = "VARCHAR(50)"
    },
    {
      name = "age"
      type = "NUMBER(3,0)"
    }
  ]
  comment = "Example table for Terraform"
}