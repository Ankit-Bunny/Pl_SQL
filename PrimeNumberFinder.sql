SET SERVEROUTPUT ON;

-- Loop for printing the number is prime or not
declare
v_num number := 7;
v_is_prime boolean := true;
begin
for i in 2..v_num-1
    loop
        if mod(v_num, i) = 0 then
            dbms_output.put_line(v_num || ' is not a prime number');
            v_is_prime := false;
            goto endpoint;
        end if;
    end loop;
    if v_is_prime then
        dbms_output.put_line(v_num || ' is a prime number');
    end if;
    <<endpoint>>
    dbms_output.put_line('Check Complete');
end;
