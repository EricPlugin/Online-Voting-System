create database online_voting_system;
use online_voting_system;
create table user(
  username varchar(15) primary key ,
  password varchar(15) not null,
  root int(5)not null
);
create table online_voting_system.match(
  match_id int(20) auto_increment,primary key(match_id),
  match_name varchar(20) not null ,
  match_now int(20) not null ,
  match_max int(20) not null
);
create table online_voting_system.player(
  player_id int(20) auto_increment,primary key(player_id),
  player_name varchar(15) not null ,
  telephone varchar(10) not null,
  match_id int(20) not null
);
create table online_voting_system.confrontation(
  confrontation_id int(20)auto_increment,primary key(confrontation_id),
  match_id int(20) not null,
  player_1_id int(20)not null ,
  player_1_votes int (20)not null ,
  player_2_id int(20)not null,
  player_2_votes int (20)not null,
  state int(5) not null
);
create table online_voting_system.winner(
  winner_id int(20)primary key ,
  winner_name varchar(15)not null ,
  telephone telephone varchar(10) not null,
  match_id int(20) not null
);