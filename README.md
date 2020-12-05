# Docker


```sh
docker build https://github.com/billiam/iruby-docker#main:full --tag iruby-full

docker run -it --rm \
  -p 8888:8888 \
  -v "`pwd`:/home/jovyan/work" \
  -e NB_UID=`id -u` \
  -w /home/jovyan/work \
  iruby-full \
  start-notebook.sh \
  --NotebookApp.token=''
```
