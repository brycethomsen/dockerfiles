# freeboard-demo

A quick self-contained [freeboard](https://freeboard.io/) demo.

Container pulls directly from the freeboard github repo: [https://github.com/Freeboard/freeboard](https://github.com/Freeboard/freeboard)

Easy to setup:
```
$ docker run -d -p 8080:8080 bryce/freeboard
```
Note: Save feature only appears to work under chrome

### TODO:
- persistent volume for saving/running existing dashboard configurations
