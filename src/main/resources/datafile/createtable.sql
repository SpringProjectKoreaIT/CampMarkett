CREATE SEQUENCE SEQ_MEMBER;
CREATE TABLE MEMBERTABLE(
		IDX NUMBER(3),
		ID VARCHAR2(1000) PRIMARY KEY,
		PWD VARCHAR2(1000),
		NAME VARCHAR2(1000),
		GENDER VARCHAR2(50),
		EMAIL VARCHAR2(1000), 
		HOMETEL VARCHAR2(1000),
		MOBILETEL VARCHAR2(1000),
		ADDR VARCHAR2(2000)
);

INSERT INTO MEMBERTABLE VALUES(
 SEQ_MEMBER.NEXTVAL,
 'APPLE',
 '1111',
 '���',
 '��',
 'APPLE@APPLE.COM',
 '032-111-1111',
 '010-2222-2222',
 '��õ�� �������Ʈ 111�� 1101ȣ'
 );

INSERT INTO MEMBERTABLE VALUES(SEQ_MEMBER.NEXTVAL,'���Ⱥεκҳ���','1111','����','��','SDFSDF@NAVER.COM','032-11-111','010-222-2341','��õ�� ���泪�� 11ȣ');

CREATE SEQUENCE SEQ_Product;
CREATE TABLE ProductTABLE(
	idx NUMBER(3),
	ProductID VARCHAR2(1000) PRIMARY KEY,
	Price NUMBER(10),
	Stock NUMBER(3)
); 

INSERT INTO PRODUCTTABLE VALUES( 
SEQ_PRODUCT.NEXTVAL, 
'BBQ', 
30000,
300
);
INSERT INTO PRODUCTTABLE VALUES(
 SEQ_PRODUCT.NEXTVAL,
 '�δ��',
 16000,
 30
 );

CREATE SEQUENCE SEQ_Order;
CREATE TABLE OrderTABLE (
	OrderIdx NUMBER(3) PRIMARY KEY,
	MemberID VARCHAR2(100),
	ProductID VARCHAR2(1000),
	OrderDate DATE DEFAULT SYSDATE,
	Quantity NUMBER(3),
	TotalPrice NUMBER(7),
	FOREIGN KEY (MemberID)
 		   REFERENCES MEMBERTABLE (ID) ON DELETE CASCADE,
		FOREIGN KEY (ProductID)
 		   REFERENCES ProductTABLE(ProductID) ON DELETE CASCADE
);
 insert into ordertable values(seq_order.nextval,'APPLE','BBQ',sysdate,3,90000);


