# $$\color{green}{\textbf Project: 🎮 \color{red} \textbf {Super} \ \color{orange} \ \textbf Mario  \ \textbf Bros 🍄🐢}$$
##  $\color{blue} \textbf {Project  Workflow}$
## Step 1: Launch instance using 2 cpu and 4 GB memory and Connect Ec2 instance 
````
sudo apt update
````
### $\color{red} \textbf {install and start using Docker}$ 
````
sudo apt install docker .io
sudo systemctl start docker
sudo usermod -aG docker ubuntu
newgrp docker
docker --version
````
![Screenshot 2024-11-25 152933](https://github.com/user-attachments/assets/a6c0109e-75f2-4e57-bdcc-0f9cf21f65d5)
### $\color{red} \textbf {install and terraform}$
````
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update
sudo apt-get install terraform
terraform --version

````
![Screenshot 2024-11-25 153003](https://github.com/user-attachments/assets/8e313184-69a8-43db-abc0-0d2cee32adbe)
### $\color{red} \textbf {install aws cli}$
````
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt install unzip 
unzip awscliv2.zip
sudo ./aws/install
aws --version
````
![Screenshot 2024-11-25 153035](https://github.com/user-attachments/assets/1aa0842c-79aa-4b2c-aae9-9aa8eadeea7e)
### $\color{red} \textbf {install kubectl}$
Download latest version with this command
````
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
````
**curl** is a command-line tool for transferring data from a server.
**-LO** -L: Follow redirects if the URL redirects to another location. -O: Save the file with its original name (in this case, kubectl).
**https://dl.k8s.io/release/$(...)** - The URL specifies where the kubectl binary is hosted.
**$(...)** - This is command substitution in Bash. It executes the command inside the parentheses and substitutes the output.
**curl -L -s https://dl.k8s.io/release/stable.txt** - This inner curl command fetches the latest stable Kubernetes version from the file stable.txt hosted on the Kubernetes server. The -s option makes it silent, so it suppresses unnecessary output.
**/bin/linux/amd64/kubectl** 
bin: Indicates it's a binary file. 
linux/amd64: Specifies the platform as Linux and the architecture as AMD64 (common for most modern 64-bit CPUs). 
kubectl: The Kubernetes command-line tool being downloaded.






