
FROM openjdk:11
# Set the working directory in container
WORKDIR /usr/src/myapp

# Copy the current directory contents into the container at /usr/src/myapp
COPY Main.java .

# Compile the Java program
RUN javac Main.java

# Run the Java program
CMD ["java", "Main"]
