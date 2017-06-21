TYPE=VIEW
query=select `c`.`customerno` AS `customerno`,`c`.`customername` AS `customername`,`c`.`customertypeno` AS `customertypeno`,`ct`.`customertypename` AS `customertypename`,`ct`.`discountpercent` AS `discountpercent`,`c`.`identifynum` AS `identifynum`,`c`.`sex` AS `sex`,`c`.`phonenum` AS `phonenum` from `flight_management_system`.`customer` `c` join `flight_management_system`.`customertype` `ct` where (`c`.`customertypeno` = `ct`.`customertypeno`) order by `c`.`customerno`
md5=5a1781e4ab11e8af26f2e7c4269f4a9c
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2017-01-02 19:37:24
create-version=1
source=SELECT customerno, customername, c.customertypeno, customertypename, discountpercent, identifynum, sex, phonenum\nFROM customer c, customertype ct\nWHERE c.customertypeno = ct.customertypeno\nORDER BY customerno ASC
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `c`.`customerno` AS `customerno`,`c`.`customername` AS `customername`,`c`.`customertypeno` AS `customertypeno`,`ct`.`customertypename` AS `customertypename`,`ct`.`discountpercent` AS `discountpercent`,`c`.`identifynum` AS `identifynum`,`c`.`sex` AS `sex`,`c`.`phonenum` AS `phonenum` from `flight_management_system`.`customer` `c` join `flight_management_system`.`customertype` `ct` where (`c`.`customertypeno` = `ct`.`customertypeno`) order by `c`.`customerno`
