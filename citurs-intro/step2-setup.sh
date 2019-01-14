rm /home/scrapbook/tutorial/citrus-sample/src/test/java/org/citrus/samples/SampleJavaIT.java > /dev/null
rm /home/scrapbook/tutorial/citrus-sample/src/test/java/org/citrus/samples/SampleXmlIT.java > /dev/null

echo "Removed sample Tests"

cat > "/home/scrapbook/tutorial/citrus-sample/src/test/java/org/citrus/samples/TodoAppIT.java" <<- EOM
package org.citrus.samples;

import org.testng.annotations.Test;

import com.consol.citrus.annotations.CitrusTest;
import com.consol.citrus.dsl.testng.TestNGCitrusTestDesigner;
import com.consol.citrus.http.client.HttpClient;
import com.consol.citrus.message.MessageType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;

public class TodoAppIT extends TestNGCitrusTestDesigner {

    // TODO: add todoClient

    @Test
    @CitrusTest
    public void testGet() {
        // TODO: implement testGet
    }

    @Test
    @CitrusTest
    public void testTodoLifecycle() {
        // TODO: implement testTodoLifecycle
    }
}

EOM > /dev/null

echo "Add TodoApp Test"