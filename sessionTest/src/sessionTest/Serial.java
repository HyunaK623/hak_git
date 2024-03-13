package sessionTest;
import java.io.Serializable;

public class Serial implements Serializable {
	private String msg;
	private String version;
	public String getMsg() { return msg; }
	public void setMsg(String msg) { this.msg = msg; }
	public String getVersion() { return version; }
	public void setVersion(String version) { this.version = version; }
}
