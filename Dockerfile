# Use Ubuntu as the base system
FROM ubuntu:latest

# Install C++ compiler and required libraries
RUN apt update && apt install -y g++ 

# Set working directory
WORKDIR /usr/src/app

# Copy files from the repo into the container
COPY . .

# Compile the C++ function
RUN g++ -o function main.cpp

# Run the function
CMD ["./function"]
