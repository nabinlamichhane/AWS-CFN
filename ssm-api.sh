#/bin/bash
echo "Executing Pre-API Helpers"
export LW_ACCOUNT=$(aws ssm get-parameter --name "/cdk-bootstrap/hnb659fds/version" --query "Parameter.Value" --output text)
export LW_API_KEY=$(aws ssm get-parameter --name "/las-workspace/branchname" --query "Parameter.Value" --output text)
export LW_API_SECRET=$(aws ssm get-parameter --name "/swiggy/dev/cp-controller/CPBLACKLISTEDCLIENTS_TABLE_ARN" --query "Parameter.Value" --output text)
