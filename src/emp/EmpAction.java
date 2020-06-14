package emp;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class EmpAction extends ActionSupport implements Preparable, ModelDriven<Emp> {

	private List<Emp> list;

	private int empno;

	private Emp empInfo;

	private String resultMsg;

	/*
	 * 
	 * @Override
	 * 
	 * public String execute() throws Exception {
	 * 
	 * return SUCCESS;
	 * 
	 * }
	 */

	/** ModelDriven 인터페이스 구현 */

	@Override

	public Emp getModel() {

		return empInfo;

	}

	/** Preparable 인터페이스 구현 */

	@Override

	public void prepare() throws Exception {

		empInfo = new Emp();

	}

	public String empList() {

		EmpDAO dao = new EmpDAO();

		this.list = dao.getEmpList();

		return SUCCESS;

	}

	public String empAdd() {

		EmpDAO dao = new EmpDAO();

		if (dao.addEmp(empInfo))
			resultMsg = "added";

		return SUCCESS;

	}

	public String empInfo() {

		EmpDAO dao = new EmpDAO();

		this.empInfo = dao.getEmp(empno);

		return SUCCESS;

	}

	public String empModifyForm() {

		EmpDAO dao = new EmpDAO();

		this.empInfo = dao.getEmp(empno);

		return SUCCESS;

	}

	public String empModify() {

		EmpDAO dao = new EmpDAO();

		if (dao.update(empInfo))
			resultMsg = "updated";

		return SUCCESS;

	}

	public String empDelete() {

		EmpDAO dao = new EmpDAO();

		if (dao.delete(empno))
			resultMsg = "deleted";

		return SUCCESS;

	}

	public String getResultMsg() {

		return resultMsg;

	}

	public void setEmpno(int empno) {

		this.empno = empno;

	}

	public List<Emp> getEmpList() {

		return this.list;

	}

	public Emp getEmpInfo() {

		return this.empInfo;

	}

}
