FROM python:3.10-slim

COPY requirements.txt requirements.txt
COPY client.py client.py
COPY server.py server.py
COPY helloworld_pb2_grpc.py helloworld_pb2_grpc.py
COPY helloworld_pb2.py helloworld_pb2.py
COPY helloworld.proto helloworld.proto

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 50051

CMD ["bash"]