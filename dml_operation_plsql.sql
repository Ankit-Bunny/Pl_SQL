-- DML Operation using PLSQL 
-- Below code will insert same values in the store table but the primary key will be different.
-- Inserting Statment
begin
for i in 2..4 loop
insert into store(id,s_name,s_address,s_city)
values (i,'Sanik_Sweets','Nagar Bhawan','Buxar');
end loop;
end;

-- Updating Statement
begin
for i in 2..4 loop
update store set s_city = 'Buxar - bxr'
where id = i;
end loop;
end;

-- Insert multiple command here contact switching is done which is costly.
-- Contact switching because pl/sql engin is switching to sql query engin to insert a data every time loop is incrementing and its costiler and not performace tuning.
