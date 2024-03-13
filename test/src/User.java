import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
 
public class Main {
 
    private String filePath;
    private User user;
    public static void main(String[] args){
         
        Main main = new Main();
        try {
            main.init();
            main.doSerializable();
            User user = (User) main.undoSerializable();
             
            System.out.println(user.getName());
            System.out.println(user.getAge());
            System.out.println(user.getPhoneNumber());
             
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
     
    public void init() {
 
        filePath = "C:\\user.ser";
         
        user = new User();
        user.setName("kim dong");
        user.setAge(50);
        user.setPhoneNumber("010-9858-9985");
    }
     
    // 마샬링(marshalling) 수행, 직렬화 
    public void doSerializable() throws IOException {
 
        FileOutputStream fos = new FileOutputStream(filePath);
        // ObjectOutputStream : 파일이나 네트워크로 데이터를 전달하기 위해 직렬화 수행
  ObjectOutputStream oos = new ObjectOutputStream(fos);
        // writeObject() : 함수를 이용해서 변환함. 
        oos.writeObject(user);
        oos.close();
    }
     
    // 언마샬링(unmarshalling) 수행, 역직렬화
    public Object undoSerializable() throws IOException, ClassNotFoundException {
 
        FileInputStream fis = new FileInputStream(filePath);
        // ObjectInputStream : 파일이나 네트워크를 통해 전달받은 직렬화된 데이터를 원래
        //                     대로 돌리는 역할을 함. 직렬화 하기전 객체로 다시 만듬 
  ObjectInputStream ois = new ObjectInputStream(fis);
        // readObject() : 직렬화 하기전 객체로 캐스팅을 함.  
        Object user = (User) ois.readObject();
        ois.close();
         
        return user;
    }
}
 
// 직렬화 객체 
class User implements Serializable {
    private static final long serialVersionUID = 2L;
    private String name;
    private int age;
    private String phoneNumber;
     
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }
    public String getPhoneNumber() {
        return phoneNumber;
    }
    public void setPhoneNumber(String socialNumber) {
        this.phoneNumber = socialNumber;
    }
}
