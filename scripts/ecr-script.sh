# Variables
STAGE=${1:-'dev'}   
ECR_REPO_NAME=jcfernandezpr-webpage-docker-repo
AWS_REGION=us-east-1

# Create ECR repository
aws ecr create-repository --repository-name $ECR_REPO_NAME-$STAGE --region $AWS_REGION