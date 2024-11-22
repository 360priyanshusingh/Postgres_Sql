-- 1 VIEWS :-
create or replace view My_view as select first_name from student s where s.id=1 or s.id=2;
select * from  My_view;
drop view My_view;


-- - 2 CURSOR :-
BEGIN;
DECLARE SECOND_MY_CURSOR CURSOR FOR SELECT * FROM student2;

FETCH * FROM MY_CURSOR

select * from student2;