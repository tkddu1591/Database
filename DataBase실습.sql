
/*ERD copy*/
create table if not exists customer
(
    cust_jumin varchar(20)  not null
        primary key,
    cust_name  varchar(20)  not null,
    cust_addr  varchar(100) not null,
    cust_birth date         null,
    cust_email varchar(50)  null unique,
    cust_phnum varchar(25)  not null,
    cust_job   varchar(30)  not null

);

create table if not exists account
(
    acc_id            varchar(14) not null
        primary key,
    cust_jumin        varchar(20) not null,
    acc_type          varchar(20) not null,
    acc_balance       int         not null,
    acc_card          char        not null,
    acc_register_date datetime    null,
    constraint account_customer_cust_jumin_fk
        foreign key (cust_jumin) references customer (cust_jumin)
);

create table if not exists card
(
    card_no            char(14)    null,
    cust_jumin         varchar(20) null,
    acc_id             varchar(14) null,
    card_register_date date        null,
    card_limit_money   int         null,
    card_approve_date  date        null,
    card_type          varchar(10) not null,
    constraint card_account_acc_id_fk
        foreign key (acc_id) references account (acc_id),
    constraint card_customer_cust_jumin_fk
        foreign key (cust_jumin) references customer (cust_jumin)
);

create table if not exists transaction
(
    trans_id      int auto_increment
        primary key,
    trans_acc_id  varchar(14) null,
    trans_type    varchar(20) null,
    trans_message varchar(20) null,
    trans_money   int         null,
    trans_date    datetime    not null,
    constraint transaction_account_acc_id_fk
        foreign key (trans_acc_id) references account (acc_id)
);

/*customer*/
INSERT INTO finance.customer (cust_jumin, cust_name, cust_addr, cust_birth, cust_email, cust_phnum, cust_job)

VALUES ('760121-1234567', '정우성', '서울', '1976-01-21', null, '010-1101-7601', '배우');

INSERT INTO finance.customer (cust_jumin, cust_name, cust_addr, cust_birth, cust_email, cust_phnum, cust_job)
VALUES ('750611-1234567', '이정재', '서울', '1975-06-11', null, '010-1102-7506', '배우');

INSERT INTO finance.customer (cust_jumin, cust_name, cust_addr, cust_birth, cust_email, cust_phnum, cust_job)
VALUES ('890530-1234567', '전지현', '대전', '1989-05-30', 'jjh@naver.com', '010-1103-8905', '자영업');

INSERT INTO finance.customer (cust_jumin, cust_name, cust_addr, cust_birth, cust_email, cust_phnum, cust_job)
VALUES ('790413-1234567', '이나영', '대전', '1979-04-13', 'lee@naver.com', '010-2101-7904', '회사원');

INSERT INTO finance.customer (cust_jumin, cust_name, cust_addr, cust_birth, cust_email, cust_phnum, cust_job)
VALUES ('660912-1234567', '원빈', '대전', '1966-09-12', 'one@daum.net', '010-2104-6609', '배우');

INSERT INTO finance.customer (cust_jumin, cust_name, cust_addr, cust_birth, cust_email, cust_phnum, cust_job)
VALUES ('790728-1234567', '장동건', '대구', '1979-07-28', 'jang@naver.com', '010-3101-7907', '배우');

INSERT INTO finance.customer (cust_jumin, cust_name, cust_addr, cust_birth, cust_email, cust_phnum, cust_job)
VALUES ('840615-1234567', '고소영', '대구', '1984-06-15', 'goso@daum.net', '010-4101-8406', '회사원');

INSERT INTO finance.customer (cust_jumin, cust_name, cust_addr, cust_birth, cust_email, cust_phnum, cust_job)
VALUES ('651021-1234567', '김연아', '대구', '1965-10-21', 'yuna@daum.net', '010-5101-6510', '운동선수');

INSERT INTO finance.customer (cust_jumin, cust_name, cust_addr, cust_birth, cust_email, cust_phnum, cust_job)
VALUES ('721128-1234567', '유재석', '부산', '1972-11-28', null, '010-6101-7211', '개그맨');

INSERT INTO finance.customer (cust_jumin, cust_name, cust_addr, cust_birth, cust_email, cust_phnum, cust_job)
VALUES ('920907-1234567', '강호동', '부산', '1992-09-07', null, '010-7103-9209', '개그맨');

