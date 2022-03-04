# finops-cloudwatch-tagging

Tagging your cloud resource is an essential FinOps practice, that we as FinOps Consultants always in favor for, especially for Cloud Cost Allocation.
Here we explain more the importance of tagging your cloud resources, : https://liquidreply.net/what-the-tag
Since tagging Cloudwatch resources can not be done through AWS console, and the only way to do so, is through using 
either CLI or API.
We had created a simple bash script that can be used in order to tag any cloudwatch resource simply through your CLI.

How the script works?

- Please make sure to install AWS CLI tool: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
- Once you had managed to install the AWS CLI tool at your local machine, run the bash script using: 
```
bash cloudwatch-tag.sh
```
- The script that will start configuring the profile, asking for Access Key ID and Secret Key ID, as well as the region these Cloudwatch are provisioned at. 
- Once you these data, it would ask for the arn (Amazon Resource Name) of which resource you would like to tag .i.e. an alarm, metric,..etc
- Afterwards, It would then ask for the key of the tag, as well the value of that tag .i.e. Key=namespace, Value=finance
- Lastly, the script will list the tags current assigned to that designated resource. 

