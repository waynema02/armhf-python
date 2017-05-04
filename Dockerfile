FROM armhf/python:3.6

COPY ./qemu-arm-static /usr/bin/qemu-arm-static

RUN apt-get update && apt-get install -y \
        protobuf-compiler && \
    pip install git+https://github.com/pyinstaller/pyinstaller@1509f0b5288843cc352da19469b79c35999c1835 && \
    rm -rf /var/lib/apt/lists/*


