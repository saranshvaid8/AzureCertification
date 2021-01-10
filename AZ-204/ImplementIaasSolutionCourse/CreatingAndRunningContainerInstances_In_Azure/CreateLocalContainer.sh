    
 #Step 1- Build out web app first and test it prior to putting it in a container   
dotnet build ./DemoApp
dotnet run --project ./DemoApp
curl http://localhost:5000

#Step 2 - Lets publish a local build.. this is what will be copied into the container
dotnet publish -c Release ./demoapp

#Step 3 - Time to build the Container and tag it.. the build is defined in the DockerFile
docker build -t demoappimage:v1

