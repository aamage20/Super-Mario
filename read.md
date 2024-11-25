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

**Validate the binary**
````
 curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
````
**Validate the kubectl binary against the checksum file**
````
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
````
**insatll Kubectl**
````
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
````
**If you do not have root access on the target system, you can still install kubectl to the ~/.local/bin directory:**
````
chmod +x kubectl
mkdir -p ~/.local/bin
mv ./kubectl ~/.local/bin/kubectl
````
````
kubectl version --client
````
![Screenshot 2024-11-25 153114](https://github.com/user-attachments/assets/0fbb09bb-78d0-49d2-8db1-94bd44024ab1)
### $\color{red} \textbf {Iam Role for EC2}$
**Create Role**
![Screenshot (564)](https://github.com/user-attachments/assets/45c281ae-d7a3-4bf7-95bd-f4c30bbc312b)
### $\color{red} \textbf {Attach Iam role to the EC2}$
**go to EC2 click on actions → security → modify IAM role option**
![Screenshot (565)](https://github.com/user-attachments/assets/fe9550e8-4253-4820-84e7-842bd97595b9)

![Screenshot (566)](https://github.com/user-attachments/assets/c3b65c5a-1ad4-4d8e-8a77-64db1d1ec08b)
### $\color{red} \textbf {Create S3 Bucket}$
![WhatsApp Image 2024-11-25 at 4 23 20 PM](https://github.com/user-attachments/assets/92075e18-f566-4052-9a2a-315c8493c723)



