on:
    push:
      branches: [ "main" ]
  
  jobs:
    build-and-push-docker-image:
      runs-on: ubuntu-latest
  
      steps:
      # Step 1: Checkout the repository
      - name: Checkout repository
        uses: actions/checkout@v3
  
      # Step 2: Log in to Azure Container Registry
      - name: Log in to Azure Container Registry
        uses: azure/docker-login@v1
        with:
          login-server: midterm1.azurecr.io
          username: ${{ secrets.AZURE_CONTAINER_REGISTRY_USERNAME }}
          password: ${{ secrets.AZURE_CONTAINER_REGISTRY_PASSWORD }}
  
      # Step 3: Build the Docker image
      - name: Build Docker image
        run: docker build -t midterm1.azurecr.io/midterm:latest .
  
      # Step 4: Push the Docker image to Azure Container Registry
      - name: Push Docker image
        run: docker push midterm1.azurecr.io/midterm:latest