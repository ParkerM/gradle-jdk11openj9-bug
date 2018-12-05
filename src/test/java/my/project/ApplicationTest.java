package my.project;

import org.junit.Test;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import static org.junit.Assert.assertEquals;

public class ApplicationTest {

    @Test
    public void coolTest() {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        PrintStream ps = new PrintStream(baos);

        PrintStream old = System.out;
        System.setOut(ps);

        Application.main(new String[0]);

        System.out.flush();
        System.setOut(old);

        String outputStr = baos.toString();
        assertEquals(outputStr.trim(), "blargh");
    }

}
