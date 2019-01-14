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
        // TODO: implement testGet
    }
    @Test
    @CitrusTest
    public void testTodoLifecycle() {
        // TODO: implement testTodoLifecycle
    }
}
