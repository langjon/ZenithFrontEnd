use ZenithCapstoneDB
create procedure updateEmployeeTables
(
	@empId  int,
	@EmpName varchar(50),
	@EmpPhone varchar(50),
	@EmpEmail varchar(50),
	@EmpAddress varchar(70),
	@EmpPostalCode varchar(6),
	@EmployeeLoginId varchar(20),
	@Pass varchar(20),
	@Role varchar(20)
)
as
Begin
update Employee set EmpName=@EmpName, EmpPhone=@EmpPhone, EmpEmail=@EmpEmail, EmpAddress=@EmpAddress, EmpPostalCode=@EmpPostalCode Where EmpId=@empId
update EmployeeLogin set EmployeeLoginId=@EmployeeLoginId, Pass=@Pass, role=@Role
End
Return