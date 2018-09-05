## Simple and production ready TomEE docker images on top of Ubuntu

This repository contains **Dockerfile** of [Ubuntu](http://www.ubuntu.com/) for [Docker](https://www.docker.com/)'s [automated build](https://hub.docker.com/r/sgrio/tomee/) published to the public [Docker Hub](https://hub.docker.com/).

The following extra components and configurations has been applied to the TomEE server in these images to make it `production ready`:
  * Unecessary files(.exe, .bat, etc.) and default applications(like host manager) has been removed to reduce image size
  * `APR` support, version `1.6.3`
  * `TC Native` support, version `1.2.17`

### Docker Tags

`sgrio/tomee` provides several tagged images:

#### Default (Your best choice)
  * [![](https://images.microbadger.com/badges/image/sgrio/tomee.svg)](https://microbadger.com/images/sgrio/tomee) `latest`: pointed to `plus_v7_server_jre_8`

#### TomEE Plus v7 (Current version, not yet JavaEE 7 certificated)
  * Java 8
    * [![](https://images.microbadger.com/badges/image/sgrio/tomee:plus_v7_server_jre_8.svg)](https://microbadger.com/images/sgrio/tomee:plus_v7_server_jre_8) `plus_v7_server_jre_8`: Tomcat EE version `7.0.4` with `Oracle Java SE Server Runtime Environment 8`
    * [![](https://images.microbadger.com/badges/image/sgrio/tomee:plus_v7_jdk_8.svg)](https://microbadger.com/images/sgrio/tomee:plus_v7_jdk_8) `plus_v7_jdk_8`: Tomcat EE version `7.0.4` with `Oracle Java SE Development Kit 8`
  * Java 7
    * [![](https://images.microbadger.com/badges/image/sgrio/tomee:plus_v7_server_jre_7_unlimited.svg)](https://microbadger.com/images/sgrio/tomee:plus_v7_server_jre_7_unlimited) `plus_v7_server_jre_7_unlimited`: Tomcat EE version `7.0.4` with `Oracle Java SE Server Runtime Environment 7` and `JCE` patched
    * [![](https://images.microbadger.com/badges/image/sgrio/tomee:plus_v7_server_jre_7.svg)](https://microbadger.com/images/sgrio/tomee:plus_v7_server_jre_7) `plus_v7_server_jre_7`: Tomcat EE version `7.0.4` with `Oracle Java SE Server Runtime Environment 7`
    * [![](https://images.microbadger.com/badges/image/sgrio/tomee:plus_v7_jdk_7_unlimited.svg)](https://microbadger.com/images/sgrio/tomee:plus_v7_jdk_7_unlimited) `plus_v7_jdk_7_unlimited`: Tomcat EE version `7.0.4` with `Oracle Java SE Development Kit 7` and `JCE` patched
    * [![](https://images.microbadger.com/badges/image/sgrio/tomee:plus_v7_jdk_7.svg)](https://microbadger.com/images/sgrio/tomee:plus_v7_jdk_7) `plus_v7_jdk_7`: Tomcat EE version `7.0.4` with `Oracle Java SE Development Kit 7`

#### TomEE Plus v1 (JavaEE 6 certificated)
  * Java 8
    * [![](https://images.microbadger.com/badges/image/sgrio/tomee:plus_v1_server_jre_8.svg)](https://microbadger.com/images/sgrio/tomee:plus_v1_server_jre_8) `plus_v1_server_jre_8`: Tomcat EE version `1.7.5` with `Oracle Java SE Server Runtime Environment 8`
    * [![](https://images.microbadger.com/badges/image/sgrio/tomee:plus_v1_jdk_8.svg)](https://microbadger.com/images/sgrio/tomee:plus_v1_jdk_8) `plus_v1_jdk_8`: Tomcat EE version `1.7.5` with `Oracle Java SE Development Kit 8`
  * Java 7
    * [![](https://images.microbadger.com/badges/image/sgrio/tomee:plus_v1_server_jre_7_unlimited.svg)](https://microbadger.com/images/sgrio/tomee:plus_v1_server_jre_7_unlimited) `plus_v1_server_jre_7_unlimited`: Tomcat EE version `1.7.5` with `Oracle Java SE Server Runtime Environment 7` and `JCE` patched
    * [![](https://images.microbadger.com/badges/image/sgrio/tomee:plus_v1_server_jre_7.svg)](https://microbadger.com/images/sgrio/tomee:plus_v1_server_jre_7) `plus_v1_server_jre_7`: Tomcat EE version `1.7.5` with `Oracle Java SE Server Runtime Environment 7`
    * [![](https://images.microbadger.com/badges/image/sgrio/tomee:plus_v1_jdk_7_unlimited.svg)](https://microbadger.com/images/sgrio/tomee:plus_v1_jdk_7_unlimited) `plus_v1_jdk_7_unlimited`: Tomcat EE version `1.7.5` with `Oracle Java SE Development Kit 7` and `JCE` patched
    * [![](https://images.microbadger.com/badges/image/sgrio/tomee:plus_v1_jdk_7.svg)](https://microbadger.com/images/sgrio/tomee:plus_v1_jdk_7) `plus_v1_jdk_7`: Tomcat EE version `1.7.5` with `Oracle Java SE Development Kit 7`

### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://hub.docker.com/r/sgrio/tomee/) from public [Docker Hub](https://hub.docker.com/): `docker pull sgrio/tomee`

### Usage

    docker run -d -p 8080:8080 -v /path/to/webapp:/opt/apache-tomee/webapp sgrio/tomee

### Advanced

    You can always mount your own volumns to override the default configurations. I assume you know how to do that, right?
