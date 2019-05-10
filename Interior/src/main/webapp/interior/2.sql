      
use db_5ts;         
         
create table tb_cafe_list(         
bnum          integer        not null,         
cafe_name     varchar(255)   not null,         
cafe_url      varchar(255)    not null,         
cafe_hit_cnt  integer        default 0,         
cafe_score    decimal(7,2)   not null,         
cafe_good     integer        default 0,         
main_image    varchar(50)    not null         
) ENGINE=InnoDB DEFAULT CHARSET=utf8;         
         
create table tb_cafe_detail(         
dnum        integer        not null,         
bnum         integer        not null,      
cafe_name   varchar(255)   not null,         
title      varchar(50)    not null,      
hit_cnt      integer        default 0,      
good        integer        default 0,         
score      decimal(7,2)   not null,   
url         varchar(255)   not null,
category    varchar(50)    not null,         
title_image      varchar(50)    not null      
) ENGINE=InnoDB DEFAULT CHARSET=utf8;         
         
create table tb_cafe_comment(         
cnum         integer        not null,      
dnum      integer        not null,   
image      varchar(50)    not null,      
userid      varchar(50)    not null,      
contents      varchar(1500)  not null,      
score      integer        not null,   
write_time  timestamp      default current_timestamp         
) ENGINE=InnoDB DEFAULT CHARSET=utf8;         
         
create table tb_cafe_image(         
inum         integer        not null,      
dnum       integer        not null,      
cafe_image  varchar(255)   not null         
) ENGINE=InnoDB DEFAULT CHARSET=utf8;         
         
alter table tb_cafe_list add constraint pk_bnum primary key(bnum);         
alter table tb_cafe_detail add constraint pk_dnum primary key(dnum);         
alter table tb_cafe_comment add constraint pk_cnum primary key(cnum);         
alter table tb_cafe_image add constraint pk_inum primary key(inum);         
         
alter table tb_cafe_list modify bnum int not null auto_increment;         
alter table tb_cafe_detail modify dnum int not null auto_increment;         
alter table tb_cafe_comment modify cnum int not null auto_increment;         
alter table tb_cafe_image modify inum int not null auto_increment;         
         
select * from tb_cafe_list;         
         
insert into tb_cafe_list(cafe_name, cafe_url, cafe_score, main_image) values('bens', 'http://www.bens.co.kr/', '4.95', 'bens1.png');         
insert into tb_cafe_list(cafe_name, cafe_url, cafe_score, main_image) values('cherish', 'http://www.cgagu.com/','4.89', 'cherish1.png');         
insert into tb_cafe_list(cafe_name, cafe_url, cafe_score, main_image) values('aria', 'http://www.ariafurniture.co.kr/', '4.90', 'aria1.png');         
insert into tb_cafe_list(cafe_name, cafe_url, cafe_score, main_image) values('ramerit', 'https://ramerit.co.kr/','4.82', 'ramerit1.png');         
         
