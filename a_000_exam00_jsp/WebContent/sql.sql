select * from emp_master;

select custno, custname, phone, address
		, to_char(joindate,'yyyy-mm-dd')
		, case when grade = 'A' then 'vip'
			   when grade = 'B' then '일반'
			   else '직원' end grade
		, city from member_tbl_02;