-- 1 Indexing :-
explain select * from student_table where rollnumber=1
create index stu_index on student(first_name,last_name)

explain select * from student_table where rollnumber=1

explain select  * from student where first_name='Priyanshu';

-- for showing indexing of the all student ;
SELECT
    indexname AS index_name,
    indexdef AS index_definition
FROM
    pg_indexes
WHERE
    tablename = 'student_table';
    

drop index stu_index;
drop index idx_student_lastname_gpa;

CREATE INDEX idx_student_lastname_gpa ON student USING btree(
    last_name DESC     
);

select * from student where last_name='Sisodiya' 

