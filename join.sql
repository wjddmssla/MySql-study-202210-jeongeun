select
	*
from
	school_mst
where
	19 = age;
	
select
	*
from
	score_mst as sm 
    left outer join subject_mst as sjb on(sjb.subject_id = sm.subject_id)
    left outer join student_mst as stm on(stm.student_id = sm.student_id)
    left outer join school_mst as scm on(scm.school_id = stm.school_id);
    
insert into score_mst
values
	(0, 5, 4, 100);
    
select
	*
from
	score_mst sm
    inner join subject_mst sjm on(sjm.subject_id = sm.subject_id);
    
select
	*
from
	subject_mst sjm
    right outer join score_mst sm on(sm.subject_id = sjm.subject_id);   
    