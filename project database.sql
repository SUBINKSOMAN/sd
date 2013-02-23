CREATE TABLE `SS`_categories (
  `categoryID` int(9) unsigned NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `parent` varchar(5) default NULL,
  `products_count` int(25) default NULL,
  `description` varchar(255) default NULL,
  `picture` varchar(50) default NULL,
  `products_count_admin` int(9) NOT NULL default '0',
  PRIMARY KEY  (`categoryID`),
  UNIQUE KEY `categoryID` (`categoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
CREATE TABLE `SS_products` (
`productID` int(2) unsigned NOT NULL auto_increment ,
`categoryID` varchar(255) default NULL,
`name` varchar(254) default NULL,
`description` varchar(254) default NULL,
`customers_rating` varchar(254) default NULL,
`Price` int(6) default NULL,
`picture` varchar(254) default NULL,
`in_stock` varchar(9) default NULL,
`thumbnail` varchar(254) default NULL,
`customer_votes` varchar(254) default NULL,
`items_sold` varchar(254) default NULL,
`big_picture` varchar(254) default NULL,
`enabled` int(2) default NULL,
`brief_description` varchar(255) default NULL,
`list_price` varchar(255) default NULL,
`product_code` int(9) default NULL,
PRIMARY KEY  (productID),
UNIQUE KEY productID (productID)
)ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE `SS_special_offers` (
`offerID` int(9) default NULL, 
`productID` int(9) default NULL,
`sort_order` int(9) default NULL);

CREATE TABLE SS_orders (
orderID INT PRIMARY KEY AUTO_INCREMENT,
 order_time DATETIME, cust_firstname VARCHAR(30),
 cust_lastname VARCHAR(30), cust_email VARCHAR(30),
 cust_country VARCHAR(30), cust_zip VARCHAR(30), 
 cust_state VARCHAR(30), cust_city VARCHAR(30),
 cust_address VARCHAR(30), cust_phone VARCHAR(30));
	

CREATE TABLE SS_ordered_carts (productID INT NOT NULL, orderID INT NOT NULL, name CHAR(255), Price FLOAT, Quantity INT, PRIMARY KEY (productID, orderID))