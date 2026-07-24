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