INSERT INTO finance.customer (cust_jumin, cust_name, cust_addr, cust_birth, cust_email, cust_phnum, cust_job)
VALUES ('891209-1234567', '조인성', '광주', '1989-12-09', 'join@gmail.com', '010-7104-8912', '배우');

INSERT INTO finance.customer (cust_jumin, cust_name, cust_addr, cust_birth, cust_email, cust_phnum, cust_job)
VALUES ('770314-1234567', '강동원', '광주', '1977-03-14', 'dong@naver.com', '010-8101-7703', '배우');



/*Account*/

INSERT INTO finance.account (acc_id, cust_jumin, acc_type, acc_balance, acc_card, acc_register_date)
VALUES ('1011-1001-1001', '760121-1234567', '자유입출금', 4160000, 'Y', '2020-01-21 13:00:02');

INSERT INTO finance.account (acc_id, cust_jumin, acc_type, acc_balance, acc_card, acc_register_date)
VALUES ('1011-1001-1002', '890530-1234567', '자유입출금', 376000, 'Y', '2020-06-11 13:00:02');

INSERT INTO finance.account (acc_id, cust_jumin, acc_type, acc_balance, acc_card, acc_register_date)
VALUES ('1011-1001-1003', '790413-1234567', '자유입출금', 1200000, 'Y', '2020-05-30 13:00:02');

INSERT INTO finance.account (acc_id, cust_jumin, acc_type, acc_balance, acc_card, acc_register_date)
VALUES ('1011-2001-1004', '660912-1234567', '정기적금', 1000000, 'N', '2020-04-13 13:00:02');

INSERT INTO finance.account (acc_id, cust_jumin, acc_type, acc_balance, acc_card, acc_register_date)
VALUES ('1011-1002-1005', '840615-1234567', '자유입출금', 820000, 'Y', '2020-09-12 13:00:02');

INSERT INTO finance.account (acc_id, cust_jumin, acc_type, acc_balance, acc_card, acc_register_date)
VALUES ('1011-1002-1006', '651021-1234567', '자유입출금', 3520000, 'Y', '2020-07-28 13:00:02');

INSERT INTO finance.account (acc_id, cust_jumin, acc_type, acc_balance, acc_card, acc_register_date)
VALUES ('1011-1001-1007', '721128-1234567', '자유입출금', 7620500, 'Y', '2020-06-15 13:00:02');

INSERT INTO finance.account (acc_id, cust_jumin, acc_type, acc_balance, acc_card, acc_register_date)
VALUES ('1011-2001-1008', '920907-1234567', '정기적금', 3400000, 'N', '2020-10-21 13:00:02');

INSERT INTO finance.account (acc_id, cust_jumin, acc_type, acc_balance, acc_card, acc_register_date)
VALUES ('1011-1001-1009', '891209-1234567', '자유입출금', 1763000, 'Y', '2020-11-28 13:00:02');

INSERT INTO finance.account (acc_id, cust_jumin, acc_type, acc_balance, acc_card, acc_register_date)
VALUES ('1011-2001-1010', '770314-1234567', '자유입출금', 1080000, 'N', '2020-09-07 13:00:02');


/*Card*/

INSERT INTO finance.card (card_no, cust_jumin, acc_id, card_register_date, card_limit_money, card_approve_date,
                          card_type)
VALUES ('2111-1001-1001', '760121-1234567', '1011-1001-1001', '2020-01-21', 1000000, '2020-02-10', 'check');

INSERT INTO finance.card (card_no, cust_jumin, acc_id, card_register_date, card_limit_money, card_approve_date,
                          card_type)
VALUES ('2041-1001-1002', '890530-1234567', '1011-1001-1002', '2020-06-11', 3000000, '2020-06-15', 'check');

INSERT INTO finance.card (card_no, cust_jumin, acc_id, card_register_date, card_limit_money, card_approve_date,
                          card_type)
VALUES ('2011-1011-1003', '790413-1234567', '1011-1001-1003', '2020-05-30', 5000000, '2020-06-25', 'check');

INSERT INTO finance.card (card_no, cust_jumin, acc_id, card_register_date, card_limit_money, card_approve_date,
                          card_type)
VALUES ('2711-1001-1004', '660912-1234567', null, '2020-04-13', 1000000, '2020-05-10', 'credit');

INSERT INTO finance.card (card_no, cust_jumin, acc_id, card_register_date, card_limit_money, card_approve_date,
                          card_type)
VALUES ('2611-1001-1005', '840615-1234567', '1011-1002-1005', '2020-09-12', 1500000, '2020-10-10', 'check');

