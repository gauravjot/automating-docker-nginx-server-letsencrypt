## Additional Workflow

This might differ for you. Always use latest version for your OS and packages. I was deploying a nodejs application in this workflow.

#### Setting up ~/html files

    sudo curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt install nodejs git
    git clone https://github.com/gauravjot/gauravjot.com.git
    cd gauravjot.com
    npm install
    npm run build
    mv -v /gauravjot.com/build/* ~/html/

#### Installing Docker

https://docs.docker.com/engine/install/ubuntu/

#### Useful

Bash into docker container

    sudo docker exec -it <cont_name> bash
