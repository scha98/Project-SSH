import java.io.BufferedReader;
import java.io.InputStreamReader;

public class client {
    public static void main(String[] args) {
	System.out.println("Execute shell commands example");
	System.out.println();

	try {
	    String cmd = "ssh scha@10.0.2.15";
	    System.out.println("Executing command: " + cmd);
	    Process p = Runtime.getRuntime().exec(cmd);
	    int result = p.waitFor();
	    
	    System.out.println("Process exit code: " + result);
	    System.out.println();
	    System.out.println("Result:");
	    BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));

	    String line = "";
	    while ((line = reader.readLine()) != null) {
		System.out.println(line);
	    }

	} catch (Exception e) {
	    e.printStackTrace();
	}
    }
}
