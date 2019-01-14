Now that your environment has been setup by configuring a Citrus HTTP client in the **citrus-context.xml** which has
then been injected into the **TodoAppIT.java** via Springs **@Autowired** annotation, we're ready to develop our tests.

Citrus provides a Java fluent API for writing integration tests. This API is automatically available as we extended our
class from **TestNGCitrusTestDesigner**. 

_Please note that you could also use JUnit in combination with Citrus._

At first, lets test whether the TodoApp is responsive, by requesting the list of current todo entries from the apps API. 
<pre class="file" data-filename="citrus-sample/src/test/java/org/citrus/samples/TodoAppIT.java" data-target="insert" data-marker="// TODO: implement testGet">
http()
           .client(todoClient)
           .send()
           .get("/api/todolist/");
</pre>

<!--
```java
package org.citrus.samples;

import org.testng.annotations.Test;

import com.consol.citrus.annotations.CitrusTest;
import com.consol.citrus.dsl.testng.TestNGCitrusTestDesigner;
import com.consol.citrus.http.client.HttpClient;
import com.consol.citrus.message.MessageType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;

public class TodoAppIT extends TestNGCitrusTestDesigner {

    @Autowired
    private HttpClient todoClient;
    
    @Test
    @CitrusTest
    public void testGet() {
       http()
           .client(todoClient)
           .send()
           .get("/api/todolist/");

        http()
           .client(todoClient)
           .receive()
           .response(HttpStatus.OK);
    }
    
    @Test
    @CitrusTest
    public void testTodoLifecycle() {
        // TODO code the test
    }
}
```
[editor](/edit/replace?file=app-tests/src/test/java/org/citrus/samples/TodoAppIT.java)
[editor](/save?file=app-tests/src/test/java/org/citrus/samples/TodoAppIT.java)
-->
The test sends a **HTTP GET** request via the **todoClient** to the todo application. This **GET** request gets answered
with the current list of todo entries, which is basically a json document.

Afterwards, the test uses a receive operation to receive the response from the API and validate its content. This test
only expects a **HTTP 200 OK** response from the server.

## Run the test

You can run all Citrus tests with Maven by calling
 
`mvn clean verify -f app-tests/pom.xml`{{execute}}

You will see some log out put in the terminal window showing the incoming request processing.

You can also start a single test by adding its name to the command:

`mvn clean verify -f app-tests/pom.xml -Dit.test=TodoAppIT#testGet`{{execute}}

This will only execute the **testGet** test.
