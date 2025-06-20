This is a `lua` structured neovim env. 

------
* To solve the problem of MarkdownPreview
When I type `:MarkdownPreview`, it shows `Pre build and node is not found`.  
Solutions:  

0. Install docker
```
sudo apt update

# Install a few prerequisite packages
sudo apt install apt-transport-https ca-certificates curl software-properties-common

# Add the GPG key for the official Docker repository to your system
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"


```
1. Install `Node.js`  
1.1 Download and install the newest version of Node.js from the [Official Website](nodejs.org/en)
```
docker pull node:22-alpine

# Create a Node.js container and start a Shell session
docker run -it --rm --entrypoint sh node:22-alpine

# Verify the Node.js version
node -v

# Verify npm version
npm -v
```
1.2 Install Yarn
```
npm install -g yarn
yarn -v
```
### 20250620  
The markdownpreview is finally fixed when I run `:call mkdp#util#install()`
