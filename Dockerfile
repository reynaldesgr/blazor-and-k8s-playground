# Use the official .NET SDK image to build the app
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

# Set the working directory
WORKDIR /src

# Copy the project file and restore dependencies
COPY BlazorApp.csproj ./
RUN dotnet restore

# Copy the rest of the application code
COPY . .

# Install required workloads
RUN dotnet workload restore

# Build the application
RUN dotnet build -c Release -o /app/build

# Publish the application
RUN dotnet publish -c Release -o /app/publish

# Use the official .NET runtime image to run the app
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime

# Set the working directory
WORKDIR /app

# Copy the published application from the build stage
COPY --from=build /app/publish .

# Expose port 80
EXPOSE 80

# Define the entry point for the container
ENTRYPOINT ["dotnet", "BlazorApp.dll"]
