#!/bin/bash

argsCount=$#
if [[ "$argsCount" == "2" ]]
then
  git clone https://github.com/revinsys/api-service.git
  mv ./api-service $1
  cd ./$1
  chmod +x ./init.sh
  ./init.sh $2
  rm -rf ./init.sh
else
 echo "Введите название сервиса и путь репозитория"
 echo "init-service <service_name> <git_path>"
fi
