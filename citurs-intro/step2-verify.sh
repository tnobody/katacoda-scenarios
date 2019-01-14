#!/bin/bash

function verifyContent() {
    FILE=$1
    NEEDLE=$2

    cat ${FILE} | grep "${NEEDLE}" > /dev/null
}

JAVA_TEST=/home/scrapbook/tutorial/citrus-sample/src/test/java/org/citrus/samples/TodoAppIT.java
XML_CONFIG=/home/scrapbook/tutorial/citrus-sample/src/test/resources/citrus-context.xml

#TEST1=/Users/timkeiner/Projects/consol/github/katacoda-scenarios/citurs-intro/intro.md
#verifyContent $TEST1 "System X under test" && \
verifyContent $JAVA_TEST "private HttpClient todoClient" && \
verifyContent $XML_CONFIG "<citrus-http:client id=\"todoClient\" request-url=\"http://todo-app.paas.consol.de\" />" && \
echo "done"