INSERT INTO finance.card (card_no, cust_jumin, acc_id, card_register_date, card_limit_money, card_approve_date,
                          card_type)
VALUES ('2781-1001-1006', '651021-1234567', '1011-1002-1006', '2020-07-28', 10000000, '2020-08-15', 'check');

INSERT INTO finance.card (card_no, cust_jumin, acc_id, card_register_date, card_limit_money, card_approve_date,
                          card_type)
VALUES ('2345-1001-1007', '721128-1234567', '1011-1001-1007', '2020-06-15', 2000000, '2020-07-25', 'check');

INSERT INTO finance.card (card_no, cust_jumin, acc_id, card_register_date, card_limit_money, card_approve_date,
                          card_type)
VALUES ('2221-1001-1008', '920907-1234567', null, '2020-10-21', 5000000, '2020-11-15', 'credit');

INSERT INTO finance.card (card_no, cust_jumin, acc_id, card_register_date, card_limit_money, card_approve_date,
                          card_type)
VALUES ('2144-1001-1009', '891209-1234567', '1011-1001-1009', '2020-11-28', 1000000, '2020-12-10', 'check');

INSERT INTO finance.card (card_no, cust_jumin, acc_id, card_register_date, card_limit_money, card_approve_date,
                          card_type)
VALUES ('2789-1001-1010', '770314-1234567', null, '2020-09-07', 1000000, '2020-10-10', 'credit');


/*Transaction*/

INSERT INTO finance.transaction (trans_id, trans_acc_id, trans_type, trans_message, trans_money, trans_date)
VALUES (1, '1011-1001-1001', '입금', '2월 정기급여', 3500000, '2020-02-10 12:36:12');

INSERT INTO finance.transaction (trans_id, trans_acc_id, trans_type, trans_message, trans_money, trans_date)
VALUES (2, '1011-1001-1003', '출금', 'ATM 출금', 300000, '2020-02-10 12:37:21');

INSERT INTO finance.transaction (trans_id, trans_acc_id, trans_type, trans_message, trans_money, trans_date)
VALUES (3, '1011-1001-1002', '입금', '2월 급여', 2800000, '2020-02-10 12:38:21');

INSERT INTO finance.transaction (trans_id, trans_acc_id, trans_type, trans_message, trans_money, trans_date)
VALUES (4, '1011-1001-1007', '출금', '2월 공과금', 116200, '2020-02-10 12:39:12');

INSERT INTO finance.transaction (trans_id, trans_acc_id, trans_type, trans_message, trans_money, trans_date)
VALUES (5, '1011-1002-1005', '출금', 'ATM 출금', 50000, '2020-02-10 12:40:12');

INSERT INTO finance.transaction (trans_id, trans_acc_id, trans_type, trans_message, trans_money, trans_date)
VALUES (6, '1011-1001-1007', '입금', '홍길동 이체', 400000, '2020-02-10 12:41:12');

INSERT INTO finance.transaction (trans_id, trans_acc_id, trans_type, trans_message, trans_money, trans_date)
VALUES (7, '1011-1001-1007', '출금', '2월 관리비', 145000, '2020-02-10 12:42:12');

INSERT INTO finance.transaction (trans_id, trans_acc_id, trans_type, trans_message, trans_money, trans_date)
VALUES (8, '1011-1001-1002', '입금', '홍길동 입금', 200000, '2020-02-10 12:43:12');

INSERT INTO finance.transaction (trans_id, trans_acc_id, trans_type, trans_message, trans_money, trans_date)
VALUES (9, '1011-1001-1009', '입금', '연말정산 환급', 112000, '2020-02-10 12:44:12');

INSERT INTO finance.transaction (trans_id, trans_acc_id, trans_type, trans_message, trans_money, trans_date)
VALUES (10, '1011-1002-1006', '출금', 'ATM 출금', 30000, '2020-02-10 12:45:12');

/*작업 4*/

select * from customer;
select * from card;
select * from account;
select * from transaction;
select  c.cust_name, c.cust_addr, c.cust_birth, c.cust_email, c.cust_phnum, c.cust_job
    from card as a join customer c on c.cust_jumin = a.cust_jumin where a.card_type='credit';

select c.cust_name,c.cust_jumin,c.cust_phnum,c.cust_addr
from account as a join customer c on c.cust_jumin = a.cust_jumin where a.acc_balance>=4000000;