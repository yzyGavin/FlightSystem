TYPE=VIEW
query=select `ap`.`airplaneno` AS `客机编号`,`ap`.`airplanetype` AS `客机类型`,`aw`.`airwayname` AS `航空公司`,`ap`.`buydate` AS `购买日期`,(year(now()) - year(`ap`.`buydate`)) AS `服役年数`,`ap`.`economyclassnum` AS `经济舱数量`,`ap`.`businessclassnum` AS `商务舱价格`,`ap`.`deluxeclassnum` AS `头等舱数量` from `flight_management_system`.`airplane` `ap` join `flight_management_system`.`airline` `al` join `flight_management_system`.`airway` `aw` where ((`ap`.`airlineno` = `al`.`airlineno`) and (`al`.`airwayshortname` = `aw`.`airwayshortname`))
md5=87893d88c79d4cb569324cdda74268e6
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2016-12-28 12:15:48
create-version=1
source=SELECT airplaneno 客机编号, airplanetype 客机类型, airwayname 航空公司, buydate 购买日期, year(now()) - year(buydate) 服役年数, economyclassnum 经济舱数量, businessclassnum 商务舱价格, deluxeclassnum 头等舱数量\nfrom airplane ap, airline al, airway aw\nwhere ap.airlineno = al.airlineno and al.airwayshortname = aw.airwayshortname
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `ap`.`airplaneno` AS `客机编号`,`ap`.`airplanetype` AS `客机类型`,`aw`.`airwayname` AS `航空公司`,`ap`.`buydate` AS `购买日期`,(year(now()) - year(`ap`.`buydate`)) AS `服役年数`,`ap`.`economyclassnum` AS `经济舱数量`,`ap`.`businessclassnum` AS `商务舱价格`,`ap`.`deluxeclassnum` AS `头等舱数量` from `flight_management_system`.`airplane` `ap` join `flight_management_system`.`airline` `al` join `flight_management_system`.`airway` `aw` where ((`ap`.`airlineno` = `al`.`airlineno`) and (`al`.`airwayshortname` = `aw`.`airwayshortname`))
