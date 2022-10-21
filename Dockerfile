FROM golang:alpine

# set up working directory
WORKDIR /app

# Copying all file and folder to working directory
COPY . .

# downloading package 
RUN go mod download

# build the app
RUN go build -o learn-ci-cd

# exposing port
EXPOSE 8080

# Set up ENTRYPOINT 
ENTRYPOINT ["./learn-ci-cd"]
