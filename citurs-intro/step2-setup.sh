#!/bin/bash

rm /home/scrapbook/tutorial/citrus-sample/src/test/java/org/citrus/samples/SampleJavaIT.java
rm /home/scrapbook/tutorial/citrus-sample/src/test/java/org/citrus/samples/SampleXmlIT.java
rm /home/scrapbook/tutorial/citrus-sample/src/test/resources/citrus-context.xml
rm -rf /home/scrapbook/tutorial/citrus-sample/src/test/resources/org/

touch /home/scrapbook/tutorial/citrus-sample/src/test/java/org/citrus/samples/EndpointConfig.java
cat > /home/scrapbook/tutorial/citrus-sample/src/test/java/org/citrus/samples/EndpointConfig.java << EOM
package org.citrus.samples;

import com.consol.citrus.dsl.endpoint.CitrusEndpoints;
import com.consol.citrus.http.client.HttpClient;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class EndpointConfig {

    // TODO: Add endpoint bean

}
EOM

touch /home/scrapbook/tutorial/citrus-sample/src/test/java/org/citrus/samples/TodoAppIT.java
cat > /home/scrapbook/tutorial/citrus-sample/src/test/java/org/citrus/samples/TodoAppIT.java << EOM
package org.citrus.samples;

import com.consol.citrus.annotations.CitrusTest;
import com.consol.citrus.dsl.testng.TestNGCitrusTestRunner;
import com.consol.citrus.http.client.HttpClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.testng.annotations.Test;

public class TodoAppIT extends TestNGCitrusTestRunner {

    // TODO: add todoClient

    @Test
    @CitrusTest
    public void testGet() {
        // TODO: implement testGet
    }

}

EOM

clear