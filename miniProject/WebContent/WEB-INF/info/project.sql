-- 테이블 삭제 먼저 하기
drop table msgMember;
drop table store;
drop table menu;
drop table menuReview;
drop table msgMemberMenu;
drop sequence menuNo_seq;
drop sequence reNo_seq;

-- 회원 관리 테이블
create table msgMember(
 mId varchar2(100) primary key,
 mPass varchar2(100) not null,
 mNick varchar2(100) not null
);


-- 음식점 테이블
create table store(
 storeName varchar2(100) primary key,
 storeLoc varchar2(100) not null,
 storeTel number not null,
 storePic varchar2(100) not null,
 openHour varchar2(100) not null
);

-- 메뉴 테이블
create table menu(
 menuNo number primary key,
 storeName varchar2(100) not null,
 menuName varchar2(100) not null,
 menuPrice number not null,
 menuPic varchar2(200) not null,
 constraint fk_storeName foreign key(storeName) references store(storeName)
);

-- 메뉴 번호 시퀀스
create sequence menuNo_seq;

-- 메뉴 리뷰 테이블
create table menuReview(
 reNo number primary key,
 menuNo number not null,
 mId varchar2(100) not null,
 review clob not null,
 grade number not null,
 time_posted date not null
);

-- 리뷰등록번호 시퀀스
create sequence reNo_seq;

-- 찜한 메뉴 테이블
create table msgMemberMenu(
 menuNo number not null,
 mId varchar2(100) not null,
 constraint fk_menuNo_2 foreign key(menuNo) references menu(menuNo),
 constraint fk_mId_2 foreign key(mId) references msgMember(mId),
 constraint pk_menuNo_mId primary key(menuNo,mId)
);

insert into msgMember(mId,mPass,mNick)values('java',1234,'코스타');
select * from msgMember;

insert into store(storeName,storeLoc,storeTel,storePic,openHour)
values('쭈꾸미볶음집','유스페이스1동',03112345678,'store.jpg','월요일~금요일 10시~8시');
select * from store;

insert into menu(menuNo,storeName,menuName,menuPrice,menuPic)
values(menuNo_seq.nextval,'쭈꾸미볶음집','쭈꾸미불볶음',6000,'/dish.jpg');
select * from menu;

insert into menuReview(reNo,menuNo,mId,review,grade,time_posted)
values(reNo_seq.nextval,2,'java','음식이 맵지만 불맛이 살아있습니다',3,sysdate);
select * from menuReview;

insert into msgMemberMenu(menuNo, mId) values(1,'java');
select * from msgMemberMenu m, menu n where m.menuNo = n.menuNo;
commit