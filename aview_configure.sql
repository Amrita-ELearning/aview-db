CREATE USER 'aview_app'@'localhost';
/* Please do not change the password here */
SET PASSWORD FOR 'aview_app'@'localhost' = '*A1297CD5E0976E65D9BB5F6B1E8C63CFBFF8BFE5';

GRANT SELECT ON aview.* TO 'aview_app'@'localhost';
GRANT INSERT ON aview.* TO 'aview_app'@'localhost';
GRANT UPDATE ON aview.* TO 'aview_app'@'localhost';
GRANT DELETE ON aview.* TO 'aview_app'@'localhost';
 
GRANT SELECT ON aview_audit.* TO 'aview_app'@'localhost';
GRANT INSERT ON aview_audit.* TO 'aview_app'@'localhost';
GRANT UPDATE ON aview_audit.* TO 'aview_app'@'localhost';
GRANT DELETE ON aview_audit.* TO 'aview_app'@'localhost';

FLUSH PRIVILEGES;
