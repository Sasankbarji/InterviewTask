# InterviewTask

## Summary:

These Terraform Scripts will create the below mentioned infra

- GKE Cluster with 3 Nodes in 3 AZs in a single region
- Install Apache-Airflow using Helm Chart 
- Expose the Airflow Web App on Ingress 

## Prerequities

Below dependencies should be installed on the host machine
- Google SDK (gcloud) 
- terraform
- helm

Clone the Repository InterviewTask

    git clone https://github.com/Sasankbarji/InterviewTask.git

Login to Google Cloud using below command 

    gcloud auth login

Download Sercvice Account Key form GCP Console

Export Google Application Credentials

    export GOOGLE_APPLICATION_CREDENTIALS="<path to gcp keys>/gcp_keys.json"

Initialise the Terraform

    terraform init

Plan the Terraform

    terraform plan

Apply the Terraform

    terraform apply

To download the Kube config use the below command 

    gcloud container clusters get-credentials  k8s-task-cluster --region us-central1

