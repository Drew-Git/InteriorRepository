
select inum from tb_interior where interior_img = '20175032354white.jpg' ;
delete from tb_interior where inum = 3299 ;
# 102, 506, 474, 464, 452, 337, 160 # 274, 226, 172, 160, 127, # 783, 780, 779, 755, 720, 657, 
# 901, 892, 879, 843, 841, 815 #2039, 1896, 1472, 929, 909, #3102 ,2685, 2643,  2618 , 2617, 2615, 2499,  2501, 2221 ,3299



create table tb_interior(
  inum integer not null auto_increment,
  R float8,
  G float8,
  B float8,
  color_name  text,
  interior_img text,
  interior_url text,
  color_score integer,
  primary key(inum)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
select * from tb_interior;
-- drop table tb_interior;




create table tb_furniture(
  fnum integer not null auto_increment,
  furniture_img text,
  write_time timestamp default current_timestamp,
  color_score integer,
  primary key(fnum)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
select * from tb_furniture;
LOAD DATA local INFILE 'D:/BigData/spring-workspace/Interior3/src/main/webapp/interior/rgb16clust.csv' INTO TABLE db_5ts.tb_interior FIELDS TERMINATED BY ','; 