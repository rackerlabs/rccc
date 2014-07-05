#!/bin/bash

MAVEN_VERSION="3.2.2"
GROOVY_VERSION="2.3.3"

mkdir jclouds
cd jclouds

# Get Java
sudo apt-get update
sudo apt-get -y install openjdk-7-jre-headless unzip
echo 'export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64/"' >> $HOME/.bashrc

# Get Groovy
wget -nv http://dl.bintray.com/groovy/maven/groovy-binary-$GROOVY_VERSION.zip
unzip groovy-binary-$GROOVY_VERSION.zip
GROOVY_HOME="$HOME/jclouds/groovy-$GROOVY_VERSION"
echo "export GROOVY_HOME=\"$GROOVY_HOME\"" >> $HOME/.bashrc

# Get Maven
wget -nv http://apache.mirrors.lucidnetworks.net/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.zip
unzip apache-maven-$MAVEN_VERSION-bin.zip
MAVEN_HOME="$HOME/jclouds/apache-maven-$MAVEN_VERSION"
echo "export MAVEN_HOME=\"$MAVEN_HOME\"" >> $HOME/.bashrc

# Get jclouds
wget -nv https://raw.githubusercontent.com/rackerlabs/rccc/master/jclouds/pom.xml
$MAVEN_HOME/bin/mvn -q dependency:copy-dependencies "-DoutputDirectory=./lib"

# Configure Groovy Shell
mkdir $HOME/.groovy

cat >$HOME/.groovy/groovysh.profile <<EOL
import com.google.common.io.*
import com.google.common.base.Joiner
import org.jclouds.ContextBuilder
import org.jclouds.openstack.swift.v1.SwiftApi
import org.jclouds.openstack.swift.v1.domain.*
import org.jclouds.openstack.swift.v1.features.*
EOL

# Configure PATH
echo 'export PATH="$PATH:$GROOVY_HOME/bin:$MAVEN_HOME/bin"' >> $HOME/.bashrc
