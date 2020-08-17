# https://github.com/pj-laakkonen/todo
# Simple to-do app
# Author Petri Laakkonen
# petri@laakkonen.io

Tech:
Python, Flask, Docker

Build, Run & Push
+ docker build -t laakkonen/todo:latest .
+ docker run -d -p 5000:5000 laakkonen/todo:latest
+ docker push laakkonen/todo:latest

#
