TYPE=VIEW
query=select `p`.`airplaneno` AS `airplaneno`,`p`.`airplanetype` AS `airplanetype`,`p`.`airlineno` AS `airlineno`,`l`.`departurecity` AS `departurecity`,`l`.`arrivecity` AS `arrivecity`,`l`.`departuredate` AS `departuredate`,`l`.`departuretime` AS `departuretime` from `flight_management_system`.`airplane` `p` join `flight_management_system`.`airline` `l` where (`p`.`airlineno` = `l`.`airlineno`)
md5=a3159a1f537461e6df409edb03318042
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2017-01-02 08:06:26
create-version=1
source=SELECT airplaneno, airplanetype, p.airlineno, departurecity, arrivecity, departuredate, departuretime\nFROM airplane p, airline l\nwhere p.airlineno = l.airlineno
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `p`.`airplaneno` AS `airplaneno`,`p`.`airplanetype` AS `airplanetype`,`p`.`airlineno` AS `airlineno`,`l`.`departurecity` AS `departurecity`,`l`.`arrivecity` AS `arrivecity`,`l`.`departuredate` AS `departuredate`,`l`.`departuretime` AS `departuretime` from `flight_management_system`.`airplane` `p` join `flight_management_system`.`airline` `l` where (`p`.`airlineno` = `l`.`airlineno`)
