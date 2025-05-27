set serveroutput on;
Declare 
Cursor inst_cursor is 
Select dept_name from instructor;

Begin  
For rec in inst_cursor
LOOP 
dbms_output.put_line('The instructors are: ');
LIST_INSTRUCTORS(rec.dept_name);
END LOOP;
End;
/
