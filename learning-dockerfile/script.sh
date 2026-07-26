# FROM Instruction
docker build -t rizqipratama/from from

docker image ls

# RUN Instruction
docker build -t rizqipratama/run run

docker build -t rizqipratama/run run --progress=plain --no-cache

# CMD Instruction
docker build -t rizqipratama/command command

docker image inspect rizqipratama/command

docker container create --name command rizqipratama/command

docker container start command

docker container logs command

# LABEL Instruction
docker build -t rizqipratama/label label

docker image inspect rizqipratama/label

# ADD Instruction
docker build -t rizqipratama/add add

docker image inspect rizqipratama/add

docker container create --name add rizqipratama/add

docker container start add

docker container logs add

# COPY Instruction
docker build -t rizqipratama/copy copy

docker image inspect rizqipratama/copy

docker container create --name copy rizqipratama/copy

docker container start copy

docker container logs copy

# IGNORE
docker build -t rizqipratama/ignore ignore

docker image inspect rizqipratama/ignore

docker container create --name ignore rizqipratama/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Instruction
docker build -t rizqipratama/expose expose

docker image inspect rizqipratama/expose

docker container create --name expose -p 8080:8080 rizqipratama/expose

docker container start expose

docker container ls

docker container stop expose

# ENV Instruction
docker build -t rizqipratama/env env

docker image inspect rizqipratama/env

docker container create --name env --env APP_PORT=9090 -p 9090:9090 rizqipratama/env

docker container start env

docker container ls

docker container logs env

docker container stop env

# VOLUME Instruction
docker build -t rizqipratama/volume volume

docker image inspect rizqipratama/volume

docker container create --name volume --env APP_PORT=9090 -p 9090:9090 rizqipratama/volume

docker container start volume

docker container ls

docker container logs volume

docker container inspect volume
#6c101d3003dd003db65db4b331b39a8ff2d658e198786ad21561cc7215028062

docker volume ls

docker container stop volume

# WORKDIR Instruction
docker build -t rizqipratama/workdir workdir

docker image inspect rizqipratama/workdir

docker container create --name workdir -p 8080:8080 rizqipratama/workdir

docker container start workdir

docker container exec -i -t workdir /bin/sh

docker container ls

docker container logs workdir

docker container stop workdir

# USER Instruction
docker build -t rizqipratama/user user

docker image inspect rizqipratama/user

docker container create --name user -p 8080:8080 rizqipratama/user

docker container start user

docker container exec -i -t user /bin/sh

docker container stop user

# ARG Instruction
docker build -t rizqipratama/arg arg --build-arg app=verdko

docker container create --name arg -p 8080:8080 rizqipratama/arg

docker container start arg

docker container exec -i -t arg /bin/sh

docker container stop arg

# HEALTHCHECK Instruction
docker build -t rizqipratama/health health

docker container create --name health -p 8080:8080 rizqipratama/health

docker container start health

docker container ls

docker container stop health

# ENTRYPOINT Instruction
docker build -t rizqipratama/entrypoint entrypoint

docker container create --name entrypoint -p 8080:8080 rizqipratama/entrypoint

docker container start entrypoint

docker container stop entrypoint

# MULTI STAGE BUILD
docker build -t rizqipratama/multi multi

docker container create --name multi -p 8080:8080 rizqipratama/multi

docker container start multi

docker container stop multi

