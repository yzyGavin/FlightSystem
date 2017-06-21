TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER tri_airline_ticket AFTER UPDATE\nON airline FOR EACH ROW\nBEGIN\n  IF new.departurecity <> old.departurecity\n    THEN UPDATE bookticket\n          SET departurecity = new.departurecity, departurecountry = (SELECT countryno FROM city WHERE cityname = new.departurecity)\n          WHERE airlineno = new.airlineno;\n  END IF;\n  IF new.arrivecity <> old.arrivecity\n    THEN UPDATE bookticket\n          SET arrivecity = new.arrivecity, arrivecountry = (SELECT countryno FROM city WHERE cityname = new.arrivecity)\n          WHERE airlineno = new.airlineno;\n  END IF;\n  IF (SELECT shipno FROM bookticket WHERE airlineno = new.airlineno) = 1\n    THEN UPDATE bookticket\n          SET ticketprice = new.deluxeclassprice\n          WHERE airlineno = new.airlineno;\n  END IF;\n  IF (SELECT shipno FROM bookticket WHERE airlineno = new.airlineno) = 2\n    THEN UPDATE bookticket\n          SET ticketprice = new.businessclassprice\n          WHERE airlineno = new.airlineno;\n  END IF;\n  IF (SELECT shipno FROM bookticket WHERE airlineno = new.airlineno) = 3\n    THEN UPDATE bookticket\n          SET ticketprice = new.economyclassprice\n          WHERE airlineno = new.airlineno;\n  END IF;\nEND'
sql_modes=1436549152
definers='root@localhost'
client_cs_names='utf8'
connection_cl_names='utf8_general_ci'
db_cl_names='utf8_general_ci'
created=148337453395
