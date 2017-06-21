TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER trg_ctom_sex_in BEFORE INSERT\nON customer FOR EACH ROW\nBEGIN\n  if new.sex <> \'男\' OR new.sex <> \'女\' THEN SET new.sex = \'男\'; END IF;\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER trg_ctom_sex_up BEFORE UPDATE\nON customer FOR EACH ROW\nBEGIN\n  if new.sex <> \'男\' OR new.sex <> \'女\' THEN SET new.sex = \'男\'; END IF;\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER tri_customer_udt AFTER UPDATE\nON customer FOR EACH ROW\nBEGIN\n  UPDATE bookticket\n  SET customername = new.customername,\n    customertypeno = new.customertypeno\n  WHERE customerno = new.customerno;\nEND'
sql_modes=1436549152 1436549152 1436549152
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='utf8' 'utf8' 'utf8'
connection_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
created=148304262773 148304271909 148333261056
