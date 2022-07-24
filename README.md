# typesense-azure
A typesense docker image for running in Azure. 

## Motivation

We got segmentation faults when using the  typesense docker in Azure and want to try a custom docker build.

## Usage

To test (without a persistent) (locally)

``` command
docker run -it -p 8108:8108 -e TYPESENSE_DATA_DIR=/app -e TYPESENSE_API_KEY=mykey dutchgrit/typsense:latest 
``` 

## Manual build + deploy to Docker Hub 

``` 
docker build -t typesense .
docker login
docker push dutchgrit/typesense:0.2
```


## Todo 

[ ] Setup Github actions for auto build/deploy


## Azure notes

`tail -f /dev/null` 
Is a use full startup command-line for debugging, in case the container does not start.

