/*
	서브쿼리(하위쿼리)
    select 안에서 select 하는 방법
*/


/*  문제: 서울대를 다니는 학생을 찾으시오.  */

select
	*
from
	student_mst sm
    left outer join school_mst scm on(scm.school_id=sm.school_id)
where
	scm.school_name like '서울대%';
    
select
	*
from
	student_mst
where
	school_id = (select 
					school_id 
				from 
					school_mst 
				where school_name like '서울대%');
                
/*위의 경우에서 2개이상을 선택해야할때: "in"을 사용한다.*/

select
	*
from
	student_mst
where
	school_id in(1,3);

    
select
	*
from
	student_mst
where
	school_id in (select 
					school_id 
				from 
					school_mst 
				where 
					school_name like '서울대%'
                or school_name like '부산대%');
                

select
	*,
    (select school_name from school_mst scm where scm.school_id = stm.school_id) as school_name
from
	student_mst stm;
    
/*전체 개수 = "count(*)" */
select
	count(*) as 총인원
from
	student_mst;
    
select
	*,
	(select 
		count(*) 
	from
		student_mst) as 총인원
from
	student_mst;
    

select
	*
from 
	student_mst sm
	left outer join(select count(*) as 총원 from student_mst) sc on(1=1);



show profiles; /*실행 되는 시간*/
    