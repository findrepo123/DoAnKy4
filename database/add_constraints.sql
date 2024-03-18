ALTER TABLE `accounts` ADD  CONSTRAINT `UC_Person` UNIQUE NONCLUSTERED 
(
	`email` ASC,
	`phone` ASC
)
;

ALTER TABLE `addresses` ADD UNIQUE NONCLUSTERED 
(
	`place` ASC
);
ALTER TABLE `atm` ADD  CONSTRAINT `UK_9aec1gew7v8m8urx47498jx52` UNIQUE NONCLUSTERED 
(
	`number` ASC
);

ALTER TABLE `authorities` ADD  CONSTRAINT `UKhtk0tjw6uf67w0vkhy5n3j1oq` UNIQUE NONCLUSTERED 
(
	`username` ASC,
	`roleid` ASC
)
;
ALTER TABLE `categories` ADD UNIQUE NONCLUSTERED 
(
	`id` ASC,
    	`name` ASC

);

ALTER TABLE atm
ADD CONSTRAINT FKorfx4klbkeq48q2cp4n09sj9f
FOREIGN KEY (username)
REFERENCES accounts(username)
ON DELETE CASCADE;
-- Add foreign key constraint to ATM table
-- ALTER TABLE atm
-- ADD CONSTRAINT FKorfx4klbkeq48q2cp4n09sj9f
-- FOREIGN KEY (username)
-- REFERENCES accounts(username);

-- Add foreign key constraint to Authorities table for roleid
ALTER TABLE authorities
ADD CONSTRAINT FKevi9708lm1k06pa4dugc91k7v
FOREIGN KEY (roleid)
REFERENCES roles(id);

-- Add foreign key constraint to Authorities table for username
ALTER TABLE authorities
ADD CONSTRAINT Fklw0sapcjvuxfa1kvyjw7jml88
FOREIGN KEY (username)
REFERENCES accounts(username);

-- Add foreign key constraint to Categorydetails table
ALTER TABLE categorydetails
ADD CONSTRAINT FKjvgs336thqdjsob207rd2rslx
FOREIGN KEY (categoryid)
REFERENCES categories(id);


-- Add foreign key constraint to Comments table for productid
ALTER TABLE comments
ADD CONSTRAINT FKdpyej8iigc8ml84qxns9mwvda
FOREIGN KEY (productid)
REFERENCES products(id);

-- Add foreign key constraint to Comments table for username
ALTER TABLE comments
ADD CONSTRAINT FKmtau98mcbrvrn12dod8amygdl
FOREIGN KEY (username)
REFERENCES accounts(username);

-- Add foreign key constraint to Histories table for username
ALTER TABLE histories
ADD CONSTRAINT FK6pqq8n14hj80civ7y3qh3lfw1
FOREIGN KEY (username)
REFERENCES accounts(username);

-- Add foreign key constraint to Notifications table for account_id
ALTER TABLE notifications
ADD CONSTRAINT FKqye0axqv18a6egslmba3ljtcm
FOREIGN KEY (account_id)
REFERENCES accounts(username);

-- Add foreign key constraint to Orderdetails table for productid
ALTER TABLE orderdetails
ADD CONSTRAINT FKaltatpxipsjtcih4d1h6bn0xr
FOREIGN KEY (productid)
REFERENCES products(id);

-- Add foreign key constraint to Orderdetails table for orderid
ALTER TABLE orderdetails
ADD CONSTRAINT FKj4gc2ja2otvwemf4rho2lp3s8
FOREIGN KEY (orderid)
REFERENCES orders(id);

-- Add foreign key constraint to Orders table for username
ALTER TABLE orders
ADD CONSTRAINT FKk3cjfcgb621qhahps1tre43e4
FOREIGN KEY (username)
REFERENCES accounts(username);

-- Add foreign key constraint to Orders table for status_id
ALTER TABLE orders
ADD CONSTRAINT FKnoettwqr56yaai4i8nwxg4huo
FOREIGN KEY (status_id)
REFERENCES status(id);

-- Add foreign key constraint to Products table for categoryid
ALTER TABLE products
ADD CONSTRAINT FK1krrsjgcawsfg8k8u4hm5gi8q
FOREIGN KEY (categoryid)
REFERENCES categories(id);