---
title: "Building a Flask REST API without using 3rd party extension"
date: 2018-03-17T11:10:25+03:00
draft: false
tags:
- python
- flask
- rest-api
---

In this tutorial, I'm going to show you how to create a simple REST API by using
Flask framework. I will not bother you with any sort of advanced topic. Probably
you won't use this tutorial for any kind of production level product. I just
want to show how easy can be to create a REST API with Flask.

This tutorial aims to build a small and simple app. The entire app fits in a
single file. Let's see some codes.

```python
from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World!"

@app.route("/api")
def hello_api():
    return jsonify(id=1, title='Hello World!')
```

Let's test it with curl. We will only send GET request.

```sh
$ curl --request GET http://127.0.0.1:5000/api
{
  "id": 1,
  "title": "Hello World!"
}
```

This is the simplest possible API example. If you need a full-featured REST API
solution, you should check the REST extensions.
