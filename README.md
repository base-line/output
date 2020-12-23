# output
Terraform output example. As input similar example is used from [repo](https://github.com/base-line/random-pet) `random_pet`

## Pre-requirements
- [git](https://git-scm.com/downloads) need to be installed 
- [terraform](https://www.terraform.io/downloads.html) need to be installed 

## How to consume

```bash
git clone git@github.com:base-line/output.git
cd output
terraform init
terraform apply
```

## As result

similar to below output will be produce

```bash
Outputs:

pet_name = pre-uniquely-unduly-cheerful-duckling
```

as well can run `terraform show`

```bash
# random_pet.name:
resource "random_pet" "name" {
    id        = "pre-uniquely-unduly-cheerful-duckling"
    keepers   = {
        "key" = "value"
    }
    length    = 4
    prefix    = "pre"
    separator = "-"
}


Outputs:

pet_name = "pre-uniquely-unduly-cheerful-duckling"
```

## Destroy

destroy created infrastructure if need be

```
terraform destroy
```