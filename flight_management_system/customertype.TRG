TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER trg_ctomtype_in BEFORE INSERT\nON customertype FOR EACH ROW\nBEGIN\n  if new.discountpercent > 90 THEN set new.discountpercent = 90; END IF;\n  if new.discountpercent < 0 THEN set new.discountpercent = 0; END IF;\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER trg_cotmtype_up BEFORE UPDATE\nON  customertype FOR EACH ROW\nBEGIN\n  if new.discountpercent > 90 THEN set new.discountpercent = 90; END IF;\n  if new.discountpercent < 0 THEN set new.discountpercent = 0; END IF;\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER tri_discount_udt AFTER UPDATE\nON customertype FOR EACH ROW\nBEGIN\n  UPDATE bookticket\n  SET discountpercent = new.discountpercent\n  WHERE customertypeno = new.customertypeno;\nEND'
sql_modes=1436549152 1436549152 1436549152
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='utf8' 'utf8' 'utf8'
connection_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
db_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
created=148328918455 148328918756 148333209113
