# Play Terraform Cloud

Playing around with Terraform for educational purposes.

## Setup
1. Set up [LocalStack](https://github.com/localstack/localstack) on a VPS.
2. Put the [LocalStack](https://github.com/localstack/localstack) instance behind a reverse proxy with SSL termination and basic authentication.
3. Copy `proxy/sample.env` to `proxy/.env`.
4. Edit `proxy/.env` by setting `CUSTOM_CRED_BASIC_AUTH` to the Base64-encoded basic authentication token of the reverse proxy in front of [LocalStack](https://github.com/localstack/localstack).
5. Edit `proxy/.env` by setting `CUSTOM_URL_AWS` to the domain, where the [LocalStack](https://github.com/localstack/localstack) instance is hosted on.
6. `cd proxy ; docker-compose up -d`
7. Iterate through exemplary Terraform lifecycle.
    ```
    #!/bin/bash
    file_tfplan="first.tfplan"
    terraform init
    terraform validate
    terraform fmt
    terraform plan "-out=${file_tfplan}"
    terraform apply "${file_tfplan}"
    terraform state list
    terraform destroy
    ```

## License
Copyright © 2024  Daniel Braniewski

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.