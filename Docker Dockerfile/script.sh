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