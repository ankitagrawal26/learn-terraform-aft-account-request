module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ankit.agrawal+test1@birlasoft.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "testing1"
    SSOUserEmail              = "ankit.agrawal+test1@birlasoft.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT11"
  }

  change_management_parameters = {
    change_requested_by = "Birlasoft Team"
    change_reason       = "Previous are not working"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
