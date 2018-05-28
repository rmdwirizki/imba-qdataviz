var express = require 'express'
var server = express()

server.use(express.static('./build'))

server.get(/.*/) do |req,res|
  var html = <html>
    <head>
      <meta charset="utf-8">
      <meta attr:http-equiv="x-ua-compatible" content="ie=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title> "QDataViz"
      <link rel="stylesheet" href="/main.css">
    <body>
      <script src="/main.js">
  
  return res.send html.toString

var port = process:env.PORT or 8080

var server = server.listen(port) do
  console.log 'server is running on port ' + port
