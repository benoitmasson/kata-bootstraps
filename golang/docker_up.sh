set -e

docker build . -t golang
docker run -v $(pwd)/src/hello:/go/src/hello/ -it golang /bin/bash
