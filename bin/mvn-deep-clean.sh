#!/bin/sh

find . -name "pom.xml" -print -exec mvn clean -f '{}' \;
