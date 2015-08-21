# golang with Docker from scratch, built on Mac OS X with docker-machine

## Workspace

```
export GO_PROJ=golangdocker
export WORKSPACE=~/work/$GO_PROJ
mkdir -p $WORKSPACE
cd $WORKSPACE
mkdir -p {bin,src,pkg}
mkdir -p src/$GO_PROJ
export GOPATH=$WORKSPACE
export PATH=$GOPATH/bin:$PATH
cd src/$GO_PROJ
```

## Clone

```
git clone git@github.com:gokoans/golangdocker.git .
```

## Run

```
./pack.sh && docker run -it golangdocker
```
