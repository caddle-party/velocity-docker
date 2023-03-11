FROM gradle:8.0.2-jdk17 AS builder
WORKDIR /build
COPY . /build
RUN apt update && apt install -y git
RUN cd Velocity && gradle build

FROM gcr.io/distroless/java17
WORKDIR /opt/velocity
COPY --from=builder /build/Velocity/proxy/build/libs/*-all.jar /opt/velocity/velocity.jar
CMD ["velocity.jar"]
