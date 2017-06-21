TYPE=VIEW
query=select `bt`.`booknum` AS `订票编号`,`bt`.`customerno` AS `客户编号`,`bt`.`customername` AS `客户姓名`,`ct`.`customertypename` AS `客户类型`,`bt`.`discountpercent` AS `折扣比例`,`bt`.`airlineno` AS `航班编号`,`x`.`countryname` AS `出发国家`,`bt`.`departurecity` AS `出发城市`,`y`.`countryname` AS `到达国家`,`bt`.`arrivecity` AS `到达城市`,`s`.`shipname` AS `舱位等级`,`bt`.`ticketprice` AS `票价`,(`bt`.`ticketprice` * (1 - (`bt`.`discountpercent` / 100))) AS `总价` from `flight_management_system`.`bookticket` `bt` join `flight_management_system`.`country` `x` join `flight_management_system`.`country` `y` join `flight_management_system`.`customertype` `ct` join `flight_management_system`.`shipspace` `s` where ((`bt`.`departurecountry` = `x`.`countryno`) and (`bt`.`arrivecountry` = `y`.`countryno`) and (`bt`.`customertypeno` = `ct`.`customertypeno`) and (`bt`.`discountpercent` = `ct`.`discountpercent`) and (`bt`.`shipno` = `s`.`shipno`))
md5=6098fc46daa75da561bd79efad93a69c
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2016-12-28 12:01:55
create-version=1
source=select booknum 订票编号, customerno 客户编号, bt.customername 客户姓名, customertypename 客户类型, \n  bt.discountpercent 折扣比例, airlineno 航班编号, x.countryname 出发国家, departurecity 出发城市, \n  y.countryname 到达国家, arrivecity 到达城市, shipname 舱位等级, ticketprice 票价, \n  ticketprice * (1 - bt.discountpercent / 100) 总价\nfrom bookticket bt, country x, country y, customertype ct, shipspace s\nwhere bt.departurecountry = x.countryno and bt.arrivecountry = y.countryno \n      and bt.customertypeno = ct.customertypeno and bt.discountpercent = ct.discountpercent \n      and bt.shipno = s.shipno
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `bt`.`booknum` AS `订票编号`,`bt`.`customerno` AS `客户编号`,`bt`.`customername` AS `客户姓名`,`ct`.`customertypename` AS `客户类型`,`bt`.`discountpercent` AS `折扣比例`,`bt`.`airlineno` AS `航班编号`,`x`.`countryname` AS `出发国家`,`bt`.`departurecity` AS `出发城市`,`y`.`countryname` AS `到达国家`,`bt`.`arrivecity` AS `到达城市`,`s`.`shipname` AS `舱位等级`,`bt`.`ticketprice` AS `票价`,(`bt`.`ticketprice` * (1 - (`bt`.`discountpercent` / 100))) AS `总价` from `flight_management_system`.`bookticket` `bt` join `flight_management_system`.`country` `x` join `flight_management_system`.`country` `y` join `flight_management_system`.`customertype` `ct` join `flight_management_system`.`shipspace` `s` where ((`bt`.`departurecountry` = `x`.`countryno`) and (`bt`.`arrivecountry` = `y`.`countryno`) and (`bt`.`customertypeno` = `ct`.`customertypeno`) and (`bt`.`discountpercent` = `ct`.`discountpercent`) and (`bt`.`shipno` = `s`.`shipno`))
