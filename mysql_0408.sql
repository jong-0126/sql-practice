SELECT * FROM member WHERE member_name = '아이유';

CREATE INDEX idx_member_name ON member(member_name);

CREATE VIEW member_view
AS
	SELECT * FROM member;

SELECT * FROM member_view;

CREATE TABLE product (
	product_name VARCHAR(100) PRIMARY KEY NOT NULL,
    cost VARCHAR(100) NOT NULL,
    make_date DATETIME NOT NULL,
    company VARCHAR(20) NOT NULL,
    amount INT NULL
    );
     

INSERT INTO product(product_name, cost, make_date, company, amount) VALUES('삼각김밥', '800', NOW(), 'CJ', 22);


DELIMITER //
CREATE PROCEDURE myProc()
BEGIN
	SELECT * FROM member WHERE member_name = '나훈아';
	SELECT * FROM product WHERE product_name = '삼각김밥';
END //
DELIMITER ;

CALL myProc();

