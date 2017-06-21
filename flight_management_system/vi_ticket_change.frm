TYPE=VIEW
query=select `b`.`booknum` AS `booknum`,`b`.`customername` AS `customername`,`b`.`airlineno` AS `airlineno`,`b`.`departurecity` AS `departurecity`,`b`.`arrivecity` AS `arrivecity`,`a`.`departuredate` AS `departuredate`,`a`.`departuretime` AS `departuretime`,`b`.`shipno` AS `shipno`,`s`.`shipname` AS `shipname` from `flight_management_system`.`bookticket` `b` join `flight_management_system`.`airline` `a` join `flight_management_system`.`shipspace` `s` where ((`b`.`airlineno` = `a`.`airlineno`) and (`b`.`shipno` = `s`.`shipno`)) order by `b`.`booknum`
md5=e7eabd4dea8da64195e1a04511bb48ea
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2017-01-01 18:42:09
create-version=1
source=SELECT booknum, customername, b.airlineno, b.departurecity, b.arrivecity, departuredate, departuretime, b.shipno, shipname\nFROM bookticket b, airline a, shipspace s\nWHERE b.airlineno = a.airlineno AND b.shipno = s.shipno\nORDER BY booknum ASC
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `b`.`booknum` AS `booknum`,`b`.`customername` AS `customername`,`b`.`airlineno` AS `airlineno`,`b`.`departurecity` AS `departurecity`,`b`.`arrivecity` AS `arrivecity`,`a`.`departuredate` AS `departuredate`,`a`.`departuretime` AS `departuretime`,`b`.`shipno` AS `shipno`,`s`.`shipname` AS `shipname` from `flight_management_system`.`bookticket` `b` join `flight_management_system`.`airline` `a` join `flight_management_system`.`shipspace` `s` where ((`b`.`airlineno` = `a`.`airlineno`) and (`b`.`shipno` = `s`.`shipno`)) order by `b`.`booknum`
