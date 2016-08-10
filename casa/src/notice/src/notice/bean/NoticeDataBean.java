package notice.bean;
import java.sql.Timestamp;

public class NoticeDataBean{

	private int num; 
    private String subject;
    private String content;
    private Timestamp reg_date;
    private String file_content;
    private int readcount;

	public void setNum(int num){
    	this.num=num;
    }
    public void setSubject (String subject) {
        this.subject = subject;
    }
    public void setContent (String content) {
        this.content = content;
    }
    public void setReg_date (Timestamp reg_date) {
        this.reg_date = reg_date;
    }
	public void setFile_content (String file_content) {
        this.file_content = file_content;
    }
	public void setReadcount(int readcount){
	  	this.readcount=readcount;
	}
    
    public int getNum(){
    	return num;
    }
    public String getSubject () {
        return subject;
    }
    public String getContent () {
        return content;
    }
    public Timestamp getReg_date () {
        return reg_date;
    }
	 public String getFile_content () {
        return file_content;
    }
	 public int getReadcount(){
    	return readcount;
    }
}