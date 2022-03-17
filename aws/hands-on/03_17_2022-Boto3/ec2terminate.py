import boto3
ec2 = boto3.resource('ec2')
ec2.Instance('i-03ca11be09f49983f').terminate()