select * from tb_cafe_detail;         
         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('1', 'bens', 'LOFT 3단서랍장 (TS107A)', '5', 'http://bens.co.kr/shop/shopdetail.html?branduid=977&xcode=035&mcode=001&scode=&type=Y&sort=order&cur_code=035001&GfDT=aGh3UF4%3D', '침대', 'bens1014009000003.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('1', 'bens', '카라 협탁', '5', 'http://bens.co.kr/shop/shopdetail.html?branduid=982&xcode=035&mcode=001&scode=&type=Y&sort=order&cur_code=035001&GfDT=Zmx3UFg%3D', '협탁', 'bens1014009000006.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('1', 'bens', '바이런 수퍼킹 침대', '5', 'http://bens.co.kr/shop/shopdetail.html?branduid=1041&xcode=035&mcode=005&scode=&type=Y&sort=order&cur_code=035005&GfDT=bml0W11E', '수퍼킹 침대','bens1014005000046.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('1', 'bens', '디오 스툴', '5', 'http://bens.co.kr/shop/shopdetail.html?branduid=658680&xcode=035&mcode=001&scode=&type=Y&sort=order&cur_code=035001&GfDT=bWp3UFw%3D', '스툴', 'bens1014009000036.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('1', 'bens', '캐노바 침대', '5', 'http://bens.co.kr/shop/shopdetail.html?branduid=1059&xcode=035&mcode=001&scode=&type=Y&sort=order&cur_code=035001&GfDT=bm19W19E', '침대', 'bens1014006000001.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('2', 'cherish', '라포레 3인 소파 패브릭 라이트그레이', '5', 'http://www.cgagu.com/shop/shopdetail.html?branduid=21872&xcode=077&mcode=004&scode=&type=X&sort=manual&cur_code=077&GfDT=bm93U1k%3D', '소파', 'cherish0770040000422.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('2', 'cherish', '포켓 뉴스마트 모션베드 SS 침대 세트', '5', 'http://www.cgagu.com/shop/shopdetail.html?branduid=29433&xcode=075&mcode=001&scode=&type=X&sort=manual&cur_code=075001&GfDT=bmp3UFo%3D', '침대', 'cherish0750010000202.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('2', 'cherish', '브루노 4인 소파 베리오누벅 블루', '5', 'http://www.cgagu.com/shop/shopdetail.html?branduid=28984&xcode=077&mcode=003&scode=&type=X&sort=manual&cur_code=077&GfDT=am93UFo%3D', '소파', 'cherish0770030000492.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('2', 'cherish', '무이 소파테이블', '5', 'http://www.cgagu.com/shop/shopdetail.html?branduid=20048&xcode=079&mcode=002&scode=&type=X&sort=manual&cur_code=079&GfDT=aWt3UFg%3D', '테이블', 'cherish0790020000512.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('2', 'cherish', '네스트 인2 1인 리클라이너 소파 민트', '5', 'http://www.cgagu.com/shop/shopdetail.html?branduid=26974&xcode=077&mcode=005&scode=&type=X&sort=manual&cur_code=077&GfDT=amt3UA%3D%3D', '소파', 'cherish0770050000302.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('3', 'aria', 'KW-Q Bed Queen Panel Bed', '5', 'http://www.ariafurniture.co.kr/shop/item.php?it_id=1458631201&ca_id=1090', '퀸침대', '1458631201thumb-700_435x435.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('3', 'aria', 'B3604-54H-HB Queen Panel Bed', '5', 'http://www.ariafurniture.co.kr/shop/item.php?it_id=1448525665&ca_id=1090', '퀸침대', '1448525665thumb-700_435x435.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('3', 'aria', 'Gerda-1150-Beige Super Single Bed w/ Wood Slats', '5', 'http://www.ariafurniture.co.kr/shop/item.php?it_id=1452759419&ca_id=1020', '슈퍼/싱글침대', '1452759419thumb-700_0_435x435.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('3', 'aria', 'Perris-K King Panel Bed', '5', 'http://www.ariafurniture.co.kr/shop/item.php?it_id=1472799136&ca_id=10g0', '킹침대', '1472799136thumb-700_435x435.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('3', 'aria', 'Y3602-64H-HB Super Single Panel Bed', '5', 'http://www.ariafurniture.co.kr/shop/item.php?it_id=1430892847&ca_id=1020', '슈퍼/싱글침대', '1430892847thumb-700_435x435.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('4', 'ramerit', '아이나라인 엘더 원목침대 A (기본형)', '5', 'https://www.ramerit.co.kr/product/detail.html?product_no=164&cate_no=34&display_group=1', '침대', 'small201803164_shop1_294443.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('4', 'ramerit', '아이나 엘더 원목협탁 A', '5', 'https://www.ramerit.co.kr/product/detail.html?product_no=135&cate_no=48&display_group=1', '협탁', 'small201803135_shop1_947364.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('4', 'ramerit', '아이나 엘더 원목화장대 거울 SET', '5', 'https://www.ramerit.co.kr/product/detail.html?product_no=137&cate_no=89&display_group=1', '화장대', 'small201803137_shop1_177895.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('4', 'ramerit', '올리브 3인 가죽 소파 그린', '5', 'https://www.ramerit.co.kr/product/detail.html?product_no=176&cate_no=35&display_group=1', '소파', 'small201803176_shop1_635667.jpg');         
insert into tb_cafe_detail(bnum, cafe_name, title, score, url, category, title_image) values('4', 'ramerit', '아이나 5단 엘더 원목서랍장', '5', 'https://www.ramerit.co.kr/product/detail.html?product_no=118&cate_no=30&display_group=1', '서랍장', 'small201803118_shop1_726708.jpg');         
         
         
insert into tb_cafe_image(dnum, cafe_image) values('1', 'bens1014009000003.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('2', 'bens1014009000006.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('3', 'bens1014005000046.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('4', 'bens1014009000036.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('5', 'bens1014006000001.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('6', 'cherish0770040000422.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('7', 'cherish0750010000202.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('8', 'cherish0770030000492.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('9', 'cherish0790020000512.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('10','cherish0770050000302.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('11', '1458631201thumb-700_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('11', '1458631201thumb-700_1_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('11', '1458631201thumb-700_2_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('11', '1458631201thumb-700_3_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('11', '1458631201thumb-700_4_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('12', '1448525665thumb-700_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('12', '1448525665thumb-700_1_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('12', '1448525665thumb-700_2_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('13', '1452759419thumb-700_0_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('13', '1452759419thumb-700_1_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('13', '1452759419thumb-700_2_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('13', '1452759419thumb-700_3_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('14', '1472799136thumb-700_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('14', '1472799136thumb-700_1_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('14', '1472799136thumb-700_2_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('14', '1472799136thumb-700_3_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('14', '1472799136thumb-700_4_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('15', '1430892847thumb-700_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('15', '1430892847thumb-000_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('15', '1430892847thumb-700_1_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('15', '1430892847thumb-700_2_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('15', '1430892847thumb-700_3_435x435.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('16', 'small201803164_shop1_294443.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('16', 'extrasmall201803164_shop1_832615.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('16', 'extrasmall201803164_shop1_727055.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('17', 'small201803135_shop1_947364.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('18', 'small201803137_shop1_177895.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('18', 'extrasmall201803137_shop1_812279.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('18', 'extrasmall201803137_shop1_876352.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('19', 'small201803176_shop1_635667.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('20', 'small201803118_shop1_726708.jpg');         
insert into tb_cafe_image(dnum, cafe_image) values('20', 'extrasmall201803118_shop1_843041.jpg');         

select * from tb_cafe_comment;      