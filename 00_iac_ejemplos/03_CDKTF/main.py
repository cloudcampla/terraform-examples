from constructs import Construct
from cdktf import App, TerraformStack
from imports.aws.provider import AwsProvider
from imports.aws.s3_bucket import S3Bucket

class MyStack(TerraformStack):
    def __init__(self, scope: Construct, ns: str):
        super().__init__(scope, ns)

        # Define AWS provider using the AwsProvider class
        AwsProvider(self, "AWS", region="us-east-1")

        # Define an S3 bucket using the S3Bucket class
        S3Bucket(self, "MyBucket",
                 bucket="cloud-camp-bucket-tests",
                 acl="private"
                 )

app = App()
MyStack(app, "my-cdktf-project")

app.synth()
