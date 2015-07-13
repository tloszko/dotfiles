docker-ip(){
  boot2docker ip 2> /dev/null
}

docker-hosty(){
  echo $(docker-ip) dockerhost | sudo tee -a /etc/hosts
}
