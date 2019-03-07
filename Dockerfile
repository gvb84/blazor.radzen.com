FROM dotnet/core:3.0.100-preview3
COPY . /app
WORKDIR /app/RazorComponentsApp1

RUN ["dotnet", "clean"]
RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]

ENV ASPNETCORE_URLS http://*:5000
 
ENTRYPOINT ["dotnet", "run"]