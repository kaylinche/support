#!/bin/bash
JAVA_VERSION="25.0.1"
JAVA_WORKDIR="sapmachine-jdk-${JAVA_VERSION}"
JAVA_URL="https://github.com/SAP/SapMachine/releases/download/sapmachine-${JAVA_VERSION}/${JAVA_WORKDIR}_linux-x64_bin.tar.gz"
echo "Installing SapMachine Java ${JAVA_VERSION} from ${JAVA_URL}"
wget -q "${JAVA_URL}" -O sapmachine-jdk.tar.gz
tar -xzf sapmachine-jdk.tar.gz
export JAVA_HOME="$(pwd)/${JAVA_WORKDIR}"
export PATH="${JAVA_HOME}/bin:${PATH}"
java -version
