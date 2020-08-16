FROM laakkonen/pyalpineflask:latest
COPY . /todoapp
WORKDIR /todoapp
ENTRYPOINT ["python"]
CMD ["app.py"]
