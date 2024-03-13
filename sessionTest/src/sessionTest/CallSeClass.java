package sessionTest;
import java.io.Serializable;

public class CallSeClass implements Serializable {
	Serial se = new Serial();
	public void setCallSeClass(String version, String msg) {
	se.setVersion(version);
	se.setMsg(msg);
	System.out.println("Serializable Class");
	}
	public Serial getCallSeClass() { return se; }

}
