As the sample application is up and running, we can now start developing some integration tests. These tests will call
the HTTP REST API of the todo app as a client and validate the server response messages.

A basic Citrus project has already been prepared, so that we can start right away.

## Add a HTTP client component

To communicate with the REST API of the todo app in our tests, a HTTP client is required. For those use cases, Citrus
provides ready-to-use endpoints for exchanging messages over various transports. The only thing we have to do, is to 
configure them in the test project.

Please open the `citrus-context.xml`[editor](/open?file=app-tests/src/test/resources/citrus-context.xml) in the editor.

The file shows a Spring XML bean configuration. You can add and manage Citrus components by adding or modifying these beans.

_To find out more about the Spring framework, please visit the [official website](https://spring.io/)._

Now, add the new HTTP client component and safe the file.
<pre class="file" data-filename="citrus-sample/src/test/resources/citrus-context.xml"><![CDATA[
    <citrus-http:client id="todoClient"
                request-url="http://todo-app.paas.consol.de"/>
]]>
</pre>
<!-- [editor](/edit/add?file=app-tests/src/test/resources/citrus-context.xml&line=15) -->
<!-- [editor](/save?file=app-tests/src/test/resources/citrus-context.xml) -->

The HTTP client component is now ready to exchange HTTP messages with the todo application. 

_Please note that you could also use Spring @Configuration classes to create Citrus beans, using Citrus endpoint builder._

## Add the HTTP client to the test class

Now, let us add the previously created Citrus HTTP client to our test class.
Therefore, please open the file `TodoAppIT.java`
[editor](/open?file=app-tests/src/test/java/org/citrus/samples/TodoAppIT.java).

As you can see, we prepared a test class for you that contains two _@CitrusTest_ test cases. One will be a simple **GET**
request while the other will test a complete workflow of the todo app.
 
Now, please add the prepared HTTP client.
```java
    @Autowired
    private HttpClient todoClient;
``` 
[editor](/edit/add?file=app-tests/src/test/java/org/citrus/samples/TodoAppIT.java&line=14)
[editor](/save?file=app-tests/src/test/java/org/citrus/samples/TodoAppIT.java)

The HTTP client endpoint component is automatically injected to the test using Spring's _@Autowired_ dependency
injection mechanism.
