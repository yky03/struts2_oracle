package emp;

import java.sql.*;

import java.util.*;

public class EmpDAO {

	Connection conn;

	PreparedStatement pstmt;

	ResultSet rs;

	String jdbc_driver = "oracle.jdbc.OracleDriver";

	String db_url = "jdbc:oracle:thin:@localhost:1521:XE";

	private Connection getConn() {

		try {

			Class.forName(jdbc_driver);

			conn = DriverManager.getConnection(db_url, "SYS as sysdba", "1111");

			return conn;

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return null;

	}

	public List<Emp> getEmpList() {

		conn = getConn();

		String sql = "SELECT empno, ename, deptno, job FROM emp";

		try {

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			ArrayList<Emp> list = new ArrayList<Emp>();

			while (rs.next()) {

				Emp emp = new Emp();

				emp.setEmpno(rs.getInt("EMPNO"));

				emp.setEname(rs.getString("ENAME"));

				emp.setDeptno(rs.getInt("DEPTNO"));

				emp.setJob(rs.getString("JOB"));

				list.add(emp);

			}

			return list;

		} catch (SQLException e) {

			e.printStackTrace();

		} finally {

			closeAll();

		}

		return null;

	}

	public Emp getEmp(int empno) {

		conn = getConn();

		String sql = "SELECT empno, ename, deptno, job FROM emp WHERE empno=?";

		try {

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, empno);

			rs = pstmt.executeQuery();

			if (rs.next()) {

				Emp emp = new Emp();

				emp.setEmpno(rs.getInt("EMPNO"));

				emp.setEname(rs.getString("ENAME"));

				emp.setDeptno(rs.getInt("DEPTNO"));

				emp.setJob(rs.getString("JOB"));

				return emp;

			}

		} catch (SQLException e) {

			e.printStackTrace();

		} finally {

			closeAll();

		}

		return null;

	}

	public boolean addEmp(Emp emp) {

		conn = getConn();

		String sql = "INSERT INTO emp (empno, ename, deptno, job) " +

				"VALUES (?,?,?,?)";

		try {

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, emp.getEmpno());

			pstmt.setString(2, emp.getEname());

			pstmt.setInt(3, emp.getDeptno());

			pstmt.setString(4, emp.getJob());

			int row = pstmt.executeUpdate();

			if (row > 0)
				return true;

		} catch (SQLException e) {

			e.printStackTrace();

		} finally {

			closeAll();

		}

		return false;

	}

	public boolean update(Emp emp) {

		conn = getConn();

		String sql = "UPDATE emp SET deptno=?, job=? WHERE empno=?";

		try {

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, emp.getDeptno());

			pstmt.setString(2, emp.getJob());

			pstmt.setInt(3, emp.getEmpno());

			int row = pstmt.executeUpdate();

			if (row > 0)
				return true;

		} catch (SQLException e) {

			e.printStackTrace();

		} finally {

			closeAll();

		}

		return false;

	}

	public boolean delete(int empno) {

		conn = getConn();

		String sql = "DELETE FROM emp WHERE empno=?";

		try {

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, empno);

			int row = pstmt.executeUpdate();

			if (row > 0)
				return true;

		} catch (SQLException e) {

			e.printStackTrace();

		} finally {

			closeAll();

		}

		return false;

	}

	private void closeAll() {

		try {

			if (rs != null)
				rs.close();

			if (pstmt != null)
				pstmt.close();

			if (conn != null)
				conn.close();

		} catch (Exception ex) {

			ex.printStackTrace();

		}

	}

}
