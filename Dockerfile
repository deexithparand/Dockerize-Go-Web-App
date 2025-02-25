# FROM	Create a new build stage from a base image.
FROM golang:1.22.1

# WORKDIR	Change working directory.
WORKDIR /app

# Copy all files and directories to the working directory
COPY . .

# Download Go modules
RUN go mod download

# Build
RUN CGO_ENABLED=0 GOOS=linux go build -o /go-web-app

# Run (runs the binary code of the application)
CMD ["/go-web-app"]
