#!/bin/bash

grep -Fq "private HttpClient todoClient;" /home/scrapbook/tutorial/citrus-sample/src/test/java/org/citrus/samples/TodoAppIT.java && \
grep -Fq "<citrus-http:client id=\"todoClient\" request-url=\"http://todo-app.paas.consol.de\" />" /home/scrapbook/tutorial/citrus-sample/src/test/resources/citrus-context.xml && \
echo "done"