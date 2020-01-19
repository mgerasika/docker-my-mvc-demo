set port=8081
set image=my-mvc-demo
set app=my-mvc-demo-%port%
docker build -t %image% .
docker stop %app%
docker rm %app%
docker run --env PORT=80 -d -p %port%:80 --name %app% %image%