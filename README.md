# Dummy API Endpoint for system testing

1. Build the container
```
 docker build -t yockgen-api .
```

2. Run the container
```
 docker run -d --name yockgen-api  --network="host" yockgen-api
```

3. Verifying using curl, if you running from another host, then altered "localhost" to IP Address
```
 curl -X POST -d "yockgen test 123" http://localhost:5577
```

4. Verifying the log of the container if message received from step 3 
```
docker logs -f yockgen-api
```




