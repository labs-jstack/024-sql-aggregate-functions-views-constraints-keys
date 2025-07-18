\c live024

---- Inserindo um usuário sem email
-- INSERT INTO customers(first_name) VALUES('Zezinho');

---- Modificando a coluna do email para não ser nula
---- Porém como acabamos de adicionar um registro com email nulo, a instrução abaixo não executará
---- Para isso rodamos um update para preencher o email null
-- UPDATE customers SET email = 'zezinho@email.com' WHERE id = 21;

-- ALTER TABLE customers ALTER COLUMN email SET NOT NULL;

---- Adicionando uma constraint na tabea customers 
-- ALTER TABLE customers ADD CONSTRAINT customers_email_unique UNIQUE(email);

-- ALTER TABLE customers DROP CONSTRAINT customers_email_unique;

ALTER TABLE orders ADD CHECK(amount >= 0);

SELECT constraint_name, constraint_type, table_name FROM information_schema.table_constraints WHERE table_schema = 'public';