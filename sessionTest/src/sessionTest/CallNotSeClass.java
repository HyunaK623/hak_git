package sessionTest;
import java.io.Serializable;

public class CallNotSeClass implements Serializable {
	NotSerial notse = new NotSerial();
	public void setCallNotSeClass(String version, String msg) {
	notse.setVersion(version);
	notse.setMsg(msg);
	System.out.println("Not Serializable Class");
	}
	public NotSerial getCallNotSeClass() { return notse; }

}