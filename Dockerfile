FROM ghcr.io/cargo-lambda/cargo-lambda:latest as builder

WORKDIR /build

COPY Cargo.toml Cargo.lock ./
COPY src ./src

RUN cargo lambda build --release

FROM gcr.io/distroless/base-debian12:nonroot as runtime

WORKDIR /function

COPY --from=builder /build/target/lambda/lambda-test/bootstrap bootstrap

ENTRYPOINT [ "./bootstrap" ]
