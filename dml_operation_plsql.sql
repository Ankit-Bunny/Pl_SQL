-- DML Operation using PLSQL 
-- Below code will insert same values in the store table but the primary key will be different.
begin
for i in 2..4 loop
insert into store(id,s_name,s_address,s_city)
values (i,'Sanik_Sweets','Nagar Bhawan','Buxar');
end loop;
end;
