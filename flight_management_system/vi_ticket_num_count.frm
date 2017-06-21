TYPE=VIEW
query=select `p`.`airlineno` AS `airlineno`,`b`.`shipno` AS `shipno`,`p`.`economyclassnum` AS `economyclassnum`,`p`.`businessclassnum` AS `businessclassnum`,`p`.`deluxeclassnum` AS `deluxeclassnum` from `flight_management_system`.`bookticket` `b` join `flight_management_system`.`airplane` `p` where (`b`.`airlineno` = `p`.`airlineno`)
md5=d010c72933ee2f9cbd991de827e0598c
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2017-01-02 17:22:00
create-version=1
source=SELECT p.airlineno, shipno, economyclassnum, businessclassnum, deluxeclassnum\nFROM bookticket b, airplane p\nWHERE b.airlineno = p.airlineno
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `p`.`airlineno` AS `airlineno`,`b`.`shipno` AS `shipno`,`p`.`economyclassnum` AS `economyclassnum`,`p`.`businessclassnum` AS `businessclassnum`,`p`.`deluxeclassnum` AS `deluxeclassnum` from `flight_management_system`.`bookticket` `b` join `flight_management_system`.`airplane` `p` where (`b`.`airlineno` = `p`.`airlineno`)
