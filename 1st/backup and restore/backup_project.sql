prompt PL/SQL Developer Export Tables for user C##ORIPERL@XE
prompt Created by USER on יום ראשון 02 יוני 2024
set feedback off
set define off

prompt Dropping BOOKING...
drop table BOOKING cascade constraints;
prompt Creating BOOKING...
create table BOOKING
(
  booking_id   NUMBER(38) not null,
  journey_id   NUMBER(38) not null,
  booking_date DATE not null,
  passenger_id NUMBER(38) not null,
  seller_id    NUMBER(38) not null,
  ticket_id    NUMBER(38) not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BOOKING
  add primary key (BOOKING_ID)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BOOKING
  add foreign key (PASSENGER_ID)
  references PASSENGER (PASSENGER_ID);
alter table BOOKING
  add foreign key (SELLER_ID)
  references TICKETSELLER (SELLER_ID);
alter table BOOKING
  add foreign key (TICKET_ID)
  references TICKET (TICKET_ID);

prompt Disabling triggers for BOOKING...
alter table BOOKING disable all triggers;
prompt Disabling foreign key constraints for BOOKING...
alter table BOOKING disable constraint SYS_C008550;
alter table BOOKING disable constraint SYS_C008551;
alter table BOOKING disable constraint SYS_C008552;
prompt Loading BOOKING...
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1101, 1101, to_date('11-06-2023', 'dd-mm-yyyy'), 3554560914, 325237214, 256940);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1102, 1102, to_date('30-05-2023', 'dd-mm-yyyy'), 1241083848, 297909520, 258498);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1000, 1000, to_date('08-06-2023', 'dd-mm-yyyy'), 1573871528, 234413401, 200137);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1001, 1001, to_date('24-06-2023', 'dd-mm-yyyy'), 4139544263, 214945813, 200361);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1002, 1002, to_date('27-06-2023', 'dd-mm-yyyy'), 379982361, 332113182, 200561);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1003, 1003, to_date('06-06-2023', 'dd-mm-yyyy'), 334694516, 207083715, 200579);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1004, 1004, to_date('18-06-2023', 'dd-mm-yyyy'), 342850352, 386178461, 201113);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1005, 1005, to_date('08-06-2023', 'dd-mm-yyyy'), 211756555, 217056502, 201163);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1006, 1006, to_date('14-06-2023', 'dd-mm-yyyy'), 277761157, 281154307, 201894);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1007, 1007, to_date('13-06-2023', 'dd-mm-yyyy'), 254655746, 320345744, 202546);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1008, 1008, to_date('19-06-2023', 'dd-mm-yyyy'), 259520122, 325389215, 202775);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1009, 1009, to_date('04-06-2023', 'dd-mm-yyyy'), 351897231, 210470680, 203216);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1010, 1010, to_date('12-06-2023', 'dd-mm-yyyy'), 296014467, 335673295, 203421);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1011, 1011, to_date('29-06-2023', 'dd-mm-yyyy'), 270448006, 310266508, 203874);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1012, 1012, to_date('03-06-2023', 'dd-mm-yyyy'), 318636111, 335012305, 204263);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1013, 1013, to_date('04-06-2023', 'dd-mm-yyyy'), 317148159, 272173133, 204805);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1014, 1014, to_date('13-06-2023', 'dd-mm-yyyy'), 223177804, 355616367, 204870);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1015, 1015, to_date('11-06-2023', 'dd-mm-yyyy'), 301472986, 363641567, 205059);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1016, 1016, to_date('24-06-2023', 'dd-mm-yyyy'), 373968030, 341750599, 205586);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1017, 1017, to_date('16-06-2023', 'dd-mm-yyyy'), 300000000, 274810074, 205785);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1018, 1018, to_date('17-06-2023', 'dd-mm-yyyy'), 300000001, 227710098, 205893);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1019, 1019, to_date('20-06-2023', 'dd-mm-yyyy'), 300000002, 362506458, 206191);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1020, 1020, to_date('06-06-2023', 'dd-mm-yyyy'), 300000003, 209218853, 206616);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1021, 1021, to_date('15-06-2023', 'dd-mm-yyyy'), 300000004, 374271549, 206690);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1022, 1022, to_date('22-06-2023', 'dd-mm-yyyy'), 300000005, 381386109, 207566);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1023, 1023, to_date('31-05-2023', 'dd-mm-yyyy'), 300000006, 380347031, 208308);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1024, 1024, to_date('12-06-2023', 'dd-mm-yyyy'), 300000007, 287359609, 211623);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1025, 1025, to_date('11-06-2023', 'dd-mm-yyyy'), 300000008, 277303119, 212311);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1026, 1026, to_date('18-06-2023', 'dd-mm-yyyy'), 300000009, 288367846, 212885);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1027, 1027, to_date('08-06-2023', 'dd-mm-yyyy'), 300000010, 316073442, 213289);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1028, 1028, to_date('04-06-2023', 'dd-mm-yyyy'), 300000011, 202318062, 214126);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1029, 1029, to_date('02-06-2023', 'dd-mm-yyyy'), 300000012, 296490615, 214552);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1030, 1030, to_date('27-06-2023', 'dd-mm-yyyy'), 300000013, 363888243, 214701);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1031, 1031, to_date('27-06-2023', 'dd-mm-yyyy'), 300000014, 271851580, 214952);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1032, 1032, to_date('08-06-2023', 'dd-mm-yyyy'), 300000015, 378494685, 217895);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1033, 1033, to_date('06-06-2023', 'dd-mm-yyyy'), 300000016, 217461665, 218086);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1034, 1034, to_date('27-06-2023', 'dd-mm-yyyy'), 300000017, 385006976, 219997);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1035, 1035, to_date('24-06-2023', 'dd-mm-yyyy'), 300000018, 288385654, 220954);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1036, 1036, to_date('18-06-2023', 'dd-mm-yyyy'), 300000019, 381994314, 221131);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1037, 1037, to_date('04-06-2023', 'dd-mm-yyyy'), 300000020, 220647788, 221198);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1038, 1038, to_date('05-06-2023', 'dd-mm-yyyy'), 300000021, 318996086, 221448);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1039, 1039, to_date('19-06-2023', 'dd-mm-yyyy'), 300000022, 378745713, 221484);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1040, 1040, to_date('14-06-2023', 'dd-mm-yyyy'), 300000023, 382190490, 222599);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1041, 1041, to_date('08-06-2023', 'dd-mm-yyyy'), 300000024, 357450766, 223134);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1042, 1042, to_date('15-06-2023', 'dd-mm-yyyy'), 300000025, 382262708, 224137);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1043, 1043, to_date('31-05-2023', 'dd-mm-yyyy'), 300000026, 329333824, 225168);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1044, 1044, to_date('07-06-2023', 'dd-mm-yyyy'), 300000027, 295623764, 225184);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1045, 1045, to_date('22-06-2023', 'dd-mm-yyyy'), 300000028, 258157080, 225649);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1046, 1046, to_date('20-06-2023', 'dd-mm-yyyy'), 300000029, 237777658, 226597);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1047, 1047, to_date('23-06-2023', 'dd-mm-yyyy'), 300000030, 304082692, 226730);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1048, 1048, to_date('02-06-2023', 'dd-mm-yyyy'), 300000031, 343952758, 226832);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1049, 1049, to_date('16-06-2023', 'dd-mm-yyyy'), 300000032, 226444135, 227283);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1050, 1050, to_date('11-06-2023', 'dd-mm-yyyy'), 300000033, 326478636, 227660);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1051, 1051, to_date('16-06-2023', 'dd-mm-yyyy'), 300000034, 295480431, 229674);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1052, 1052, to_date('08-06-2023', 'dd-mm-yyyy'), 300000035, 345176686, 231694);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1053, 1053, to_date('19-06-2023', 'dd-mm-yyyy'), 300000036, 362822032, 232061);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1054, 1054, to_date('21-06-2023', 'dd-mm-yyyy'), 300000037, 205616776, 232131);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1055, 1055, to_date('05-06-2023', 'dd-mm-yyyy'), 300000038, 313515270, 232664);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1056, 1056, to_date('31-05-2023', 'dd-mm-yyyy'), 300000039, 234848134, 233082);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1057, 1057, to_date('07-06-2023', 'dd-mm-yyyy'), 300000040, 296854630, 233243);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1058, 1058, to_date('03-06-2023', 'dd-mm-yyyy'), 300000041, 214515321, 233295);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1059, 1059, to_date('04-06-2023', 'dd-mm-yyyy'), 300000042, 211133927, 233459);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1060, 1060, to_date('22-06-2023', 'dd-mm-yyyy'), 300000043, 371494810, 233794);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1061, 1061, to_date('10-06-2023', 'dd-mm-yyyy'), 300000044, 255503675, 234262);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1062, 1062, to_date('29-06-2023', 'dd-mm-yyyy'), 300000045, 295709145, 234640);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1063, 1063, to_date('26-06-2023', 'dd-mm-yyyy'), 300000046, 372307406, 235481);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1064, 1064, to_date('24-06-2023', 'dd-mm-yyyy'), 300000047, 227969024, 236016);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1065, 1065, to_date('10-06-2023', 'dd-mm-yyyy'), 300000048, 252439705, 236715);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1066, 1066, to_date('29-06-2023', 'dd-mm-yyyy'), 300000049, 296933887, 237614);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1067, 1067, to_date('08-06-2023', 'dd-mm-yyyy'), 300000050, 356297958, 237657);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1068, 1068, to_date('10-06-2023', 'dd-mm-yyyy'), 300000051, 387943673, 239221);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1069, 1069, to_date('18-06-2023', 'dd-mm-yyyy'), 300000052, 310663510, 239240);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1070, 1070, to_date('19-06-2023', 'dd-mm-yyyy'), 300000053, 236933452, 240835);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1071, 1071, to_date('14-06-2023', 'dd-mm-yyyy'), 300000054, 239220981, 240857);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1072, 1072, to_date('27-06-2023', 'dd-mm-yyyy'), 300000055, 274273432, 242282);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1073, 1073, to_date('21-06-2023', 'dd-mm-yyyy'), 300000056, 308281893, 243663);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1074, 1074, to_date('20-06-2023', 'dd-mm-yyyy'), 300000057, 205554610, 243817);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1075, 1075, to_date('23-06-2023', 'dd-mm-yyyy'), 300000058, 321495574, 244178);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1076, 1076, to_date('25-06-2023', 'dd-mm-yyyy'), 300000059, 233439957, 244416);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1077, 1077, to_date('18-06-2023', 'dd-mm-yyyy'), 300000060, 364781468, 244497);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1078, 1078, to_date('26-06-2023', 'dd-mm-yyyy'), 300000061, 376097465, 244674);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1079, 1079, to_date('24-06-2023', 'dd-mm-yyyy'), 300000062, 237277522, 245624);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1080, 1080, to_date('16-06-2023', 'dd-mm-yyyy'), 300000063, 307799804, 246151);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1081, 1081, to_date('24-06-2023', 'dd-mm-yyyy'), 300000064, 262644266, 246170);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1082, 1082, to_date('02-06-2023', 'dd-mm-yyyy'), 300000065, 325390520, 246410);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1083, 1083, to_date('05-06-2023', 'dd-mm-yyyy'), 300000066, 259468455, 248439);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1084, 1084, to_date('08-06-2023', 'dd-mm-yyyy'), 300000067, 234853838, 248697);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1085, 1085, to_date('01-06-2023', 'dd-mm-yyyy'), 300000068, 246648879, 248698);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1086, 1086, to_date('01-06-2023', 'dd-mm-yyyy'), 300000069, 324559120, 249583);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1087, 1087, to_date('04-06-2023', 'dd-mm-yyyy'), 3903371002, 231394919, 250149);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1088, 1088, to_date('29-06-2023', 'dd-mm-yyyy'), 1879700281, 320256878, 250849);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1089, 1089, to_date('24-06-2023', 'dd-mm-yyyy'), 2441850588, 270700908, 251245);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1090, 1090, to_date('23-06-2023', 'dd-mm-yyyy'), 2864541163, 280955985, 251504);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1091, 1091, to_date('13-06-2023', 'dd-mm-yyyy'), 4056867800, 343751129, 252438);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1092, 1092, to_date('10-06-2023', 'dd-mm-yyyy'), 186866407, 218786324, 253014);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1093, 1093, to_date('13-06-2023', 'dd-mm-yyyy'), 746479019, 319536448, 253053);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1094, 1094, to_date('08-06-2023', 'dd-mm-yyyy'), 3143480143, 229222618, 253223);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1095, 1095, to_date('09-06-2023', 'dd-mm-yyyy'), 2747677398, 232899139, 253634);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1096, 1096, to_date('08-06-2023', 'dd-mm-yyyy'), 872969459, 304988522, 254067);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1097, 1097, to_date('19-06-2023', 'dd-mm-yyyy'), 2655330264, 300142382, 254205);
commit;
prompt 100 records committed...
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1098, 1098, to_date('14-06-2023', 'dd-mm-yyyy'), 2389134866, 236950311, 255356);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1099, 1099, to_date('22-06-2023', 'dd-mm-yyyy'), 1720691470, 334120188, 256411);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1100, 1100, to_date('20-06-2023', 'dd-mm-yyyy'), 2908034953, 292721604, 256601);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1103, 1103, to_date('21-06-2023', 'dd-mm-yyyy'), 1383563457, 350910955, 258532);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1104, 1104, to_date('14-06-2023', 'dd-mm-yyyy'), 917662982, 260313579, 258996);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1105, 1105, to_date('20-06-2023', 'dd-mm-yyyy'), 4279766685, 358656201, 259651);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1106, 1106, to_date('10-06-2023', 'dd-mm-yyyy'), 4070415692, 263316337, 260182);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1107, 1107, to_date('25-06-2023', 'dd-mm-yyyy'), 43741307, 388918507, 260861);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1108, 1108, to_date('26-06-2023', 'dd-mm-yyyy'), 1099185040, 355554389, 261679);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1109, 1109, to_date('07-06-2023', 'dd-mm-yyyy'), 3035600398, 329984528, 262517);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1110, 1110, to_date('23-06-2023', 'dd-mm-yyyy'), 3997273524, 289104838, 264231);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1111, 1111, to_date('03-06-2023', 'dd-mm-yyyy'), 2163649097, 280607651, 264672);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1112, 1112, to_date('06-06-2023', 'dd-mm-yyyy'), 3266985349, 252240713, 265028);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1113, 1113, to_date('17-06-2023', 'dd-mm-yyyy'), 1490835305, 353282291, 265664);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1114, 1114, to_date('12-06-2023', 'dd-mm-yyyy'), 2637819983, 234674022, 266414);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1115, 1115, to_date('07-06-2023', 'dd-mm-yyyy'), 1948950048, 274254467, 266880);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1116, 1116, to_date('17-06-2023', 'dd-mm-yyyy'), 2515842397, 237492254, 267055);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1117, 1117, to_date('20-06-2023', 'dd-mm-yyyy'), 3954106081, 352245013, 267411);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1118, 1118, to_date('09-06-2023', 'dd-mm-yyyy'), 4284641519, 296078129, 269579);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1119, 1119, to_date('02-06-2023', 'dd-mm-yyyy'), 1447266928, 228359755, 269838);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1120, 1120, to_date('05-06-2023', 'dd-mm-yyyy'), 4292899919, 346558251, 270157);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1121, 1121, to_date('12-06-2023', 'dd-mm-yyyy'), 3182428857, 341643467, 270464);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1122, 1122, to_date('21-06-2023', 'dd-mm-yyyy'), 1691007647, 264129045, 271073);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1123, 1123, to_date('18-06-2023', 'dd-mm-yyyy'), 940595999, 200076168, 272070);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1124, 1124, to_date('11-06-2023', 'dd-mm-yyyy'), 2845853303, 279332987, 274241);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1125, 1125, to_date('04-06-2023', 'dd-mm-yyyy'), 2165764715, 382386541, 274497);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1126, 1126, to_date('30-05-2023', 'dd-mm-yyyy'), 3571026378, 355379591, 275336);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1127, 1127, to_date('28-06-2023', 'dd-mm-yyyy'), 2127673954, 233742748, 275611);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1128, 1128, to_date('03-06-2023', 'dd-mm-yyyy'), 2141673170, 220299024, 276188);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1129, 1129, to_date('19-06-2023', 'dd-mm-yyyy'), 675810060, 225050898, 277084);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1130, 1130, to_date('24-06-2023', 'dd-mm-yyyy'), 4131434005, 341456397, 277566);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1131, 1131, to_date('09-06-2023', 'dd-mm-yyyy'), 14814539, 243120652, 278613);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1132, 1132, to_date('26-06-2023', 'dd-mm-yyyy'), 2118179539, 261116928, 278958);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1133, 1133, to_date('12-06-2023', 'dd-mm-yyyy'), 28268369, 224221194, 279796);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1134, 1134, to_date('22-06-2023', 'dd-mm-yyyy'), 1174302048, 209711155, 280109);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1135, 1135, to_date('17-06-2023', 'dd-mm-yyyy'), 3135876155, 358423787, 280748);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1136, 1136, to_date('06-06-2023', 'dd-mm-yyyy'), 554260379, 352580218, 280838);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1137, 1137, to_date('18-06-2023', 'dd-mm-yyyy'), 3689513631, 213484577, 280924);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1138, 1138, to_date('15-06-2023', 'dd-mm-yyyy'), 3408806016, 315658972, 282022);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1139, 1139, to_date('31-05-2023', 'dd-mm-yyyy'), 1715075258, 256738120, 282054);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1140, 1140, to_date('27-06-2023', 'dd-mm-yyyy'), 116474885, 290154315, 282225);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1141, 1141, to_date('02-06-2023', 'dd-mm-yyyy'), 3202065817, 298423242, 282232);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1142, 1142, to_date('12-06-2023', 'dd-mm-yyyy'), 1220471043, 365172580, 282365);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1143, 1143, to_date('16-06-2023', 'dd-mm-yyyy'), 1749509824, 221923419, 282744);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1144, 1144, to_date('08-06-2023', 'dd-mm-yyyy'), 225961850, 234818209, 283508);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1145, 1145, to_date('06-06-2023', 'dd-mm-yyyy'), 1296197165, 352448787, 284124);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1146, 1146, to_date('08-06-2023', 'dd-mm-yyyy'), 2111217503, 221901164, 284760);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1147, 1147, to_date('10-06-2023', 'dd-mm-yyyy'), 2340213410, 267591151, 285166);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1148, 1148, to_date('13-06-2023', 'dd-mm-yyyy'), 4264224831, 228427626, 285589);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1149, 1149, to_date('12-06-2023', 'dd-mm-yyyy'), 191393017, 367822102, 286275);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1150, 1150, to_date('01-06-2023', 'dd-mm-yyyy'), 3091734977, 262882544, 286423);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1151, 1151, to_date('02-06-2023', 'dd-mm-yyyy'), 2400502670, 354252310, 286548);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1152, 1152, to_date('11-06-2023', 'dd-mm-yyyy'), 3867040414, 250318415, 286981);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1153, 1153, to_date('31-05-2023', 'dd-mm-yyyy'), 4032224694, 251702571, 287133);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1154, 1154, to_date('04-06-2023', 'dd-mm-yyyy'), 2854517838, 382817463, 287258);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1155, 1155, to_date('12-06-2023', 'dd-mm-yyyy'), 929206898, 219228918, 287362);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1156, 1156, to_date('15-06-2023', 'dd-mm-yyyy'), 4274484785, 319368928, 288052);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1157, 1157, to_date('08-06-2023', 'dd-mm-yyyy'), 1944228016, 364570311, 290567);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1158, 1158, to_date('29-06-2023', 'dd-mm-yyyy'), 209999444, 214974740, 290598);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1159, 1159, to_date('08-06-2023', 'dd-mm-yyyy'), 2171326129, 235422949, 290628);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1160, 1160, to_date('01-06-2023', 'dd-mm-yyyy'), 1700335718, 383240133, 290713);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1161, 1161, to_date('24-06-2023', 'dd-mm-yyyy'), 1747014656, 345865205, 291820);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1162, 1162, to_date('01-06-2023', 'dd-mm-yyyy'), 3105782945, 334196039, 292365);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1163, 1163, to_date('30-05-2023', 'dd-mm-yyyy'), 2218215705, 202536414, 292646);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1164, 1164, to_date('21-06-2023', 'dd-mm-yyyy'), 683986443, 354012211, 293063);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1165, 1165, to_date('19-06-2023', 'dd-mm-yyyy'), 880915287, 279186496, 293579);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1166, 1166, to_date('22-06-2023', 'dd-mm-yyyy'), 16630229, 264968973, 294531);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1167, 1167, to_date('04-06-2023', 'dd-mm-yyyy'), 175901514, 241836382, 294631);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1168, 1168, to_date('21-06-2023', 'dd-mm-yyyy'), 3000391211, 316936386, 295791);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1169, 1169, to_date('24-06-2023', 'dd-mm-yyyy'), 2585543413, 316896662, 297159);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1170, 1170, to_date('02-06-2023', 'dd-mm-yyyy'), 2761848852, 375037348, 297586);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1171, 1171, to_date('15-06-2023', 'dd-mm-yyyy'), 791072108, 223058663, 297661);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1172, 1172, to_date('27-06-2023', 'dd-mm-yyyy'), 750332103, 226520741, 297770);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1173, 1173, to_date('18-06-2023', 'dd-mm-yyyy'), 2132466374, 251473344, 299980);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1174, 1174, to_date('15-06-2023', 'dd-mm-yyyy'), 2563622969, 342517245, 300049);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1175, 1175, to_date('22-06-2023', 'dd-mm-yyyy'), 1162078782, 279543919, 301174);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1176, 1176, to_date('21-06-2023', 'dd-mm-yyyy'), 1790631476, 351668768, 301396);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1177, 1177, to_date('25-06-2023', 'dd-mm-yyyy'), 2499086167, 378453080, 302711);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1178, 1178, to_date('22-06-2023', 'dd-mm-yyyy'), 3838034560, 231987717, 303183);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1179, 1179, to_date('28-06-2023', 'dd-mm-yyyy'), 2659036125, 265199943, 304607);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1180, 1180, to_date('18-06-2023', 'dd-mm-yyyy'), 3633182606, 359089400, 304661);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1181, 1181, to_date('24-06-2023', 'dd-mm-yyyy'), 1721112606, 293310565, 304802);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1182, 1182, to_date('01-06-2023', 'dd-mm-yyyy'), 4108380694, 382524856, 307284);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1183, 1183, to_date('29-06-2023', 'dd-mm-yyyy'), 1515581915, 234383859, 308883);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1184, 1184, to_date('26-06-2023', 'dd-mm-yyyy'), 118976950, 291697284, 308940);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1185, 1185, to_date('10-06-2023', 'dd-mm-yyyy'), 3030217035, 292117233, 309155);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1186, 1186, to_date('30-05-2023', 'dd-mm-yyyy'), 3488016959, 348147944, 309834);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1187, 1187, to_date('13-06-2023', 'dd-mm-yyyy'), 1747392301, 273298003, 312159);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1188, 1188, to_date('27-06-2023', 'dd-mm-yyyy'), 3224426277, 286222029, 312333);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1189, 1189, to_date('21-06-2023', 'dd-mm-yyyy'), 2000809820, 213322864, 312614);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1190, 1190, to_date('04-06-2023', 'dd-mm-yyyy'), 443234907, 218646495, 312727);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1191, 1191, to_date('06-06-2023', 'dd-mm-yyyy'), 3189841920, 338993209, 314173);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1192, 1192, to_date('01-06-2023', 'dd-mm-yyyy'), 937385985, 291745197, 315006);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1193, 1193, to_date('23-06-2023', 'dd-mm-yyyy'), 1142950160, 295504003, 315937);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1194, 1194, to_date('08-06-2023', 'dd-mm-yyyy'), 1781354773, 286256884, 316747);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1195, 1195, to_date('09-06-2023', 'dd-mm-yyyy'), 3907058574, 239573283, 317898);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1196, 1196, to_date('21-06-2023', 'dd-mm-yyyy'), 509672752, 338383773, 318149);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1197, 1197, to_date('20-06-2023', 'dd-mm-yyyy'), 1393501725, 313422914, 318220);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1198, 1198, to_date('03-06-2023', 'dd-mm-yyyy'), 2260158743, 201157338, 318228);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1199, 1199, to_date('24-06-2023', 'dd-mm-yyyy'), 3082585767, 316694395, 318244);
commit;
prompt 200 records committed...
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1200, 1200, to_date('22-06-2023', 'dd-mm-yyyy'), 1877959785, 242838870, 320413);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1201, 1201, to_date('12-06-2023', 'dd-mm-yyyy'), 1660146012, 332240843, 320865);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1202, 1202, to_date('23-06-2023', 'dd-mm-yyyy'), 3979804712, 326250050, 321292);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1203, 1203, to_date('27-06-2023', 'dd-mm-yyyy'), 582588412, 208953132, 321442);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1204, 1204, to_date('14-06-2023', 'dd-mm-yyyy'), 3173876124, 345028424, 321559);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1205, 1205, to_date('03-06-2023', 'dd-mm-yyyy'), 620223331, 387229316, 321758);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1206, 1206, to_date('21-06-2023', 'dd-mm-yyyy'), 2418851966, 259199134, 323236);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1207, 1207, to_date('08-06-2023', 'dd-mm-yyyy'), 3481561594, 342256992, 323658);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1208, 1208, to_date('31-05-2023', 'dd-mm-yyyy'), 220372518, 357522613, 323926);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1209, 1209, to_date('25-06-2023', 'dd-mm-yyyy'), 4157143176, 243823245, 324295);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1210, 1210, to_date('30-05-2023', 'dd-mm-yyyy'), 2779816091, 367193204, 324534);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1211, 1211, to_date('02-06-2023', 'dd-mm-yyyy'), 1201267855, 200771028, 325716);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1212, 1212, to_date('17-06-2023', 'dd-mm-yyyy'), 2703360325, 297000767, 326187);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1213, 1213, to_date('30-05-2023', 'dd-mm-yyyy'), 234257385, 250359573, 326661);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1214, 1214, to_date('12-06-2023', 'dd-mm-yyyy'), 2029500891, 257401303, 327117);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1215, 1215, to_date('21-06-2023', 'dd-mm-yyyy'), 221412715, 209534435, 327311);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1216, 1216, to_date('04-06-2023', 'dd-mm-yyyy'), 2929262243, 294448518, 327313);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1217, 1217, to_date('16-06-2023', 'dd-mm-yyyy'), 708880321, 353345218, 327703);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1218, 1218, to_date('14-06-2023', 'dd-mm-yyyy'), 1295334620, 313590950, 327842);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1219, 1219, to_date('01-06-2023', 'dd-mm-yyyy'), 2420932006, 237340794, 327952);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1220, 1220, to_date('11-06-2023', 'dd-mm-yyyy'), 2721361582, 308313920, 328298);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1221, 1221, to_date('22-06-2023', 'dd-mm-yyyy'), 238313927, 282598062, 329005);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1222, 1222, to_date('25-06-2023', 'dd-mm-yyyy'), 2649231766, 316877033, 329850);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1223, 1223, to_date('03-06-2023', 'dd-mm-yyyy'), 2073397479, 315975743, 330304);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1224, 1224, to_date('25-06-2023', 'dd-mm-yyyy'), 1629072520, 242341315, 331052);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1225, 1225, to_date('05-06-2023', 'dd-mm-yyyy'), 2373393757, 351104744, 331725);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1226, 1226, to_date('19-06-2023', 'dd-mm-yyyy'), 1155533144, 236070328, 332607);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1227, 1227, to_date('25-06-2023', 'dd-mm-yyyy'), 2333424436, 289405820, 333053);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1228, 1228, to_date('22-06-2023', 'dd-mm-yyyy'), 1848932145, 257301681, 333412);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1229, 1229, to_date('11-06-2023', 'dd-mm-yyyy'), 3292746234, 271938993, 333939);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1230, 1230, to_date('23-06-2023', 'dd-mm-yyyy'), 3068711309, 340594367, 334772);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1231, 1231, to_date('13-06-2023', 'dd-mm-yyyy'), 3517253153, 284012229, 334886);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1232, 1232, to_date('07-06-2023', 'dd-mm-yyyy'), 3611290723, 353338208, 334999);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1233, 1233, to_date('08-06-2023', 'dd-mm-yyyy'), 2944875005, 282084259, 335224);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1234, 1234, to_date('31-05-2023', 'dd-mm-yyyy'), 823918207, 306439412, 335506);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1235, 1235, to_date('03-06-2023', 'dd-mm-yyyy'), 1888219726, 328463277, 335660);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1236, 1236, to_date('02-06-2023', 'dd-mm-yyyy'), 901432435, 247145869, 337928);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1237, 1237, to_date('12-06-2023', 'dd-mm-yyyy'), 3461336247, 360504390, 339261);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1238, 1238, to_date('16-06-2023', 'dd-mm-yyyy'), 667710806, 263122301, 339979);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1239, 1239, to_date('10-06-2023', 'dd-mm-yyyy'), 1860377559, 349319230, 340551);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1240, 1240, to_date('03-06-2023', 'dd-mm-yyyy'), 1279348624, 235703717, 341768);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1241, 1241, to_date('08-06-2023', 'dd-mm-yyyy'), 3457912328, 215306111, 341774);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1242, 1242, to_date('22-06-2023', 'dd-mm-yyyy'), 1030882184, 317120894, 341909);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1243, 1243, to_date('03-06-2023', 'dd-mm-yyyy'), 2189110660, 295963344, 342305);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1244, 1244, to_date('03-06-2023', 'dd-mm-yyyy'), 3030370212, 365778672, 342428);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1245, 1245, to_date('15-06-2023', 'dd-mm-yyyy'), 145406197, 292337047, 344750);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1246, 1246, to_date('23-06-2023', 'dd-mm-yyyy'), 3032558076, 264751878, 344944);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1247, 1247, to_date('23-06-2023', 'dd-mm-yyyy'), 4097297588, 385952818, 345455);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1248, 1248, to_date('27-06-2023', 'dd-mm-yyyy'), 670841603, 215919530, 345475);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1249, 1249, to_date('13-06-2023', 'dd-mm-yyyy'), 3092043234, 305063038, 347525);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1250, 1250, to_date('19-06-2023', 'dd-mm-yyyy'), 2517659001, 304960689, 347562);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1251, 1251, to_date('14-06-2023', 'dd-mm-yyyy'), 524583443, 369383417, 347733);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1252, 1252, to_date('30-05-2023', 'dd-mm-yyyy'), 4209255256, 315159983, 347818);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1253, 1253, to_date('02-06-2023', 'dd-mm-yyyy'), 3303430975, 383068508, 347873);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1254, 1254, to_date('02-06-2023', 'dd-mm-yyyy'), 4134052510, 379992281, 347981);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1255, 1255, to_date('27-06-2023', 'dd-mm-yyyy'), 1148855233, 368361520, 348727);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1256, 1256, to_date('31-05-2023', 'dd-mm-yyyy'), 2195239809, 380149339, 348848);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1257, 1257, to_date('23-06-2023', 'dd-mm-yyyy'), 3238496450, 294023629, 349074);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1258, 1258, to_date('26-06-2023', 'dd-mm-yyyy'), 490180534, 379411520, 349099);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1259, 1259, to_date('03-06-2023', 'dd-mm-yyyy'), 900040387, 385177335, 349703);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1260, 1260, to_date('25-06-2023', 'dd-mm-yyyy'), 449644944, 239929754, 350947);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1261, 1261, to_date('01-06-2023', 'dd-mm-yyyy'), 3533811218, 221462028, 351026);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1262, 1262, to_date('27-06-2023', 'dd-mm-yyyy'), 1218862098, 260441923, 351081);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1263, 1263, to_date('11-06-2023', 'dd-mm-yyyy'), 1150216031, 370273040, 351124);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1264, 1264, to_date('11-06-2023', 'dd-mm-yyyy'), 2623671494, 245078686, 353090);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1265, 1265, to_date('11-06-2023', 'dd-mm-yyyy'), 1082024660, 358212799, 353284);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1266, 1266, to_date('29-06-2023', 'dd-mm-yyyy'), 3212917977, 325091518, 354193);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1267, 1267, to_date('07-06-2023', 'dd-mm-yyyy'), 3704443836, 318599595, 354851);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1268, 1268, to_date('21-06-2023', 'dd-mm-yyyy'), 4136582605, 285435332, 355023);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1269, 1269, to_date('06-06-2023', 'dd-mm-yyyy'), 428074911, 232830547, 355220);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1270, 1270, to_date('09-06-2023', 'dd-mm-yyyy'), 3994028077, 232034549, 355503);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1271, 1271, to_date('24-06-2023', 'dd-mm-yyyy'), 381605407, 290455974, 355607);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1272, 1272, to_date('06-06-2023', 'dd-mm-yyyy'), 2261379361, 388129809, 356241);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1273, 1273, to_date('26-06-2023', 'dd-mm-yyyy'), 2998668774, 253867252, 356294);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1274, 1274, to_date('13-06-2023', 'dd-mm-yyyy'), 1715394225, 308717810, 356322);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1275, 1275, to_date('02-06-2023', 'dd-mm-yyyy'), 3992596192, 300404573, 357246);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1276, 1276, to_date('07-06-2023', 'dd-mm-yyyy'), 762098278, 215133805, 357550);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1277, 1277, to_date('05-06-2023', 'dd-mm-yyyy'), 4263432723, 214329655, 358995);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1278, 1278, to_date('10-06-2023', 'dd-mm-yyyy'), 2387702559, 226660320, 359321);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1279, 1279, to_date('07-06-2023', 'dd-mm-yyyy'), 1294033638, 255356533, 359768);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1280, 1280, to_date('18-06-2023', 'dd-mm-yyyy'), 4289386642, 337051483, 359769);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1281, 1281, to_date('18-06-2023', 'dd-mm-yyyy'), 3170169411, 376165958, 359770);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1282, 1282, to_date('11-06-2023', 'dd-mm-yyyy'), 2589336619, 220415119, 359771);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1283, 1283, to_date('11-06-2023', 'dd-mm-yyyy'), 408119777, 360420742, 359772);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1284, 1284, to_date('05-06-2023', 'dd-mm-yyyy'), 2745029688, 227369348, 359773);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1285, 1285, to_date('04-06-2023', 'dd-mm-yyyy'), 3999013901, 352125561, 359774);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1286, 1286, to_date('15-06-2023', 'dd-mm-yyyy'), 395745494, 388161917, 359775);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1287, 1287, to_date('07-06-2023', 'dd-mm-yyyy'), 3384845406, 368610255, 359776);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1288, 1288, to_date('20-06-2023', 'dd-mm-yyyy'), 1571758849, 318883867, 359777);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1289, 1289, to_date('17-06-2023', 'dd-mm-yyyy'), 2201884681, 359835609, 359778);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1290, 1290, to_date('03-06-2023', 'dd-mm-yyyy'), 2930896282, 309399354, 359779);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1291, 1291, to_date('21-06-2023', 'dd-mm-yyyy'), 3244876693, 277999888, 359780);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1292, 1292, to_date('01-06-2023', 'dd-mm-yyyy'), 2801048856, 311525561, 359781);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1293, 1293, to_date('05-06-2023', 'dd-mm-yyyy'), 1711596415, 350438065, 359782);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1294, 1294, to_date('16-06-2023', 'dd-mm-yyyy'), 3357212618, 312705624, 359783);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1295, 1295, to_date('27-06-2023', 'dd-mm-yyyy'), 3500429192, 377428731, 359784);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1296, 1296, to_date('07-06-2023', 'dd-mm-yyyy'), 2177147130, 218298341, 359785);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1297, 1297, to_date('03-06-2023', 'dd-mm-yyyy'), 1310860904, 351631101, 359786);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1298, 1298, to_date('09-06-2023', 'dd-mm-yyyy'), 2546024439, 264036200, 359787);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1299, 1299, to_date('01-06-2023', 'dd-mm-yyyy'), 2695624626, 299341333, 359788);
commit;
prompt 300 records committed...
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1300, 1300, to_date('21-06-2023', 'dd-mm-yyyy'), 723619990, 233552819, 359789);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1301, 1301, to_date('08-06-2023', 'dd-mm-yyyy'), 1153830371, 310000000, 359790);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1302, 1302, to_date('16-06-2023', 'dd-mm-yyyy'), 3893286587, 310000001, 359791);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1303, 1303, to_date('13-06-2023', 'dd-mm-yyyy'), 82937339, 310000002, 359792);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1304, 1304, to_date('06-06-2023', 'dd-mm-yyyy'), 1017840928, 310000003, 359793);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1305, 1305, to_date('30-05-2023', 'dd-mm-yyyy'), 4271323511, 310000004, 359794);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1306, 1306, to_date('10-06-2023', 'dd-mm-yyyy'), 505370118, 310000005, 359795);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1307, 1307, to_date('05-06-2023', 'dd-mm-yyyy'), 3872777923, 310000006, 359796);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1308, 1308, to_date('18-06-2023', 'dd-mm-yyyy'), 1625454938, 310000007, 359797);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1309, 1309, to_date('27-06-2023', 'dd-mm-yyyy'), 2457452168, 310000008, 359798);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1310, 1310, to_date('18-06-2023', 'dd-mm-yyyy'), 2267746773, 310000009, 359799);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1311, 1311, to_date('12-06-2023', 'dd-mm-yyyy'), 3806033862, 310000010, 359800);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1312, 1312, to_date('01-06-2023', 'dd-mm-yyyy'), 400764289, 310000011, 359801);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1313, 1313, to_date('29-06-2023', 'dd-mm-yyyy'), 3545515586, 310000012, 359802);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1314, 1314, to_date('27-06-2023', 'dd-mm-yyyy'), 3834351364, 310000013, 359803);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1315, 1315, to_date('26-06-2023', 'dd-mm-yyyy'), 1013696666, 310000014, 359804);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1316, 1316, to_date('19-06-2023', 'dd-mm-yyyy'), 3388722296, 310000015, 359805);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1317, 1317, to_date('08-06-2023', 'dd-mm-yyyy'), 196310980, 310000016, 359806);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1318, 1318, to_date('25-06-2023', 'dd-mm-yyyy'), 3025067115, 310000017, 359807);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1319, 1319, to_date('12-06-2023', 'dd-mm-yyyy'), 4823046, 310000018, 359808);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1320, 1320, to_date('16-06-2023', 'dd-mm-yyyy'), 657469100, 310000019, 359809);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1321, 1321, to_date('30-05-2023', 'dd-mm-yyyy'), 3513889593, 310000020, 359810);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1322, 1322, to_date('26-06-2023', 'dd-mm-yyyy'), 562736699, 310000021, 359811);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1323, 1323, to_date('17-06-2023', 'dd-mm-yyyy'), 276551217, 310000022, 359812);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1324, 1324, to_date('08-06-2023', 'dd-mm-yyyy'), 4170852646, 310000023, 359813);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1325, 1325, to_date('29-06-2023', 'dd-mm-yyyy'), 238671426, 310000024, 359814);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1326, 1326, to_date('17-06-2023', 'dd-mm-yyyy'), 2310616106, 310000025, 359815);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1327, 1327, to_date('07-06-2023', 'dd-mm-yyyy'), 4044514624, 310000026, 359816);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1328, 1328, to_date('22-06-2023', 'dd-mm-yyyy'), 397181319, 310000027, 359817);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1329, 1329, to_date('12-06-2023', 'dd-mm-yyyy'), 982716585, 310000028, 359818);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1330, 1330, to_date('22-06-2023', 'dd-mm-yyyy'), 1556219250, 310000029, 359819);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1331, 1331, to_date('28-06-2023', 'dd-mm-yyyy'), 3584288395, 310000030, 359820);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1332, 1332, to_date('08-06-2023', 'dd-mm-yyyy'), 1998832504, 310000031, 359821);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1333, 1333, to_date('22-06-2023', 'dd-mm-yyyy'), 2611671527, 310000032, 359822);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1334, 1334, to_date('02-06-2023', 'dd-mm-yyyy'), 1928912117, 310000033, 359823);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1335, 1335, to_date('02-06-2023', 'dd-mm-yyyy'), 3940023093, 310000034, 359824);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1336, 1336, to_date('09-06-2023', 'dd-mm-yyyy'), 2369112239, 310000035, 359825);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1337, 1337, to_date('28-06-2023', 'dd-mm-yyyy'), 81557478, 310000036, 359826);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1338, 1338, to_date('31-05-2023', 'dd-mm-yyyy'), 142186532, 310000037, 359827);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1339, 1339, to_date('06-06-2023', 'dd-mm-yyyy'), 3196158797, 310000038, 359828);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1340, 1340, to_date('05-06-2023', 'dd-mm-yyyy'), 3970642656, 310000039, 359829);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1341, 1341, to_date('15-06-2023', 'dd-mm-yyyy'), 2699849518, 310000040, 359830);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1342, 1342, to_date('30-05-2023', 'dd-mm-yyyy'), 1272943148, 310000041, 359831);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1343, 1343, to_date('15-06-2023', 'dd-mm-yyyy'), 2112001926, 310000042, 359832);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1344, 1344, to_date('04-06-2023', 'dd-mm-yyyy'), 3071216489, 310000043, 359833);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1345, 1345, to_date('21-06-2023', 'dd-mm-yyyy'), 4173111480, 310000044, 359834);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1346, 1346, to_date('26-06-2023', 'dd-mm-yyyy'), 4159326597, 310000045, 359835);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1347, 1347, to_date('09-06-2023', 'dd-mm-yyyy'), 944023186, 310000046, 359836);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1348, 1348, to_date('02-06-2023', 'dd-mm-yyyy'), 476547254, 310000047, 359837);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1349, 1349, to_date('31-05-2023', 'dd-mm-yyyy'), 2932990645, 310000048, 359838);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1350, 1350, to_date('19-06-2023', 'dd-mm-yyyy'), 660929753, 310000049, 359839);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1351, 1351, to_date('11-06-2023', 'dd-mm-yyyy'), 1112726679, 310000050, 359840);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1352, 1352, to_date('20-06-2023', 'dd-mm-yyyy'), 3924827205, 310000051, 359841);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1353, 1353, to_date('29-06-2023', 'dd-mm-yyyy'), 1967453781, 310000052, 359842);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1354, 1354, to_date('18-06-2023', 'dd-mm-yyyy'), 1642574897, 310000053, 359843);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1355, 1355, to_date('30-05-2023', 'dd-mm-yyyy'), 155663756, 310000054, 359844);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1356, 1356, to_date('12-06-2023', 'dd-mm-yyyy'), 2494857483, 310000055, 359845);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1357, 1357, to_date('09-06-2023', 'dd-mm-yyyy'), 3463401023, 310000056, 359846);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1358, 1358, to_date('29-06-2023', 'dd-mm-yyyy'), 1688709964, 310000057, 359847);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1359, 1359, to_date('20-06-2023', 'dd-mm-yyyy'), 3781592932, 310000058, 360186);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1360, 1360, to_date('31-05-2023', 'dd-mm-yyyy'), 2498253907, 310000059, 360459);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1361, 1361, to_date('21-06-2023', 'dd-mm-yyyy'), 855321991, 310000060, 360889);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1362, 1362, to_date('09-06-2023', 'dd-mm-yyyy'), 1604649332, 310000061, 360991);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1363, 1363, to_date('07-06-2023', 'dd-mm-yyyy'), 3321500208, 310000062, 361814);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1364, 1364, to_date('25-06-2023', 'dd-mm-yyyy'), 468108540, 310000063, 362218);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1365, 1365, to_date('11-06-2023', 'dd-mm-yyyy'), 425783601, 310000064, 362585);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1366, 1366, to_date('18-06-2023', 'dd-mm-yyyy'), 1471488100, 310000065, 363782);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1367, 1367, to_date('25-06-2023', 'dd-mm-yyyy'), 1951815574, 310000066, 364232);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1368, 1368, to_date('19-06-2023', 'dd-mm-yyyy'), 2277859555, 310000067, 366610);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1369, 1369, to_date('17-06-2023', 'dd-mm-yyyy'), 3560536687, 310000068, 366837);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1370, 1370, to_date('21-06-2023', 'dd-mm-yyyy'), 3117624861, 310000069, 366935);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1371, 1371, to_date('20-06-2023', 'dd-mm-yyyy'), 3904415813, 310000070, 367307);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1372, 1372, to_date('09-06-2023', 'dd-mm-yyyy'), 2753157145, 310000071, 367909);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1373, 1373, to_date('15-06-2023', 'dd-mm-yyyy'), 3883784645, 310000072, 368749);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1374, 1374, to_date('29-06-2023', 'dd-mm-yyyy'), 3296988353, 310000073, 368758);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1375, 1375, to_date('29-06-2023', 'dd-mm-yyyy'), 1664409612, 310000074, 372197);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1376, 1376, to_date('06-06-2023', 'dd-mm-yyyy'), 4291952742, 310000075, 372315);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1377, 1377, to_date('16-06-2023', 'dd-mm-yyyy'), 1903082893, 310000076, 373297);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1378, 1378, to_date('25-06-2023', 'dd-mm-yyyy'), 1114723475, 310000077, 373619);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1379, 1379, to_date('31-05-2023', 'dd-mm-yyyy'), 752773406, 310000078, 373729);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1380, 1380, to_date('06-06-2023', 'dd-mm-yyyy'), 841567993, 310000079, 375014);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1381, 1381, to_date('05-06-2023', 'dd-mm-yyyy'), 1801185272, 234413401, 376626);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1382, 1382, to_date('19-06-2023', 'dd-mm-yyyy'), 2873700409, 214945813, 376900);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1383, 1383, to_date('13-06-2023', 'dd-mm-yyyy'), 1313078341, 332113182, 377628);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1384, 1384, to_date('15-06-2023', 'dd-mm-yyyy'), 2788966181, 207083715, 377698);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1385, 1385, to_date('28-06-2023', 'dd-mm-yyyy'), 2485263056, 386178461, 378711);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1386, 1386, to_date('24-06-2023', 'dd-mm-yyyy'), 2171424292, 217056502, 378885);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1387, 1387, to_date('12-06-2023', 'dd-mm-yyyy'), 3551736206, 281154307, 380512);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1388, 1388, to_date('31-05-2023', 'dd-mm-yyyy'), 622994605, 320345744, 380933);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1389, 1389, to_date('27-06-2023', 'dd-mm-yyyy'), 56045864, 325389215, 381067);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1390, 1390, to_date('23-06-2023', 'dd-mm-yyyy'), 499848229, 210470680, 381422);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1391, 1391, to_date('31-05-2023', 'dd-mm-yyyy'), 2146024878, 335673295, 382058);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1392, 1392, to_date('11-06-2023', 'dd-mm-yyyy'), 3613982088, 310266508, 383198);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1393, 1393, to_date('02-06-2023', 'dd-mm-yyyy'), 3996108394, 335012305, 383794);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1394, 1394, to_date('12-06-2023', 'dd-mm-yyyy'), 717220180, 272173133, 384407);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1395, 1395, to_date('23-06-2023', 'dd-mm-yyyy'), 3771158295, 355616367, 385754);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1396, 1396, to_date('07-06-2023', 'dd-mm-yyyy'), 2128813517, 363641567, 386163);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1397, 1397, to_date('16-06-2023', 'dd-mm-yyyy'), 681250929, 341750599, 386254);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1398, 1398, to_date('20-06-2023', 'dd-mm-yyyy'), 2256772699, 274810074, 386651);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1399, 1399, to_date('19-06-2023', 'dd-mm-yyyy'), 4184162999, 227710098, 386915);
commit;
prompt 400 records committed...
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1400, 1400, to_date('14-06-2023', 'dd-mm-yyyy'), 84919454, 362506458, 387007);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1401, 1401, to_date('27-06-2023', 'dd-mm-yyyy'), 3937385977, 209218853, 387418);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1402, 1402, to_date('09-06-2023', 'dd-mm-yyyy'), 3981901827, 374271549, 387567);
insert into BOOKING (booking_id, journey_id, booking_date, passenger_id, seller_id, ticket_id)
values (1403, 1403, to_date('10-06-2023', 'dd-mm-yyyy'), 2467349848, 381386109, 387947);
commit;
prompt 404 records loaded
prompt Enabling foreign key constraints for BOOKING...
alter table BOOKING enable constraint SYS_C008550;
alter table BOOKING enable constraint SYS_C008551;
alter table BOOKING enable constraint SYS_C008552;
prompt Enabling triggers for BOOKING...
alter table BOOKING enable all triggers;

set feedback on
set define on
prompt Done
