## Simple and production ready TomEE docker images on top of Ubuntu

This repository contains **Dockerfile** of [Ubuntu](http://www.ubuntu.com/) for [Docker](https://www.docker.com/)'s [automated build](https://hub.docker.com/r/sgrio/tomee/) published to the public [Docker Hub](https://hub.docker.com/).

The following extra components and configurations has been applied to the TomEE server in these images to make it `production ready`:
  * Unecessary files(.exe, .bat, etc.) and default applications(like host manager) has been removed to reduce image size
  * `APR` support, version `1.6.3`
  * `TC Native` support, version `1.2.16`
  * `Openssl`, version `1.0.2n`
  * `SSL` enabled at port 8443 with a `self-signed` certificate located at `${CATALINA_HOME}/ssl`
  * `Tomcat cluster` support and been enabled by default
  * For more details, please reference to the [setenv.sh](https://github.com/sgr-io/docker-tomee/blob/master/server_jre_8_unlimited_plus/files/bin/setenv.sh) file and [server.xml](https://github.com/sgr-io/docker-tomee/blob/master/server_jre_8_unlimited_plus/files/conf/server.xml) file.

### Docker Tags

`sgrio/tomee` provides several tagged images:

#### Default (Your best choice)
  * `latest`: pointed to `plus_v7_server_jre_8`

#### TomEE Plus v7 (Current version, not yet JavaEE 7 certificated)
  * Java 8
    * `plus_v7_server_jre_8`: Tomcat EE version `7.0.4` with `Oracle Java SE Server Runtime Environment 8`
    * `plus_v7_jdk_8`: Tomcat EE version `7.0.4` with `Oracle Java SE Development Kit 8`
  * Java 7
    * `plus_v7_server_jre_7_unlimited`: Tomcat EE version `7.0.4` with `Oracle Java SE Server Runtime Environment 7` and `JCE` patched
    * `plus_v7_server_jre_7`: Tomcat EE version `7.0.4` with `Oracle Java SE Server Runtime Environment 7`
    * `plus_v7_jdk_7_unlimited`: Tomcat EE version `7.0.4` with `Oracle Java SE Development Kit 7` and `JCE` patched
    * `plus_v7_jdk_7`: Tomcat EE version `7.0.4` with `Oracle Java SE Development Kit 7`

#### TomEE Plus v1 (JavaEE 6 certificated)
  * Java 8
    * `plus_v1_server_jre_8`: Tomcat EE version `1.7.5` with `Oracle Java SE Server Runtime Environment 8`
    * `plus_v1_jdk_8`: Tomcat EE version `1.7.5` with `Oracle Java SE Development Kit 8`
  * Java 7
    * `plus_v1_server_jre_7_unlimited`: Tomcat EE version `1.7.5` with `Oracle Java SE Server Runtime Environment 7` and `JCE` patched
    * `plus_v1_server_jre_7`: Tomcat EE version `1.7.5` with `Oracle Java SE Server Runtime Environment 7`
    * `plus_v1_jdk_7_unlimited`: Tomcat EE version `1.7.5` with `Oracle Java SE Development Kit 7` and `JCE` patched
    * `plus_v1_jdk_7`: Tomcat EE version `1.7.5` with `Oracle Java SE Development Kit 7`

### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://hub.docker.com/r/sgrio/tomee/) from public [Docker Hub](https://hub.docker.com/): `docker pull sgrio/tomee`

### Usage

    docker run -d -p 8080:8080 -p 8443:8443 -v /path/to/webapp:/opt/apache-tomee-${TOMEE_VERSION} sgrio/tomee

### Advanced

    You can always mount your own volumns to override the default configurations. I assume you know how to do that, right?