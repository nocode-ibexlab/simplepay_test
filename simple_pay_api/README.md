# simple_pay_api

Simple Pay API

### gRPC Dart Build

$ protoc --dart_out=grpc:lib/src/grpc/generated -Iproto proto/api/v1/*.proto proto/api/v1/table/*.proto

* [Dart/Quick Start](https://grpc.io/docs/languages/dart/quickstart/)

### Run the Floor Code Generator

$ flutter packages pub run build_runner build --delete-conflicting-outputs