
# Base: small Ubuntu image tuned for Codespaces
FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Toolchain, debuggers, and essentials
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y         build-essential clang llvm lld make cmake git         python3 python3-dev python3-setuptools         flex bison libglib2.0-dev libpixman-1-dev         cpio libcapstone-dev wget curl         gdb pkg-config         cargo      && rm -rf /var/lib/apt/lists/*

# Build & install AFL++ (lean, source-only is enough for our lab)
# Official build flow: git clone -> make -> make install
# https://github.com/AFLplusplus/AFLplusplus/blob/stable/docs/INSTALL.md
RUN git clone --depth=1 https://github.com/AFLplusplus/AFLplusplus /opt/AFLplusplus      && cd /opt/AFLplusplus      && make source-only      && make install      && rm -rf /opt/AFLplusplus

# Install AFLTriage (3rd-party crash triage) and expose as `afltriage`
# https://github.com/quic/AFLTriage
RUN git clone --depth=1 https://github.com/quic/AFLTriage /opt/AFLTriage      && cd /opt/AFLTriage      && cargo build --release      && ln -s /opt/AFLTriage/target/release/afltriage /usr/local/bin/afltriage

ENV PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
