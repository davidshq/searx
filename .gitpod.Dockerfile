FROM alpine:3.12
ADD helloworld.py /
CMD [ "python", "./helloworld.py"]
