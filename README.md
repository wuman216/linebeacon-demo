# linebeacon-demo
A quick demo of LINE Simple Beacon usage.
Please refer the [using beacon](https://developers.line.me/en/docs/messaging-api/using-beacons/) session of LINE Beacon for further information.

# Getting started
## Prerequisites
* [LINE@ account](https://developers.line.me/console/register/messaging-api/provider/) for the chatbot developement 
* [LINE Simple Beacon](https://github.com/line/line-simple-beacon/tree/master/tools/line-simplebeacon-nodejs-sample) - Sample Bluetooth Host Application for LINE Simple Beacon
* [Link the beacon to a bot](https://admin-official.line.me/beacon/register#/) - Get HWID of the beacon and link it to a bot

## Install Dependencies  
```
bundle install
```
or 
```
gem install 'sinatra'
gem install 'line-bot-api'
```

## Run
Clone the [application](https://github.com/line/line-simple-beacon/tree/master/tools/line-simplebeacon-nodejs-sample) and enable the LINE Simple Beacon first 
```
node simplebeacon.js --hwid=YOURHWID
```
Start a webserver to process the webhook of LINE Simple Beacon
```
ruby app.rb
```

# Reference 
* [LINE Developers site](https://developers.line.me/en/)
* [LINE Simple Beacon](https://github.com/line/line-simple-beacon/tree/master/tools/line-simplebeacon-nodejs-sample)
* [SDK of the LINE Messaging API for Ruby](https://github.com/line/line-bot-sdk-ruby)
