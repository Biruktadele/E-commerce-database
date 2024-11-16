-- Active: 1718439680622@@localhost@3306@shop
CREATE DATABASE SHOP;

use SHOP;

/* CUSTUMERS */

CREATE TABLE Customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_first_name VARCHAR(25),
    customer_last_name VARCHAR(20),
    customer_email VARCHAR(25),
    shipping_address VARCHAR(50),
    payment_details VARCHAR(20)
);

INSERT INTO customers VALUES ();
/* SELLER  */

CREATE TABLE Sellers (
    sellerid VARCHAR(25) PRIMARY KEY,
    seller_first_name VARCHAR(20),
    seller_last_name VARCHAR(20),
    seller_contact_info VARCHAR(0),
    seller_address VARCHAR(100)
);

/* BANCK ACCOUNT */

CREATE TABLE Bankaccounts (
    account_number VARCHAR(20) PRIMARY KEY,
    AccountHolder VARCHAR(20),
    AccountBalance DECIMAL(10, 2),
    Withdrawal DECIMAL(10, 2),
    Deposit DECIMAL(10, 2),
    customerID VARCHAR(20),
    sellerid VARCHAR(20),
    FOREIGN KEY (customerID) REFERENCES Customers (customer_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (sellerid) REFERENCES Sellers (sellerid) ON DELETE CASCADE ON UPDATE CASCADE
);

/*  PAYMENT  */

CREATE TABLE Payment ( payment_id VARCHAR(20) PRIMARY KEY );

CREATE TABLE PAY (
    account_number VARCHAR(20),
    payment_id VARCHAR(20),
    payment_date DATE,
    payment_amount INT,
    payment_method VARCHAR(20),
    FOREIGN KEY (account_number) REFERENCES Bankaccounts (account_number),
    FOREIGN KEY (payment_id) REFERENCES Payment (payment_id)
);

/* ORDERS */

CREATE TABLE Orders (
    order_id VARCHAR(20) PRIMARY KEY,
    order_date DATE,
    total_amount INT,
    shipping_details VARCHAR(50),
    customerID VARCHAR(20),
    payment_id VARCHAR(20),
    FOREIGN KEY (customerID) REFERENCES Customers (customer_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (payment_id) REFERENCES Payment (payment_id) ON DELETE CASCADE ON UPDATE CASCADE
);

/* PRODUCT */

CREATE Table products (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(20),
    product_description VARCHAR(50),
    product_price INT,
    sellerid VARCHAR(25),
    FOREIGN KEY (sellerid) REFERENCES Sellers (sellerid)
);

/* INVENTORY R/S B.N PRODUCTS AND ORDERS */
CREATE TABLE Inventory (
    product_id VARCHAR(20),
    order_id VARCHAR(20),
    FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (order_id) REFERENCES Orders (order_id) ON DELETE CASCADE ON UPDATE CASCADE,
    Quantity INT
);

/* ************************************************ */

/* INSERSION */
/* ************************************************* */
INSERT INTO
    customers
VALUES (
        ' ch#00001',
        'Addisu',
        'Abebe',
        'AddisuAbebe@gmail.com',
        'Bole Subcity, Woreda 03, House #456, Nairobi, Kenya',
        'Apple Pay '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00002',
        'Abreham',
        'Alemayehu',
        'AbrehamAlemayehu@gmail.com',
        'Gulele Subcity, Woreda 07, Apartment #302, Addis Ababa, Ethiopia',
        'Google Pay '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00003',
        'Almaz',
        'Assefa',
        'AlmazAssefa@gmail.com',
        'Yeka Subcity, Woreda 13, House #789, Kampala, Uganda',
        'Samsung Pay '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00004',
        'Aster',
        'Bekele',
        'AsterBekele@gmail.com',
        'Nifas Silk-Lafto Subcity, Woreda 01, House #234, Nairobi, Kenya',
        'Amazon Pay '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00005',
        'Belay',
        'Desta',
        'BelayDesta@gmail.com',
        'Kolfe Keranio Subcity, Woreda 05, Apartment #501, Addis Ababa, Ethiopia',
        'Visa '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00006',
        'Berhane',
        'Eshetu',
        'BerhaneEshetu@gmail.com',
        'Akaki Kality Subcity, Woreda 09, House #111, Nairobi, Kenya',
        'Mastercard '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00007',
        'Biruk',
        'Habtamu',
        'BirukHabtamu@gmail.com',
        'Lideta Subcity, Woreda 03, Apartment #404, Addis Ababa, Ethiopia',
        'American Express '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00008',
        'Chaltu',
        'Kebede',
        'ChaltuKebede@gmail.com',
        'Kirkos Subcity, Woreda 07, House #678, Addis Ababa, Ethiopia',
        'Discover '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00009',
        'Dagmawi',
        'Lemma',
        'DagmawiLemma@gmail.com',
        'Arada Subcity, Woreda 01, Apartment #202, Nairobi, Kenya',
        'eCATH '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00010',
        'Daniel',
        'Mengistu',
        'DanielMengistu@gmail.com',
        'Bole Subcity, Woreda 11, House #890, Addis Ababa, Ethiopia',
        'HelloCash '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00011',
        'Elsa',
        'Mulugeta',
        'ElsaMulugeta@gmail.com',
        'Yeka Subcity, Woreda 13, Apartment #603, Kampala, Uganda',
        'M-BIRR '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00012',
        'Endalkachew',
        'Tadesse',
        'EndalkachewTadesse@gmail.com',
        'Nifas Silk-Lafto Subcity, Woreda 05, House #345, Nairobi, Kenya',
        'CBE Birr '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00013',
        'Fana',
        'Tesfaye',
        'FanaTesfaye@gmail.com',
        'Kolfe Keranio Subcity, Woreda 09, Apartment #706, Addis Ababa, Ethiopia',
        'Amole '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00014',
        'Gelila',
        'Tessema',
        'GelilaTessema@gmail.com',
        'Akaki Kality Subcity, Woreda 03, House #456, Nairobi, Kenya',
        'Telebirr '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00015',
        'Getachew',
        'Tilahun',
        'GetachewTilahun@gmail.com',
        'Lideta Subcity, Woreda 07, Apartment #808, Addis Ababa, Ethiopia',
        'Kifiya Financial Technology '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00016',
        'Hana',
        'Teshome',
        'HanaTeshome@gmail.com',
        'Bole Subcity, Woreda 03, House #456, Nairobi, Kenya',
        'POSPay '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00017',
        'Hirut',
        'Workneh',
        'HirutWorkneh@gmail.com',
        'Gulele Subcity, Woreda 07, Apartment #302, Addis Ababa, Ethiopia',
        'Apple Pay '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00018',
        'Kokeb',
        'Wondimu',
        'KokebWondimu@gmail.com',
        'Yeka Subcity, Woreda 13, House #789, Kampala, Uganda',
        'Google Pay '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00019',
        'Liya',
        'Zenebe',
        'LiyaZenebe@gmail.com',
        'Nifas Silk-Lafto Subcity, Woreda 01, House #234, Nairobi, Kenya',
        'Samsung Pay '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00020',
        'Mahlet',
        'Yohannes',
        'MahletYohannes@gmail.com',
        'Kolfe Keranio Subcity, Woreda 05, Apartment #501, Addis Ababa, Ethiopia',
        'Amazon Pay '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00021',
        'Meaza',
        'Abebe',
        'MeazaAbebe@gmail.com',
        'Akaki Kality Subcity, Woreda 09, House #111, Nairobi, Kenya',
        'Visa '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00022',
        'Mekonnen',
        'Alemayehu',
        'MekonnenAlemayehu@gmail.com',
        'Lideta Subcity, Woreda 03, Apartment #404, Addis Ababa, Ethiopia',
        'Mastercard '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00023',
        'Meseret',
        'Assefa',
        'MeseretAssefa@gmail.com',
        'Kirkos Subcity, Woreda 07, House #678, Addis Ababa, Ethiopia',
        'American Express '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00024',
        'Mihret',
        'Bekele',
        'MihretBekele@gmail.com',
        'Arada Subcity, Woreda 01, Apartment #202, Nairobi, Kenya',
        'Discover '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00025',
        'Minyahil',
        'Desta',
        'MinyahilDesta@gmail.com',
        'Bole Subcity, Woreda 11, House #890, Addis Ababa, Ethiopia',
        'eCATH '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00026',
        'Nebyu',
        'Eshetu',
        'NebyuEshetu@gmail.com',
        'Yeka Subcity, Woreda 13, Apartment #603, Kampala, Uganda',
        'HelloCash '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00027',
        'Nur',
        'Habtamu',
        'NurHabtamu@gmail.com',
        'Nifas Silk-Lafto Subcity, Woreda 05, House #345, Nairobi, Kenya',
        'M-BIRR '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00028',
        'Rahel',
        'Kebede',
        'RahelKebede@gmail.com',
        'Kolfe Keranio Subcity, Woreda 09, Apartment #706, Addis Ababa, Ethiopia',
        'CBE Birr '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00029',
        'Rediet',
        'Lemma',
        'RedietLemma@gmail.com',
        'Akaki Kality Subcity, Woreda 03, House #456, Nairobi, Kenya',
        'Amole '
    );

INSERT INTO
    customers
VALUES (
        ' ch#00030',
        'Samson',
        'Mengistu',
        'SamsonMengistu@gmail.com',
        'Lideta Subcity, Woreda 07, Apartment #808, Addis Ababa, Ethiopia',
        'Telebirr '
    );
/* ***************************************************************************************** */
INSERT INTO
    sellers
VALUES (
        ' Sl#00001',
        'Abrham',
        'Abayneh',
        'AbrhamAbayneh,AbrhamAbayneh@gmail.com ,Abebe Spice Shop, Mercato District, Addis Ababa,+251-935-656-789',
        'Abebe Spice Shop, Mercato District, Addis Ababa '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00002',
        'Amanuel',
        'Abreham',
        'AmanuelAbreham,AmanuelAbreham@gmail.com ,Fatima Textiles, Churchill Road, Bahir Dar,+251-935-656-790',
        'Fatima Textiles, Churchill Road, Bahir Dar '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00003',
        'Amha',
        'Aster',
        'AmhaAster,AmhaAster@gmail.com ,Haile Ironworks, Kebele 27, Harar,+251-935-656-791',
        'Haile Ironworks, Kebele 27, Harar '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00004',
        'Asheber',
        'Berhanu',
        'AsheberBerhanu,AsheberBerhanu@gmail.com ,Mekeda Pottery, Adi Haki Avenue, Mekelle,+251-935-656-792',
        'Mekeda Pottery, Adi Haki Avenue, Mekelle '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00005',
        'Asnake',
        'Bethlehem',
        'AsnakeBethlehem,AsnakeBethlehem@gmail.com ,Azeb Coffee Roasters, Secha Street, Arba Minch,+251-935-656-793',
        'Azeb Coffee Roasters, Secha Street, Arba Minch '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00006',
        'Assefa',
        'Bezawit',
        'AssefaBezawit,AssefaBezawit@gmail.com ,Yohannes Leather Goods, Kebele 13, Awassa,+251-935-656-794',
        'Yohannes Leather Goods, Kebele 13, Awassa '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00007',
        'Ayalew',
        'Degefa',
        'AyalewDegefa,AyalewDegefa@gmail.com ,Hiwot Jewelry, Shiro Meda, Gondar,+251-935-656-795',
        'Hiwot Jewelry, Shiro Meda, Gondar '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00008',
        'Berhanu',
        'Desta',
        'BerhanuDesta,BerhanuDesta@gmail.com ,Mulugeta Woodcrafts, Kebele 05, Dessie,+251-935-656-796',
        'Mulugeta Woodcrafts, Kebele 05, Dessie '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00009',
        'Dagim',
        'Efrem',
        'DagimEfrem,DagimEfrem@gmail.com ,Asnakech Weavings, Dembel Center, Dire Dawa,+251-935-656-797',
        'Asnakech Weavings, Dembel Center, Dire Dawa '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00010',
        'Degu',
        'Emebet',
        'DeguEmebet,DeguEmebet@gmail.com ,Tesfalem Agricultural Supplies, Kebele 16, Jimma,+251-935-656-798',
        'Tesfalem Agricultural Supplies, Kebele 16, Jimma '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00011',
        'Esayas',
        'Fasika',
        'EsayasFasika,EsayasFasika@gmail.com ,Amele Metalworks, Meskel Square, Nazret,+251-935-656-799',
        'Amele Metalworks, Meskel Square, Nazret '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00012',
        'Eyob',
        'Gedion',
        'EyobGedion,EyobGedion@gmail.com ,Yared Basketry, Kebele 08, Debre Markos,+251-935-656-800',
        'Yared Basketry, Kebele 08, Debre Markos '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00013',
        'Fekadu',
        'Genet',
        'FekaduGenet,FekaduGenet@gmail.com ,Selamawit Spices, Kebele 27, Jijiga,+251-935-656-801',
        'Selamawit Spices, Kebele 27, Jijiga '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00014',
        'Fisha',
        'Hiwot',
        'FishaHiwot,FishaHiwot@gmail.com ,Tewodros Ceramics, Kebele 17, Sodo,+251-935-656-802',
        'Tewodros Ceramics, Kebele 17, Sodo '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00015',
        'Getnet',
        'Lemma',
        'GetnetLemma,GetnetLemma@gmail.com ,Hana Fabrics, Kebele 06, Debre Berhan,+251-935-656-803',
        'Hana Fabrics, Kebele 06, Debre Berhan '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00016',
        'Girma',
        'Meba',
        'GirmaMeba,GirmaMeba@gmail.com ,Mesfin Woodworking, Kebele 12, Dilla,+251-935-656-804',
        'Mesfin Woodworking, Kebele 12, Dilla '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00017',
        'Habtamu',
        'Mehret',
        'HabtamuMehret,HabtamuMehret@gmail.com ,Nebiyat Leathercraft, Kebele 09, Hosaena,+251-935-656-805',
        'Nebiyat Leathercraft, Kebele 09, Hosaena '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00018',
        'Hailemichael',
        'Meron',
        'HailemichaelMeron,HailemichaelMeron@gmail.com ,Wondwossen Metal Art, Asco, Kombolcha,+251-935-656-806',
        'Wondwossen Metal Art, Asco, Kombolcha '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00019',
        'Kassa',
        'Mulugeta',
        'KassaMulugeta,KassaMulugeta@gmail.com ,Tigist Jewelry, Kebele 04, Nekemte,+251-935-656-807',
        'Tigist Jewelry, Kebele 04, Nekemte '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00020',
        'Kibnesh',
        'Nardos',
        'KibneshNardos,KibneshNardos@gmail.com ,Elias Glassware, Kebele 15, DebreZeit,+251-935-656-808',
        'Elias Glassware, Kebele 15, DebreZeit '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00021',
        'Kibrom',
        'Nebiyou',
        'KibromNebiyou,KibromNebiyou@gmail.com ,Zeyneba Weaving, Kebele 11, Asella,+251-935-656-809',
        'Zeyneba Weaving, Kebele 11, Asella '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00022',
        'Makonnen',
        'Nigest',
        'MakonnenNigest,MakonnenNigest@gmail.com ,Mekonen Basketry, Kebele 07, Gambella,+251-935-656-810',
        'Mekonen Basketry, Kebele 07, Gambella '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00023',
        'Melaku',
        'Seble',
        'MelakuSeble,MelakuSeble@gmail.com ,Beza Pottery, Kebele 03, Shashamane,+251-935-656-811',
        'Beza Pottery, Kebele 03, Shashamane '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00024',
        'Meseret',
        'Senait',
        'MeseretSenait,MeseretSenait@gmail.com ,Awoke Metalworks, Kebele 14, Ziway,+251-935-656-812',
        'Awoke Metalworks, Kebele 14, Ziway '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00025',
        'Molla',
        'Serkalem',
        'MollaSerkalem,MollaSerkalem@gmail.com ,Tibebu Woodcrafts, Kebele 10, Mettu,+251-935-656-813',
        'Tibebu Woodcrafts, Kebele 10, Mettu '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00026',
        'Mulgeta',
        'Shimelis',
        'MulgetaShimelis,MulgetaShimelis@gmail.com ,Mihiret Spices, Kebele 02, Bedele,+251-935-656-814',
        'Mihiret Spices, Kebele 02, Bedele '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00027',
        'Shimelis',
        'Tadelech',
        'ShimelisTadelech,ShimelisTadelech@gmail.com ,Tadelech Textiles, Kebele 18, Yirgalem,+251-935-656-815',
        'Tadelech Textiles, Kebele 18, Yirgalem '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00028',
        'Taddesse',
        'Tedla',
        'TaddesseTedla,TaddesseTedla@gmail.com ,Biruk Leathergoods, Kebele 01, Debre Markos,+251-935-656-816',
        'Biruk Leathergoods, Kebele 01, Debre Markos '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00029',
        'Tesfaye',
        'Tigest',
        'TesfayeTigest,TesfayeTigest@gmail.com ,Meron Jewelry, Mercato District, Addis Ababa,+251-935-656-817',
        'Meron Jewelry, Mercato District, Addis Ababa '
    );

INSERT INTO
    sellers
VALUES (
        ' Sl#00030',
        'Wondwossen',
        'Yohanes',
        'WondwossenYohanes,WondwossenYohanes@gmail.com ,Habtamu Ceramics, Adi Haki Avenue, Mekelle,+251-935-656-818',
        'Habtamu Ceramics, Adi Haki Avenue, Mekelle '
    );
/* ************************************************************ */
INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-01',
        'Customers',
        3087.0,
        1234.56,
        4321.56,
        ' ch#00001',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-02',
        'Sellers',
        58688.63,
        4567.89,
        8765.43,
        NULL,
        ' Sl#00002'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-03',
        'Customers',
        93774.68,
        7890.12,
        2109.87,
        ' ch#00002',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-04',
        'Sellers',
        21100.54,
        2345.67,
        6543.21,
        NULL,
        ' Sl#00002'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-05',
        'Customers',
        71098.76,
        6543.21,
        1098.76,
        ' ch#00003',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-06',
        'Sellers',
        47654.12,
        3456.78,
        5432.1,
        NULL,
        ' Sl#00003'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-07',
        'Customers',
        64781.37,
        5678.9,
        2109.87,
        ' ch#00004',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-08',
        'Sellers',
        37654.32,
        3456.78,
        6543.21,
        NULL,
        ' Sl#00004'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-09',
        'Customers',
        85123.0,
        8901.23,
        4567.89,
        ' ch#00005',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-10',
        'Sellers',
        28754.56,
        2109.87,
        8765.43,
        NULL,
        ' Sl#00005'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-11',
        'Customers',
        51080.11,
        5678.9,
        3210.98,
        ' ch#00006',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-12',
        'Sellers',
        39578.92,
        4321.09,
        6789.01,
        NULL,
        ' Sl#00006'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-13',
        'Customers',
        71789.98,
        7890.12,
        2109.87,
        ' ch#00007',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-14',
        'Sellers',
        13420.99,
        1098.76,
        5432.1,
        NULL,
        ' Sl#00007'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-15',
        'Customers',
        58898.89,
        6543.21,
        3210.98,
        ' ch#00008',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-16',
        'Sellers',
        26688.89,
        2987.65,
        7654.32,
        NULL,
        ' Sl#00008'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-17',
        'Customers',
        47880.12,
        5321.09,
        8901.23,
        ' ch#00009',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-18',
        'Sellers',
        36888.89,
        4109.87,
        1098.76,
        NULL,
        ' Sl#00009'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-19',
        'Customers',
        81110.88,
        8765.43,
        6543.21,
        ' ch#00010',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-20',
        'Sellers',
        15210.45,
        1654.32,
        4321.56,
        NULL,
        ' Sl#00010'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-21',
        'Customers',
        3087.0,
        1234.56,
        4321.56,
        ' ch#00011',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-22',
        'Sellers',
        58688.63,
        4567.89,
        8765.43,
        NULL,
        ' Sl#00011'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-23',
        'Customers',
        93774.68,
        7890.12,
        2109.87,
        ' ch#00012',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-24',
        'Sellers',
        21100.54,
        2345.67,
        6543.21,
        NULL,
        ' Sl#00012'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-25',
        'Customers',
        71098.76,
        6543.21,
        1098.76,
        ' ch#00013',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-26',
        'Sellers',
        47654.12,
        3456.78,
        5432.1,
        NULL,
        ' Sl#00013'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-27',
        'Customers',
        64781.37,
        5678.9,
        2109.87,
        ' ch#00014',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-28',
        'Sellers',
        37654.32,
        3456.78,
        6543.21,
        NULL,
        ' Sl#00014'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-29',
        'Customers',
        85123.0,
        8901.23,
        4567.89,
        ' ch#00015',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-30',
        'Sellers',
        28754.56,
        2109.87,
        8765.43,
        NULL,
        ' Sl#00015'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-31',
        'Customers',
        51080.11,
        5678.9,
        3210.98,
        ' ch#00016',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-32',
        'Sellers',
        39578.92,
        4321.09,
        6789.01,
        NULL,
        ' Sl#00016'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-33',
        'Customers',
        71789.98,
        7890.12,
        2109.87,
        ' ch#00017',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-34',
        'Sellers',
        13420.99,
        1098.76,
        5432.1,
        NULL,
        ' Sl#00017'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-35',
        'Customers',
        58898.89,
        6543.21,
        3210.98,
        ' ch#00018',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-36',
        'Sellers',
        26688.89,
        2987.65,
        7654.32,
        NULL,
        ' Sl#00018'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-37',
        'Customers',
        47880.12,
        5321.09,
        8901.23,
        ' ch#00019',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-38',
        'Sellers',
        36888.89,
        4109.87,
        1098.76,
        NULL,
        ' Sl#00019'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-39',
        'Customers',
        81110.88,
        8765.43,
        6543.21,
        ' ch#00020',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-40',
        'Sellers',
        15210.45,
        1654.32,
        4321.56,
        NULL,
        ' Sl#00020'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-41',
        'Customers',
        3087.0,
        1234.56,
        4321.56,
        ' ch#00021',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-42',
        'Sellers',
        58688.63,
        4567.89,
        8765.43,
        NULL,
        ' Sl#00021'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-43',
        'Customers',
        93774.68,
        7890.12,
        2109.87,
        ' ch#00022',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-44',
        'Sellers',
        21100.54,
        2345.67,
        6543.21,
        NULL,
        ' Sl#00022'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-45',
        'Customers',
        71098.76,
        6543.21,
        1098.76,
        ' ch#00023',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-46',
        'Sellers',
        47654.12,
        3456.78,
        5432.1,
        NULL,
        ' Sl#00023'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-47',
        'Customers',
        64781.37,
        5678.9,
        2109.87,
        ' ch#00024',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-48',
        'Sellers',
        37654.32,
        3456.78,
        6543.21,
        NULL,
        ' Sl#00024'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-49',
        'Customers',
        85123.0,
        8901.23,
        4567.89,
        ' ch#00025',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-50',
        'Sellers',
        28754.56,
        2109.87,
        8765.43,
        NULL,
        ' Sl#00025'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-51',
        'Customers',
        51080.11,
        5678.9,
        3210.98,
        ' ch#00026',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-52',
        'Sellers',
        39578.92,
        4321.09,
        6789.01,
        NULL,
        ' Sl#00026'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-53',
        'Customers',
        71789.98,
        7890.12,
        2109.87,
        ' ch#00027',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-54',
        'Sellers',
        13420.99,
        1098.76,
        5432.1,
        NULL,
        ' Sl#00027'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-55',
        'Customers',
        58898.89,
        6543.21,
        3210.98,
        ' ch#00028',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-56',
        'Sellers',
        26688.89,
        2987.65,
        7654.32,
        NULL,
        ' Sl#00028'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-57',
        'Customers',
        47880.12,
        5321.09,
        8901.23,
        ' ch#00029',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-58',
        'Sellers',
        36888.89,
        4109.87,
        1098.76,
        NULL,
        ' Sl#00029'
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-59',
        'Customers',
        81110.88,
        8765.43,
        6543.21,
        ' ch#00030',
        NULL
    );

INSERT INTO
    Bankaccounts
VALUES (
        ' 0123-456789-60',
        'Sellers',
        15210.45,
        1654.32,
        4321.56,
        NULL,
        ' Sl#00030'
    );

/* ******************************************************************** */
INSERT INTO Payment VALUES (' PY#1223-01 ');

INSERT INTO Payment VALUES (' PY#1223-02 ');

INSERT INTO Payment VALUES (' PY#1223-03 ');

INSERT INTO Payment VALUES (' PY#1223-04 ');

INSERT INTO Payment VALUES (' PY#1223-05 ');

INSERT INTO Payment VALUES (' PY#1223-06 ');

INSERT INTO Payment VALUES (' PY#1223-07 ');

INSERT INTO Payment VALUES (' PY#1223-08 ');

INSERT INTO Payment VALUES (' PY#1223-09 ');

INSERT INTO Payment VALUES (' PY#1223-10 ');

INSERT INTO Payment VALUES (' PY#1223-11 ');

INSERT INTO Payment VALUES (' PY#1223-12 ');

INSERT INTO Payment VALUES (' PY#1223-13 ');

INSERT INTO Payment VALUES (' PY#1223-14 ');

INSERT INTO Payment VALUES (' PY#1223-15 ');

INSERT INTO Payment VALUES (' PY#1223-16 ');

INSERT INTO Payment VALUES (' PY#1223-17 ');

INSERT INTO Payment VALUES (' PY#1223-18 ');

INSERT INTO Payment VALUES (' PY#1223-19 ');

INSERT INTO Payment VALUES (' PY#1223-20 ');

INSERT INTO Payment VALUES (' PY#1223-21 ');

INSERT INTO Payment VALUES (' PY#1223-22 ');

INSERT INTO Payment VALUES (' PY#1223-23 ');

INSERT INTO Payment VALUES (' PY#1223-24 ');

INSERT INTO Payment VALUES (' PY#1223-25 ');

INSERT INTO Payment VALUES (' PY#1223-26 ');

INSERT INTO Payment VALUES (' PY#1223-27 ');

INSERT INTO Payment VALUES (' PY#1223-28 ');

INSERT INTO Payment VALUES (' PY#1223-29 ');

INSERT INTO Payment VALUES (' PY#1223-30 ');

INSERT INTO Payment VALUES (' PY#1223-31 ');

INSERT INTO Payment VALUES (' PY#1223-32 ');

INSERT INTO Payment VALUES (' PY#1223-33 ');

INSERT INTO Payment VALUES (' PY#1223-34 ');

INSERT INTO Payment VALUES (' PY#1223-35 ');

INSERT INTO Payment VALUES (' PY#1223-36 ');

INSERT INTO Payment VALUES (' PY#1223-37 ');

INSERT INTO Payment VALUES (' PY#1223-38 ');

INSERT INTO Payment VALUES (' PY#1223-39 ');

INSERT INTO Payment VALUES (' PY#1223-40 ');

INSERT INTO Payment VALUES (' PY#1223-41 ');

INSERT INTO Payment VALUES (' PY#1223-42 ');

INSERT INTO Payment VALUES (' PY#1223-43 ');

INSERT INTO Payment VALUES (' PY#1223-44 ');

INSERT INTO Payment VALUES (' PY#1223-45 ');

INSERT INTO Payment VALUES (' PY#1223-46 ');

INSERT INTO Payment VALUES (' PY#1223-47 ');

INSERT INTO Payment VALUES (' PY#1223-48 ');

INSERT INTO Payment VALUES (' PY#1223-49 ');

INSERT INTO Payment VALUES (' PY#1223-50 ');

INSERT INTO Payment VALUES (' PY#1223-51 ');

INSERT INTO Payment VALUES (' PY#1223-52 ');

INSERT INTO Payment VALUES (' PY#1223-53 ');

INSERT INTO Payment VALUES (' PY#1223-54 ');

INSERT INTO Payment VALUES (' PY#1223-55 ');

INSERT INTO Payment VALUES (' PY#1223-56 ');

INSERT INTO Payment VALUES (' PY#1223-57 ');

INSERT INTO Payment VALUES (' PY#1223-58 ');

INSERT INTO Payment VALUES (' PY#1223-59 ');

INSERT INTO Payment VALUES (' PY#1223-60 ');

/* *************************************************************************** */
INSERT INTO
    Orders
VALUES (
        ' ORD#1900001',
        '2024-01-02 ',
        14,
        ' Wireless Headphones - Akaki Kality Subcity, Woreda 09, House #111, Nairobi, Kenya',
        ' ch#00001',
        ' PY#1223-01 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900002',
        '2024-01-05 ',
        3,
        ' Fitness Tracker - Lideta Subcity, Woreda 03, Apartment #404, Addis Ababa, Ethiopia',
        ' ch#00002',
        ' PY#1223-02 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900003',
        '2024-01-11 ',
        24,
        ' DSLR Camera - Kirkos Subcity, Woreda 07, House #678, Addis Ababa, Ethiopia',
        ' ch#00003',
        ' PY#1223-03 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900004',
        '2024-01-13 ',
        11,
        ' Bluetooth Speaker - Arada Subcity, Woreda 01, Apartment #202, Nairobi, Kenya',
        ' ch#00004',
        ' PY#1223-04 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900005',
        '2024-01-20 ',
        14,
        ' Travel Mug - Bole Subcity, Woreda 11, House #890, Addis Ababa, Ethiopia',
        ' ch#00005',
        ' PY#1223-05 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900006',
        '2024-01-24 ',
        25,
        ' Smart Watch - Bole Subcity, Woreda 03, House #456, Nairobi, Kenya',
        ' ch#00006',
        ' PY#1223-06 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900007',
        '2024-01-26 ',
        5,
        ' Gaming Laptop - Gulele Subcity, Woreda 07, Apartment #302, Addis Ababa, Ethiopia',
        ' ch#00007',
        ' PY#1223-07 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900008',
        '2024-01-29 ',
        12,
        ' 4K Smart TV - Yeka Subcity, Woreda 13, House #789, Kampala, Uganda',
        ' ch#00008',
        ' PY#1223-08 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900009',
        '2024-02-01 ',
        21,
        ' Portable Charger - Nifas Silk-Lafto Subcity, Woreda 01, House #234, Nairobi, Kenya',
        ' ch#00009',
        ' PY#1223-09 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900010',
        '2024-02-04 ',
        15,
        ' Desk Lamp - Kolfe Keranio Subcity, Woreda 05, Apartment #501, Addis Ababa, Ethiopia',
        ' ch#00010',
        ' PY#1223-10 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900011',
        '2024-02-07 ',
        6,
        ' Reusable Water Bottle - Akaki Kality Subcity, Woreda 09, House #111, Nairobi, Kenya',
        ' ch#00011',
        ' PY#1223-11 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900012',
        '2024-02-09 ',
        26,
        ' Robot Vacuum - Lideta Subcity, Woreda 03, Apartment #404, Addis Ababa, Ethiopia',
        ' ch#00012',
        ' PY#1223-12 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900013',
        '2024-02-14 ',
        30,
        ' Outdoor Camping Gear - Kirkos Subcity, Woreda 07, House #678, Addis Ababa, Ethiopia',
        ' ch#00013',
        ' PY#1223-13 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900014',
        '2024-02-18 ',
        22,
        ' Noise-Cancelling Earbuds - Arada Subcity, Woreda 01, Apartment #202, Nairobi, Kenya',
        ' ch#00014',
        ' PY#1223-14 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900015',
        '2024-02-23 ',
        15,
        ' High-Efficiency Washing Machine - Bole Subcity, Woreda 11, House #890, Addis Ababa, Ethiopia',
        ' ch#00015',
        ' PY#1223-15 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900016',
        '2024-02-26 ',
        22,
        ' Electric Toothbrush - Yeka Subcity, Woreda 13, Apartment #603, Kampala, Uganda',
        ' ch#00016',
        ' PY#1223-16 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900017',
        '2024-03-01 ',
        26,
        ' Programmable Thermostat - Nifas Silk-Lafto Subcity, Woreda 05, House #345, Nairobi, Kenya',
        ' ch#00017',
        ' PY#1223-17 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900018',
        '2024-03-05 ',
        19,
        ' Cordless Power Tool Set - Kolfe Keranio Subcity, Woreda 09, Apartment #706, Addis Ababa, Ethiopia',
        ' ch#00018',
        ' PY#1223-18 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900019',
        '2024-03-10 ',
        4,
        ' Air Purifier - Akaki Kality Subcity, Woreda 03, House #456, Nairobi, Kenya',
        ' ch#00019',
        ' PY#1223-19 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900020',
        '2024-03-12 ',
        29,
        ' Tablet Computer - Lideta Subcity, Woreda 07, Apartment #808, Addis Ababa, Ethiopia',
        ' ch#00020',
        ' PY#1223-20 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900021',
        '2024-03-15 ',
        20,
        ' Wireless Headphones - Akaki Kality Subcity, Woreda 09, House #111, Nairobi, Kenya',
        ' ch#00021',
        ' PY#1223-21 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900022',
        '2024-03-18 ',
        23,
        ' Fitness Tracker - Lideta Subcity, Woreda 03, Apartment #404, Addis Ababa, Ethiopia',
        ' ch#00022',
        ' PY#1223-22 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900023',
        '2024-03-22 ',
        7,
        ' DSLR Camera - Kirkos Subcity, Woreda 07, House #678, Addis Ababa, Ethiopia',
        ' ch#00023',
        ' PY#1223-23 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900024',
        '2024-03-26 ',
        7,
        ' Bluetooth Speaker - Arada Subcity, Woreda 01, Apartment #202, Nairobi, Kenya',
        ' ch#00024',
        ' PY#1223-24 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900025',
        '2024-03-30 ',
        10,
        ' Travel Mug - Bole Subcity, Woreda 11, House #890, Addis Ababa, Ethiopia',
        ' ch#00025',
        ' PY#1223-25 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900026',
        '2024-04-02 ',
        4,
        ' Smart Watch - Bole Subcity, Woreda 03, House #456, Nairobi, Kenya',
        ' ch#00026',
        ' PY#1223-26 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900027',
        '2024-04-06 ',
        2,
        ' Gaming Laptop - Gulele Subcity, Woreda 07, Apartment #302, Addis Ababa, Ethiopia',
        ' ch#00027',
        ' PY#1223-27 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900028',
        '2024-04-09 ',
        19,
        ' 4K Smart TV - Yeka Subcity, Woreda 13, House #789, Kampala, Uganda',
        ' ch#00028',
        ' PY#1223-28 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900029',
        '2024-04-13 ',
        18,
        ' Portable Charger - Nifas Silk-Lafto Subcity, Woreda 01, House #234, Nairobi, Kenya',
        ' ch#00029',
        ' PY#1223-29 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900030',
        '2024-04-17 ',
        6,
        ' Desk Lamp - Kolfe Keranio Subcity, Woreda 05, Apartment #501, Addis Ababa, Ethiopia',
        ' ch#00030',
        ' PY#1223-30 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900031',
        '2024-04-20 ',
        19,
        ' Reusable Water Bottle - Akaki Kality Subcity, Woreda 09, House #111, Nairobi, Kenya',
        ' ch#00001',
        ' PY#1223-31 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900032',
        '2024-04-24 ',
        9,
        ' Robot Vacuum - Lideta Subcity, Woreda 03, Apartment #404, Addis Ababa, Ethiopia',
        ' ch#00002',
        ' PY#1223-32 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900033',
        '2024-04-27 ',
        22,
        ' Outdoor Camping Gear - Kirkos Subcity, Woreda 07, House #678, Addis Ababa, Ethiopia',
        ' ch#00003',
        ' PY#1223-33 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900034',
        '2024-05-01 ',
        7,
        ' Noise-Cancelling Earbuds - Arada Subcity, Woreda 01, Apartment #202, Nairobi, Kenya',
        ' ch#00004',
        ' PY#1223-34 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900035',
        '2024-05-05 ',
        21,
        ' High-Efficiency Washing Machine - Bole Subcity, Woreda 11, House #890, Addis Ababa, Ethiopia',
        ' ch#00005',
        ' PY#1223-35 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900036',
        '2024-05-09 ',
        12,
        ' Electric Toothbrush - Yeka Subcity, Woreda 13, Apartment #603, Kampala, Uganda',
        ' ch#00006',
        ' PY#1223-36 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900037',
        '2024-05-12 ',
        26,
        ' Programmable Thermostat - Nifas Silk-Lafto Subcity, Woreda 05, House #345, Nairobi, Kenya',
        ' ch#00007',
        ' PY#1223-37 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900038',
        '2024-05-16 ',
        19,
        ' Cordless Power Tool Set - Kolfe Keranio Subcity, Woreda 09, Apartment #706, Addis Ababa, Ethiopia',
        ' ch#00008',
        ' PY#1223-38 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900039',
        '2024-05-20 ',
        6,
        ' Air Purifier - Akaki Kality Subcity, Woreda 03, House #456, Nairobi, Kenya',
        ' ch#00009',
        ' PY#1223-39 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900040',
        '2024-05-24 ',
        5,
        ' Tablet Computer - Lideta Subcity, Woreda 07, Apartment #808, Addis Ababa, Ethiopia',
        ' ch#00010',
        ' PY#1223-40 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900041',
        '2024-05-28 ',
        25,
        ' Wireless Headphones - Akaki Kality Subcity, Woreda 09, House #111, Nairobi, Kenya',
        ' ch#00011',
        ' PY#1223-41 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900042',
        '2024-06-01 ',
        2,
        ' Fitness Tracker - Lideta Subcity, Woreda 03, Apartment #404, Addis Ababa, Ethiopia',
        ' ch#00012',
        ' PY#1223-42 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900043',
        '2024-06-04 ',
        18,
        ' DSLR Camera - Kirkos Subcity, Woreda 07, House #678, Addis Ababa, Ethiopia',
        ' ch#00013',
        ' PY#1223-43 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900044',
        '2024-06-08 ',
        6,
        ' Bluetooth Speaker - Arada Subcity, Woreda 01, Apartment #202, Nairobi, Kenya',
        ' ch#00014',
        ' PY#1223-44 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900045',
        '2024-06-12 ',
        18,
        ' Travel Mug - Bole Subcity, Woreda 11, House #890, Addis Ababa, Ethiopia',
        ' ch#00015',
        ' PY#1223-45 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900046',
        '2024-06-16 ',
        13,
        ' Smart Watch - Bole Subcity, Woreda 03, House #456, Nairobi, Kenya',
        ' ch#00016',
        ' PY#1223-46 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900047',
        '2024-06-19 ',
        12,
        ' Gaming Laptop - Gulele Subcity, Woreda 07, Apartment #302, Addis Ababa, Ethiopia',
        ' ch#00017',
        ' PY#1223-47 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900048',
        '2024-06-23 ',
        4,
        ' 4K Smart TV - Yeka Subcity, Woreda 13, House #789, Kampala, Uganda',
        ' ch#00018',
        ' PY#1223-48 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900049',
        '2024-06-27 ',
        8,
        ' Portable Charger - Nifas Silk-Lafto Subcity, Woreda 01, House #234, Nairobi, Kenya',
        ' ch#00019',
        ' PY#1223-49 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900050',
        '2024-07-01 ',
        8,
        ' Desk Lamp - Kolfe Keranio Subcity, Woreda 05, Apartment #501, Addis Ababa, Ethiopia',
        ' ch#00020',
        ' PY#1223-50 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900051',
        '2024-07-05 ',
        24,
        ' Reusable Water Bottle - Akaki Kality Subcity, Woreda 09, House #111, Nairobi, Kenya',
        ' ch#00021',
        ' PY#1223-51 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900052',
        '2024-07-09 ',
        22,
        ' Robot Vacuum - Lideta Subcity, Woreda 03, Apartment #404, Addis Ababa, Ethiopia',
        ' ch#00022',
        ' PY#1223-52 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900053',
        '2024-07-13 ',
        29,
        ' Outdoor Camping Gear - Kirkos Subcity, Woreda 07, House #678, Addis Ababa, Ethiopia',
        ' ch#00023',
        ' PY#1223-53 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900054',
        '2024-07-17 ',
        18,
        ' Noise-Cancelling Earbuds - Arada Subcity, Woreda 01, Apartment #202, Nairobi, Kenya',
        ' ch#00024',
        ' PY#1223-54 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900055',
        '2024-07-20 ',
        9,
        ' High-Efficiency Washing Machine - Bole Subcity, Woreda 11, House #890, Addis Ababa, Ethiopia',
        ' ch#00025',
        ' PY#1223-55 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900056',
        '2024-07-24 ',
        26,
        ' Electric Toothbrush - Yeka Subcity, Woreda 13, Apartment #603, Kampala, Uganda',
        ' ch#00026',
        ' PY#1223-56 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900057',
        '2024-07-28 ',
        13,
        ' Programmable Thermostat - Nifas Silk-Lafto Subcity, Woreda 05, House #345, Nairobi, Kenya',
        ' ch#00027',
        ' PY#1223-57 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900058',
        '2024-08-01 ',
        19,
        ' Cordless Power Tool Set - Kolfe Keranio Subcity, Woreda 09, Apartment #706, Addis Ababa, Ethiopia',
        ' ch#00028',
        ' PY#1223-58 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900059',
        '2024-08-05 ',
        24,
        ' Air Purifier - Akaki Kality Subcity, Woreda 03, House #456, Nairobi, Kenya',
        ' ch#00029',
        ' PY#1223-59 '
    );

INSERT INTO
    Orders
VALUES (
        ' ORD#1900060',
        '2024-08-09 ',
        13,
        ' Tablet Computer - Lideta Subcity, Woreda 07, Apartment #808, Addis Ababa, Ethiopia',
        ' ch#00030',
        ' PY#1223-60 '
    );

/* ********************************************************************* */
INSERT INTO
    products
VALUES (
        ' PRO#190002 ',
        ' Fitness Tracker ',
        ' Tracks steps, heart rate, and sleep with mobile app integration ',
        24.99,
        ' Sl#00002'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190003 ',
        ' DSLR Camera ',
        ' Professional-grade DSLR camera with 24MP sensor and 4K video ',
        39.99,
        ' Sl#00003'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190004 ',
        ' Bluetooth Speaker ',
        ' Portable Bluetooth speaker with 360-degree sound and 12-hour playtime ',
        14.99,
        ' Sl#00004'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190005 ',
        ' Travel Mug ',
        ' Insulated travel mug keeps drinks hot or cold for up to 6 hours ',
        9.99,
        ' Sl#00005'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190006 ',
        ' Smart Watch ',
        ' Hybrid smartwatch and fitness tracker with heart rate monitoring ',
        29.99,
        ' Sl#00006'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190007 ',
        ' Gaming Laptop ',
        ' Powerful gaming laptop with 16GB RAM, 1TB SSD, and NVIDIA RTX 3070 GPU ',
        49.99,
        ' Sl#00007'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190008 ',
        ' 4K Smart TV ',
        ' 4K Ultra HD smart TV with HDR, voice control, and streaming apps ',
        59.99,
        ' Sl#00008'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190009 ',
        ' Portable Charger ',
        ' 10,000mAh power bank charges phones, tablets, and more on-the-go ',
        12.99,
        ' Sl#00009'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190010 ',
        ' Desk Lamp ',
        ' Dimmable LED desk lamp with adjustable arm and touch controls ',
        7.99,
        ' Sl#00010'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190011 ',
        ' Reusable Water Bottle ',
        ' Reusable 32oz water bottle made from stainless steel and BPA-free plastic ',
        4.99,
        ' Sl#00011'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190012 ',
        ' Robot Vacuum ',
        ' Robotic vacuum cleaner with smart mapping, scheduling, and remote control ',
        34.99,
        ' Sl#00012'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190013 ',
        ' Outdoor Camping Gear ',
        ' Rugged camping gear including tent, sleeping bag, and hiking backpack ',
        16.99,
        ' Sl#00013'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190014 ',
        ' Noise-Cancelling Earbuds ',
        ' Noise-cancelling wireless earbuds with 28-hour battery life ',
        11.99,
        ' Sl#00014'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190015 ',
        ' High-Efficiency Washing Machine ',
        ' High-efficiency front-loading washing machine with 4.5 cu. ft. capacity ',
        21.99,
        ' Sl#00015'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190016 ',
        ' Electric Toothbrush ',
        ' Rechargeable electric toothbrush with pressure sensor and 2-minute timer ',
        8.99,
        ' Sl#00016'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190017 ',
        ' Programmable Thermostat ',
        ' WiFi-enabled programmable thermostat for home heating and cooling ',
        13.99,
        ' Sl#00017'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190018 ',
        ' Cordless Power Tool Set ',
        ' 18V cordless power tool combo kit with drill, impact driver, and more ',
        17.99,
        ' Sl#00018'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190019 ',
        ' Air Purifier ',
        ' True HEPA air purifier removes 99.97% of airborne pollutants ',
        22.99,
        ' Sl#00019'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190020 ',
        ' Tablet Computer ',
        ' Lightweight 10-inch Android tablet with 32GB storage and 8MP camera ',
        27.99,
        ' Sl#00020'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190021 ',
        ' Wireless Headphones ',
        ' High-quality wireless headphones with 20-hour battery life ',
        19.99,
        ' Sl#00021'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190022 ',
        ' Fitness Tracker ',
        ' Tracks steps, heart rate, and sleep with mobile app integration ',
        24.99,
        ' Sl#00022'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190023 ',
        ' DSLR Camera ',
        ' Professional-grade DSLR camera with 24MP sensor and 4K video ',
        39.99,
        ' Sl#00023'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190024 ',
        ' Bluetooth Speaker ',
        ' Portable Bluetooth speaker with 360-degree sound and 12-hour playtime ',
        14.99,
        ' Sl#00024'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190025 ',
        ' Travel Mug ',
        ' Insulated travel mug keeps drinks hot or cold for up to 6 hours ',
        9.99,
        ' Sl#00025'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190026 ',
        ' Smart Watch ',
        ' Hybrid smartwatch and fitness tracker with heart rate monitoring ',
        29.99,
        ' Sl#00026'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190027 ',
        ' Gaming Laptop ',
        ' Powerful gaming laptop with 16GB RAM, 1TB SSD, and NVIDIA RTX 3070 GPU ',
        49.99,
        ' Sl#00027'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190028 ',
        ' 4K Smart TV ',
        ' 4K Ultra HD smart TV with HDR, voice control, and streaming apps ',
        59.99,
        ' Sl#00028'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190029 ',
        ' Portable Charger ',
        ' 10,000mAh power bank charges phones, tablets, and more on-the-go ',
        12.99,
        ' Sl#00029'
    );

INSERT INTO
    products
VALUES (
        ' PRO#190030 ',
        ' Desk Lamp ',
        ' Dimmable LED desk lamp with adjustable arm and touch controls ',
        7.99,
        ' Sl#00030'
    );

/* ******************************************************************** */
INSERT INTO
    Inventory
VALUES (
        ' PRO#190001 ',
        ' ORD#1900001',
        ' 14 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190002 ',
        ' ORD#1900002',
        ' 3 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190003 ',
        ' ORD#1900003',
        ' 24 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190004 ',
        ' ORD#1900004',
        ' 11 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190005 ',
        ' ORD#1900005',
        ' 14 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190006 ',
        ' ORD#1900006',
        ' 25 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190007 ',
        ' ORD#1900007',
        ' 5 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190008 ',
        ' ORD#1900008',
        ' 12 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190009 ',
        ' ORD#1900009',
        ' 21 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190010 ',
        ' ORD#1900010',
        ' 15 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190011 ',
        ' ORD#1900011',
        ' 6 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190012 ',
        ' ORD#1900012',
        ' 26 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190013 ',
        ' ORD#1900013',
        ' 30 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190014 ',
        ' ORD#1900014',
        ' 22 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190015 ',
        ' ORD#1900015',
        ' 15 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190016 ',
        ' ORD#1900016',
        ' 22 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190017 ',
        ' ORD#1900017',
        ' 26 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190018 ',
        ' ORD#1900018',
        ' 19 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190019 ',
        ' ORD#1900019',
        ' 4 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190020 ',
        ' ORD#1900020',
        ' 29 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190021 ',
        ' ORD#1900001',
        ' 20 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190022 ',
        ' ORD#1900002',
        ' 23 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190023 ',
        ' ORD#1900003',
        ' 7 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190024 ',
        ' ORD#1900004',
        ' 7 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190025 ',
        ' ORD#1900005',
        ' 10 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190026 ',
        ' ORD#1900006',
        ' 4 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190027 ',
        ' ORD#1900007',
        ' 2 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190028 ',
        ' ORD#1900008',
        ' 19 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190029 ',
        ' ORD#1900009',
        ' 18 '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190030 ',
        ' ORD#1900010',
        ' 6 '
    );

/* ********************************************************** */
INSERT INTO
    pay
VALUES (
        ' 0123-456789-01',
        ' PY#1223-01 ',
        ' 2024-01-02 ',
        ' 199.98999999999998 ',
        ' Visa '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-02',
        ' PY#1223-02 ',
        ' 2024-01-05 ',
        ' 249.98999999999998 ',
        ' Mastercard '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-03',
        ' PY#1223-03 ',
        ' 2024-01-11 ',
        ' 399.99 ',
        ' American Express '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-04',
        ' PY#1223-04 ',
        ' 2024-01-13 ',
        ' 149.99 ',
        ' Discover '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-05',
        ' PY#1223-05 ',
        ' 2024-01-20 ',
        ' 99.99000000000001 ',
        ' PayPal '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-06',
        ' PY#1223-06 ',
        ' 2024-01-24 ',
        ' 299.98999999999995 ',
        ' Apple Pay '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-07',
        ' PY#1223-07 ',
        ' 2024-01-26 ',
        ' 499.99 ',
        ' Google Pay '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-08',
        ' PY#1223-08 ',
        ' 2024-01-29 ',
        ' 599.99 ',
        ' Visa '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-09',
        ' PY#1223-09 ',
        ' 2024-02-01 ',
        ' 129.99 ',
        ' Mastercard '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-10',
        ' PY#1223-10 ',
        ' 2024-02-04 ',
        ' 79.99000000000001 ',
        ' American Express '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-11',
        ' PY#1223-11 ',
        ' 2024-02-07 ',
        ' 49.99000000000001 ',
        ' Discover '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-12',
        ' PY#1223-12 ',
        ' 2024-02-09 ',
        ' 349.99 ',
        ' PayPal '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-13',
        ' PY#1223-13 ',
        ' 2024-02-14 ',
        ' 169.98999999999998 ',
        ' Apple Pay '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-14',
        ' PY#1223-14 ',
        ' 2024-02-18 ',
        ' 119.99000000000001 ',
        ' Google Pay '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-15',
        ' PY#1223-15 ',
        ' 2024-02-23 ',
        ' 219.98999999999998 ',
        ' Visa '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-16',
        ' PY#1223-16 ',
        ' 2024-02-26 ',
        ' 89.99000000000001 ',
        ' Mastercard '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-17',
        ' PY#1223-17 ',
        ' 2024-03-01 ',
        ' 139.99 ',
        ' American Express '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-18',
        ' PY#1223-18 ',
        ' 2024-03-05 ',
        ' 179.98999999999998 ',
        ' Discover '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-19',
        ' PY#1223-19 ',
        ' 2024-03-10 ',
        ' 229.98999999999998 ',
        ' PayPal '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-20',
        ' PY#1223-20 ',
        ' 2024-03-12 ',
        ' 279.98999999999995 ',
        ' Apple Pay '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-21',
        ' PY#1223-21 ',
        ' 2024-03-15 ',
        ' 199.98999999999998 ',
        ' Google Pay '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-22',
        ' PY#1223-22 ',
        ' 2024-03-18 ',
        ' 249.98999999999998 ',
        ' Visa '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-23',
        ' PY#1223-23 ',
        ' 2024-03-22 ',
        ' 399.99 ',
        ' Mastercard '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-24',
        ' PY#1223-24 ',
        ' 2024-03-26 ',
        ' 149.99 ',
        ' American Express '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-25',
        ' PY#1223-25 ',
        ' 2024-03-30 ',
        ' 99.99000000000001 ',
        ' Discover '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-26',
        ' PY#1223-26 ',
        ' 2024-04-02 ',
        ' 299.98999999999995 ',
        ' PayPal '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-27',
        ' PY#1223-27 ',
        ' 2024-04-06 ',
        ' 499.99 ',
        ' Apple Pay '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-28',
        ' PY#1223-28 ',
        ' 2024-04-09 ',
        ' 599.99 ',
        ' Google Pay '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-29',
        ' PY#1223-29 ',
        ' 2024-04-13 ',
        ' 129.99 ',
        ' Visa '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-30',
        ' PY#1223-30 ',
        ' 2024-04-17 ',
        ' 79.99000000000001 ',
        ' Mastercard '
    );

/* ************************************************* */

/* SELECTION TEBELES */
/* ************************************************* */
SELECT * FROM customers;

SELECT * FROM sellers;

SELECT * FROM bankaccounts;

SELECT * FROM orders;

SELECT * FROM payments;

SELECT * FROM products;

SELECT * FROM pay;

SELECT * FROM inventory;

/* ************************************************* */

/* VIEWS */
/* ************************************************* */
CREATE VIEW customers_report AS
SELECT c.customer_id, c.customer_first_name, c.customer_last_name, c.customer_email, b.AccountBalance, c.payment_details, b.Deposit, b.Withdrawal
FROM customers c
    INNER JOIN bankaccounts b ON b.customerID = c.customer_id;

CREATE VIEW sales_report AS
SELECT
    s.seller_first_name,
    s.seller_last_name,
    o.order_id,
    o.order_date,
    o.total_amount,
    p.product_name,
    p.product_description,
    payment_date,
    payment_amount,
    payment_method
from
    orders o
    INNER JOIN inventory i on o.order_id = i.order_id
    INNER JOIN products p on i.product_id = p.product_id
    INNER JOIN sellers s ON s.sellerid = p.sellerid
    INNER JOIN payment pp ON pp.payment_id = o.payment_id
    INNER JOIN pay q ON q.payment_id = pp.payment_id;

CREATE VIEW inventory_report AS
SELECT p.product_id, p.product_name, p.product_description, p.product_price, i.Quantity
FROM products p
    INNER JOIN inventory i on p.product_id = i.product_id;

CREATE VIEW product_report AS
SELECT p.product_id, p.product_name, p.product_description, p.product_price, i.Quantity, s.seller_first_name, s.seller_last_name, s.seller_address, s.seller_contact_info
FROM
    products p
    INNER JOIN sellers s ON p.sellerid = s.sellerid
    INNER JOIN inventory i ON i.product_id = p.product_id;

DELIMITER $$

CREATE PROCEDURE customers_report()
        BEGIN
        SELECT
            c.customer_id,
            c.customer_first_name,
            c.customer_last_name,
            c.customer_email,
            b.AccountBalance,
            c.payment_details,
            b.Deposit,
            b.Withdrawal
            FROM customers c
                INNER JOIN bankaccounts b ON b.customerID = c.customer_id;
        END;$$

DELIMITER;

call customers_report ()

DELIMITER $$

CREATE PROCEDURE sales_report()
        BEGIN
        SELECT
            s.seller_first_name,
            s.seller_last_name,
            o.order_id,
            o.order_date,
            o.total_amount,
            p.product_name,
            p.product_description,
            payment_date,
            payment_amount,
            payment_method
            from
            orders o
            INNER JOIN inventory i on o.order_id = i.order_id
            INNER JOIN products p on i.product_id = p.product_id
            INNER JOIN sellers s ON s.sellerid = p.sellerid
            INNER JOIN payment pp ON pp.payment_id = o.payment_id
            INNER JOIN pay q ON q.payment_id = pp.payment_id;
        END;$$

DELIMITER;

DELIMITER$$

CREATE PROCEDURE inventory_report()
        BEGIN
            SELECT
            p.product_id,p.product_name,p.product_description,p.product_price,i.Quantity
            FROM products p
            INNER JOIN
                inventory i on p.product_id = i.product_id;
        END;$$

DELIMITER;

DELIMITER$$

CREATE PROCEDURE product_report()
        BEGIN
            SELECT p.product_id,p.product_name,p.product_description,p.product_price,i.Quantity,s.seller_first_name,s.seller_last_name,
            s.seller_address,s.seller_contact_info
            FROM products p 
            INNER JOIN sellers s ON p.sellerid = s.sellerid
            INNER JOIN inventory i ON i.product_id = p.product_id;
        END;$$

DELIMITER;

/* ______________________________________________ */
/*                  TRANSACTIONS                   */
/* ______________________________________________ */
START TRANSACTION;

UPDATE bankaccounts
SET
    AccountBalance = AccountBalance - 199.99
WHERE
    account_number = ' 0123-456789-01';

UPDATE bankaccounts
SET
    Withdrawal = Withdrawal + 199.99
WHERE
    account_number = ' 0123-456789-01';

UPDATE bankaccounts
SET
    AccountBalance = AccountBalance + 199.99
WHERE
    account_number = ' 0123-456789-02';

INSERT INTO
    Orders
VALUES (
        ' ORD#1900061',
        '2024-08-09 ',
        3,
        ' Tablet Computer - Lideta Subcity, Woreda 06, Apartment #808, Addis Ababa, Ethiopia',
        ' ch#00030',
        ' PY#1223-60 '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-02',
        ' PY#1223-32 ',
        ' 2024-01-22 ',
        ' 199.98 ',
        ' Apple Pay '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190030 ',
        ' ORD#1900061',
        ' 3 '
    );

COMMIT;

START TRANSACTION;

UPDATE bankaccounts
SET
    AccountBalance = AccountBalance - 199.99
WHERE
    account_number = ' 0123-456789-01';

UPDATE bankaccounts
SET
    Withdrawal = Withdrawal + 199.99
WHERE
    account_number = ' 0123-456789-01';

UPDATE bankaccounts
SET
    AccountBalance = AccountBalance + 199.99
WHERE
    account_number = ' 0123-456789-02';

INSERT INTO
    Orders
VALUES (
        ' ORD#1900061',
        '2024-08-09 ',
        3,
        ' Tablet Computer - Lideta Subcity, Woreda 06, Apartment #808, Addis Ababa, Ethiopia',
        ' ch#00030',
        ' PY#1223-60 '
    );

INSERT INTO
    pay
VALUES (
        ' 0123-456789-02',
        ' PY#1223-32 ',
        ' 2024-01-22 ',
        ' 199.98 ',
        ' Apple Pay '
    );

INSERT INTO
    Inventory
VALUES (
        ' PRO#190030 ',
        ' ORD#1900061',
        ' 3 '
    );

ROLLBACK;

/* ______________________________________________ */

/*                  SECRUTIY                  */
/* PERMMISHION */
/* ______________________________________________ */
CREATE USER 'Database_Administrator' @'localhost' IDENTIFIED BY 'Dba@1221';

CREATE USER 'Developers' @'localhost' IDENTIFIED BY 'Dev@1221';

CREATE USER 'Data_Analysts' @'localhost' IDENTIFIED BY 'Dta@1221';

CREATE USER 'Application_User' @'localhost' IDENTIFIED BY 'Apu@1221';

CREATE USER 'Auditors' @'localhost' IDENTIFIED BY 'Aud@1221';

GRANT ALL PRIVILEGES ON shop.* TO 'Database_Administrator' @'localhost';

GRANT
SELECT,
INSERT
,
UPDATE,
DELETE ON shop.bankaccounts TO 'Developers' @'localhost';

GRANT SELECT ON shop.bankaccounts TO 'Data_Analysts' @'localhost';

GRANT
SELECT ON shop.customers_report TO 'Data_Analysts' @'localhost';

GRANT
SELECT,
INSERT
    ON shop.orders TO 'Application_User' @'localhost';

GRANT
EXECUTE ON PROCEDURE shop.sales_report TO 'Application_User' @'localhost';

GRANT SELECT ON shop.bankaccounts TO 'Auditors' @'localhost';

GRANT SELECT ON shop.customers_report TO 'Auditors' @'localhost';