
-- WHILE??

DECLARE
    v_total NUMBER := 0;
    v_count NUMBER := 1; -- begin
BEGIN
    WHILE v_count <= 10 -- end
    LOOP
        v_total := v_total + v_count;
        v_count := v_count + 1; -- step
    END LOOP;
    dbms_output.put_line(v_total);
END;

-- ??? EXIT
DECLARE
    v_total NUMBER := 0;
    v_count NUMBER := 1; -- begin
BEGIN
    WHILE v_count <= 10 -- end
    LOOP
        EXIT WHEN v_count = 5; -- break
    
        v_total := v_total + v_count;
        v_count := v_count + 1; -- step
    END LOOP;
    dbms_output.put_line(v_total);
END; 

-- FOR??
DECLARE
    v_num NUMBER := 7;
BEGIN 
    
    FOR i IN 1..9 -- .?? ??? ?????? ?????? ???
    LOOP
        dbms_output.put_line(v_num || ' x ' || i || ' = ' || v_num*i);
    END LOOP;
END;

-- CONTINUE??
DECLARE
    v_num NUMBER := 7;
BEGIN 
   
    FOR i IN 1..9 -- .?? ??? ?????? ?????? ???
    LOOP
        CONTINUE WHEN MOD(i, 2) = 0;
        dbms_output.put_line(v_num || ' x ' || i || ' = ' || v_num*i);
    END LOOP;
END;

--------------------------------------------------------------------------------

-- 1. ??? ???????? ?????? ??? ?????? ???ù°??. (2 ~ 9??)
-- ?????? ????? ?????. (2, 4, 6, 8)
-- ?????? ????? ?????? ????? ???????? ?????? ??????? ?????. (% ????~)
BEGIN
    FOR num IN 2..9
    LOOP
        IF MOD(num, 2) = 0 THEN
            dbms_output.put_line('?????? ' || num || '??');
            FOR row IN 1..9
            LOOP
                dbms_output.put_line(num || ' x ' || row || ' = ' || num*row);
            END LOOP;
            dbms_output.put_line('------------------------------------------------');
        END IF;
    END LOOP;
END;

BEGIN
    FOR num IN 2..9
    LOOP
        CONTINUE WHEN MOD(num, 2) = 1;
        dbms_output.put_line('?????? ' || num || '??');
        FOR row IN 1..9
        LOOP
            dbms_output.put_line(num || ' x ' || row || ' = ' || num*row);
        END LOOP;
        dbms_output.put_line('------------------------------------------------');
    END LOOP;
END;



-- 2. INSERT?? 300?? ??????? ??? ?????? ????????.
-- board??? ????? ??????? ???ù°??. (bno, writer, title ?¡À??? ????????.)
-- bno?? SEQUENCE?? ?¡À? ??©£?, writer?? title?? ????? ????? INSERT ?????? ?????.
-- ex) 1, test1, title1 -> 2 test2 title2 -> 3 test3 title3 ....

CREATE TABLE board(
    bno NUMBER PRIMARY KEY,
    writer VARCHAR2(30),
    title VARCHAR2(30)
);

CREATE SEQUENCE b_seq 
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 10000
    NOCYCLE
    NOCACHE;

DECLARE
    v_num NUMBER := 1;
BEGIN
    WHILE v_num <= 300
    LOOP
        INSERT INTO board
        VALUES(b_seq.NEXTVAL, 'test'||v_num, 'title'||v_num);
        v_num := v_num + 1;
    END LOOP;
END;

SELECT * FROM board
ORDER BY bno DESC;

COMMIT;











