# osdu-data-load-nz

Loading Data with New Zealand Petroleum Pack 2018 Well Data

This solution supports [GitHub Codespaces](https://github.com/features/codespaces) as preferred, however [VSCode Remote containers](https://code.visualstudio.com/docs/remote/containers) can be utilized assuming the host machine has enough resources allocated to Docker.  A custom container will be built with a post container build hook that will download the nz-data and copy files into a custom directory structure for the ingestion scripts to process.

The intended audience for loading data using Code Spaces or Remote Containers is a _Developer Persona_.

>Future capability will include [Azure Container Apps](https://docs.microsoft.com/en-us/azure/container-apps/overview) which is intended for an _Operations Persona_.

__Environment Variables__

Add environment variables to a `.envrc` file which will be auto loaded by [direnv](https://direnv.net) after execution of `direnv allow`.

```bash
export AZURE_TENANT=<your_azure_tenant>
export CLIENT_ID=<your_application_id>
export CLIENT_SECRET=<your_application_secret>
export NAME=<your_platform_name>
export DOMAIN=<your_domain_name>
export PARTITION=<your_partition_name>

export DATA_PARTITION=$NAME-$PARTITION
export OSDU_ENDPOINT=https://$NAME.$DOMAIN
export LEGAL_TAG=${DATA_PARTITION}-open-test-data
export LOGIN_ENDPOINT=https://login.microsoftonline.com/${AZURE_TENANT}/oauth2/v2.0/token
export SCOPE="$CLIENT_ID/.default openid profile offline_access"

export URL="https://login.microsoftonline.com/${AZURE_TENANT}/oauth2/v2.0/authorize?client_id=${CLIENT_ID}&response_type=code&redirect_uri=http%3a%2f%2flocalhost%3a8080&response_mode=query&scope=${CLIENT_ID}%2f.default&state=12345&sso_reload=true"

export REFRESH_TOKEN=<your_refresh_token>
```

__API access tokens__

A refresh token is used by loading scripts to request [OAuth2.0 access tokens](https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-oauth2-auth-code-flow).  The following code snippet can help retrieve a valid Refresh Token once a redirect url of `http://localhost:8080` has been added to a [Web Platform Configuration](https://docs.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app#add-a-redirect-uri) on the AD Application.

Add the retrieved refresh token to the `.envrc` file and allow variables to load using `direnv allow`.

```bash
# Open the following URL in a browser
echo $URL

# Set the Response from the Browser in a Variable
RESPONSE="<your_response>"

# Get REFRESH Token and set in in the .envrc file
REFRESH_TOKEN=$(curl --silent --request POST \
  --url https://login.microsoftonline.com/${AZURE_TENANT}/oauth2/v2.0/token \
  --header "content-type: application/x-www-form-urlencoded" \
  --data "grant_type=authorization_code" \
  --data "client_id=${CLIENT_ID}" \
  --data "client_secret=${CLIENT_SECRET}" \
  --data "code=$(echo $RESPONSE | cut -d "=" -f 2 | cut -d "&" -f 1)" \
  --data "scope=$CLIENT_ID/.default openid profile offline_access" \
  --data "redirect_uri=http%3A%2F%2Flocalhost%3a8080" | jq -r .refresh_token)

echo $REFRESH_TOKEN
```


## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft
trademarks or logos is subject to and must follow
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
