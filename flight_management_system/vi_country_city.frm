TYPE=VIEW
query=select `ci`.`countryno` AS `countryno`,`co`.`countryname` AS `countryname`,`ci`.`provincename` AS `provincename`,`ci`.`cityname` AS `cityname` from `flight_management_system`.`country` `co` join `flight_management_system`.`city` `ci` where (`co`.`countryno` = `ci`.`countryno`)
md5=3d335e3d1f54931d07acdc0e82207a31
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2017-01-02 19:58:10
create-version=1
source=SELECT ci.countryno, countryname, provincename, cityname\nFROM country co, city ci\nWHERE co.countryno = ci.countryno
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `ci`.`countryno` AS `countryno`,`co`.`countryname` AS `countryname`,`ci`.`provincename` AS `provincename`,`ci`.`cityname` AS `cityname` from `flight_management_system`.`country` `co` join `flight_management_system`.`city` `ci` where (`co`.`countryno` = `ci`.`countryno`)
