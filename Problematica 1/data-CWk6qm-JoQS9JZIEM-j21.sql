DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `street` varchar(255) default NULL,
  `number` mediumint default NULL,
  `city` varchar(255),
  `province` varchar(50) default NULL,
  `country` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("1888 Quisque St.",7574,"Paarl","LAM","Colombia"),
  ("Ap #611-8560 Sed, Rd.",354,"Cagayan de Oro","NI","South Korea"),
  ("939-5232 Pellentesque Rd.",2892,"Timaukel","BEL","India"),
  ("151-1896 Vitae Rd.",4913,"Haripur","HE","Pakistan"),
  ("4692 A Avenue",1878,"Picton","PK","Peru"),
  ("P.O. Box 117, 1688 Eget Road",1721,"Hard","ST","Belgium"),
  ("8252 Sem St.",2478,"Ciudad Santa Catarina","KEM","Brazil"),
  ("Ap #593-1945 Ut, Ave",1877,"Novo Hamburgo","SG-01","China"),
  ("P.O. Box 722, 2982 Enim St.",7801,"Yunnan","WB","Costa Rica"),
  ("Ap #311-6708 Sodales Avenue",554,"Stalowa Wola","Bà Rịa–Vũng Tàu","United Kingdom");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("Ap #770-8589 Morbi St.",3555,"Gangneung","Xīnán","Austria"),
  ("Ap #635-1906 At St.",1278,"Akşehir","Gyeongbuk","Singapore"),
  ("595-611 Eu St.",2405,"Weyburn","TAA","Indonesia"),
  ("Ap #702-6593 Nec Av.",7528,"Palembang","Chungnam","Philippines"),
  ("P.O. Box 280, 5792 Risus. Rd.",4962,"Jambi","Jeonbuk","Russian Federation"),
  ("1352 Duis Street",4023,"Klagenfurt","PB","Indonesia"),
  ("Ap #429-6819 Sem Rd.",8974,"San Benedetto del Tronto","KY","Netherlands"),
  ("368-8744 Ut St.",8854,"Vienna","PUN","Germany"),
  ("P.O. Box 876, 6950 Lacus, St.",6182,"Remagne","KS","United States"),
  ("P.O. Box 860, 525 Dapibus Avenue",3865,"Acuña","XV","Australia");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("814 Velit. St.",2845,"Linton","NI","Brazil"),
  ("Ap #546-1027 Amet St.",9108,"Macau","HH","United States"),
  ("2960 Placerat, Avenue",5371,"Armenia","W","Singapore"),
  ("Ap #963-2553 Pede, Rd.",1844,"Ørsta","WM","Canada"),
  ("P.O. Box 976, 983 Nec Street",6822,"Berdychiv","03","Poland"),
  ("337-2268 Lorem Av.",5630,"Jaén","SC","Netherlands"),
  ("P.O. Box 483, 1855 Vitae Street",3315,"Colchane","SA","Belgium"),
  ("Ap #531-2626 Dui Road",8904,"Breda","III","Germany"),
  ("187-4473 Velit Rd.",3563,"Antakya","PA","Vietnam"),
  ("829-3872 Ac Avenue",8843,"Gangneung","Şanlıurfa","Vietnam");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("400-7063 Id St.",5549,"Gunpo","AS","South Korea"),
  ("Ap #966-3998 Donec Av.",4255,"Heppenheim","QLD","Chile"),
  ("691-1699 Nec, Av.",6113,"Zwelitsha","LK","Mexico"),
  ("Ap #108-229 Consequat Street",8810,"Moxhe","VIC","Netherlands"),
  ("Ap #946-1625 Ultrices Ave",690,"Duque de Caxias","LR","France"),
  ("125-7395 Est, Road",689,"Cambridge","Xīběi","United States"),
  ("172 Sagittis Avenue",6011,"Novosibirsk","NL","Spain"),
  ("7931 Vestibulum. Avenue",129,"Tarakan","KPK","Peru"),
  ("Ap #420-183 Congue Ave",3683,"Santander de Quilichao","LAM","Indonesia"),
  ("2147 Pretium Avenue",316,"Port Nolloth","CE","Turkey");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("137-2170 Luctus Av.",3400,"Đà Nẵng","Tuyên Quang","Germany"),
  ("P.O. Box 410, 5279 Vitae, Road",4716,"Katowice","03","France"),
  ("975-4536 Ac Rd.",8808,"Móstoles","Zhōngnán","Austria"),
  ("Ap #775-9768 Vulputate, Rd.",2533,"Rangiora","Thừa Thiên–Huế","United Kingdom"),
  ("Ap #557-809 Taciti Road",5164,"Gliwice","LP","Netherlands"),
  ("286-5832 Sed Avenue",920,"Envigado","30","Costa Rica"),
  ("5192 Nec St.",2709,"Blenheim","WY","United States"),
  ("Ap #772-9808 Ut Rd.",7822,"Ludvika","U","Ukraine"),
  ("959-3009 Sed Av.",6677,"Lodhran","F","Norway"),
  ("Ap #813-7741 Vivamus Avenue",8632,"Orange","NI","South Africa");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("Ap #799-3979 Magna. St.",8611,"Opole","YAR","Brazil"),
  ("P.O. Box 350, 1274 Nec Rd.",5257,"Manila","II","Australia"),
  ("Ap #620-8694 Dictum Street",9326,"Acireale","NC","China"),
  ("5698 Nec Av.",367,"New Radnor","ZK","United States"),
  ("280-7276 Magna. Street",8299,"Burgos","ACT","Poland"),
  ("Ap #664-7009 Egestas, Rd.",5430,"Augusta","Tirol","Philippines"),
  ("960-1145 Dignissim St.",501,"Pacasmayo","LEN","New Zealand"),
  ("6895 Sed Road",7187,"San Rafael","U","Vietnam"),
  ("P.O. Box 491, 7713 Lectus Street",8178,"Beervelde","VII","South Korea"),
  ("1811 Penatibus Rd.",3795,"Gravataí","BOY","Philippines");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("483 Cursus Street",6548,"La Rochelle","SJ","Nigeria"),
  ("P.O. Box 495, 5467 Hendrerit St.",4684,"Béziers","BW","Brazil"),
  ("1854 Sem. Ave",7351,"Manavgat","CAR","Brazil"),
  ("613-3728 Lectus. Road",7110,"Mora","NÖ.","Chile"),
  ("Ap #350-434 Quis St.",5121,"Columbus","SI","Germany"),
  ("Ap #997-4062 Dictum St.",2566,"Randfontein","XIV","South Korea"),
  ("Ap #188-6838 Lobortis St.",4672,"Kamianets-Podilskyi","NGR","Belgium"),
  ("581 Egestas. Street",2772,"Port Augusta","Gyeongbuk","India"),
  ("P.O. Box 331, 128 Integer St.",1074,"Minna","MB","Indonesia"),
  ("P.O. Box 582, 4122 Integer Ave",784,"Körfez","OK","Australia");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("Ap #206-5539 Consequat Rd.",9312,"Kavaratti","CM","New Zealand"),
  ("203-1982 Lorem Road",6952,"Sloviansk","GO","Austria"),
  ("6647 Maecenas Av.",2876,"Parchim	City","Ktn.","Peru"),
  ("618-9026 Arcu Avenue",645,"Cork","YO","Poland"),
  ("388-2071 Nulla Road",5424,"Puerto Vallarta","BC","Sweden"),
  ("Ap #381-4581 Et Rd.",8578,"Sohbatpur","Dōngběi","Singapore"),
  ("Ap #698-7472 Nunc Street",1849,"Shillong","CAR","South Korea"),
  ("Ap #735-6399 Ultricies Avenue",8680,"Changi","Hà Nam","Peru"),
  ("P.O. Box 188, 630 Semper Ave",4158,"Tuguegarao","LOR","Ireland"),
  ("911-6965 Sed St.",8444,"Chungju","JT","Indonesia");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("6588 Enim. Ave",8527,"Saint-Jean-Geest","Dōngběi","South Africa"),
  ("3952 Cursus St.",3754,"Xinjiang","U","Spain"),
  ("Ap #767-9415 Gravida Rd.",8562,"Anyang","HE","South Africa"),
  ("800-2009 Cursus Av.",7971,"Fauske","Xīběi","India"),
  ("Ap #410-1502 Sed, St.",8392,"Châtellerault","CH","China"),
  ("356-9050 Eget Road",5131,"San Pedro Garza García","W","Turkey"),
  ("1899 Vitae St.",8232,"Vitry-sur-Seine","regionXIII","New Zealand"),
  ("P.O. Box 874, 2441 Dolor Road",1048,"Marbaix","regionXIII","Austria"),
  ("P.O. Box 224, 4547 Praesent Av.",8428,"Antakya","Mor.","Australia"),
  ("Ap #211-1416 Ultrices Rd.",7459,"Leominster","MV","China");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("320-173 Consequat Av.",8846,"Chía","BL","Netherlands"),
  ("851-9140 Quam Ave",7257,"Hồ Chí Minh City","LA","Norway"),
  ("P.O. Box 642, 8938 Nunc Road",5623,"Tanjung Pinang","Kon Tum","New Zealand"),
  ("P.O. Box 520, 2522 Justo St.",2640,"Cedar Rapids","SN","Poland"),
  ("Ap #744-6587 Enim Avenue",7586,"Otukpo","CM","Spain"),
  ("Ap #894-6577 Magna. Ave",4226,"San Cristóbal de la Laguna","Xīnán","New Zealand"),
  ("1894 In St.",65,"Oryol","30","China"),
  ("P.O. Box 949, 8342 Diam. Avenue",4517,"Rockville","PR","India"),
  ("4120 Ultricies Road",8775,"Holywell","LAM","Ukraine"),
  ("Ap #285-5463 Elit. Road",4524,"Baguio","Xīnán","Sweden");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("4734 Pharetra Street",1481,"Swellendam","CA","South Korea"),
  ("Ap #828-9457 Mauris, Av.",3515,"Tauranga","SAP","South Korea"),
  ("P.O. Box 560, 5935 Sit Rd.",7047,"Gaya","TX","Germany"),
  ("P.O. Box 530, 6849 Parturient St.",5966,"Chennai","SG-02","Canada"),
  ("604-6957 Magna Rd.",8577,"Kon Tum","LU","China"),
  ("Ap #998-4074 Amet Ave",8535,"Wyoming","BL","China"),
  ("125-614 Eget Avenue",4078,"Vinh","N.","Australia"),
  ("359-5745 Faucibus Av.",8528,"Santander","Chungbuk","Philippines"),
  ("Ap #296-9623 Sed Street",2977,"Badajoz","SAN","New Zealand"),
  ("P.O. Box 175, 9452 Eleifend Rd.",7932,"Paz de Ariporo","SVE","Ireland");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("774-1819 Rutrum, Ave",9517,"Central Water Catchment","X","Pakistan"),
  ("593-6704 Amet, Av.",2006,"Terme","Ver.","Mexico"),
  ("Ap #275-4330 Viverra. Road",7730,"Cork","C","Pakistan"),
  ("6962 Eleifend Street",6795,"Tibet","Fl","South Korea"),
  ("Ap #871-5191 Vivamus Rd.",5701,"Jaboatão dos Guararapes","F","Italy"),
  ("Ap #630-9094 Accumsan Street",3157,"Jeju","Hatay","Russian Federation"),
  ("673-2876 Blandit Ave",2357,"Alexandra","15","United States"),
  ("586-7818 Felis, Avenue",8743,"Newton","VII","Belgium"),
  ("P.O. Box 468, 7828 Cursus Rd.",5178,"Silvan","KL","Peru"),
  ("Ap #677-6987 Ligula Road",9380,"Millet","WP","Mexico");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("Ap #446-3870 Eu St.",2531,"Seattle","regionIII","New Zealand"),
  ("1450 Amet, St.",549,"Dijon","DP","New Zealand"),
  ("Ap #171-2072 Nostra, Road",7085,"Temuka","ID","Poland"),
  ("692-4116 Congue. Av.",1787,"Thứa","Stm.","China"),
  ("332-7540 Nec St.",4313,"Green Bay","Lai Châu","Austria"),
  ("4204 Erat. Avenue",7590,"Mamuju","CA","Colombia"),
  ("Ap #174-7103 Hendrerit St.",6784,"Pau","KPK","Poland"),
  ("Ap #590-227 At Ave",7426,"Đà Nẵng","SP","Vietnam"),
  ("883-9117 Iaculis, St.",6165,"Norrköping","ZP","New Zealand"),
  ("P.O. Box 479, 9561 Turpis Street",3466,"Qinghai","Jeonnam","South Africa");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("291-6866 Non Rd.",2831,"Gore","Huáběi","Ukraine"),
  ("9599 Elit. Street",417,"Maryborough","HE","South Africa"),
  ("P.O. Box 639, 1831 Vitae Rd.",9936,"Tarbes","NW","Norway"),
  ("Ap #325-6417 Adipiscing Ave",6890,"Lambersart","VLG","China"),
  ("P.O. Box 965, 2260 Donec Av.",5927,"San Rafael","WI","Colombia"),
  ("Ap #718-7289 Sapien, Rd.",7904,"Gebze","IRK","Russian Federation"),
  ("406-1786 Quam, St.",3136,"Sichuan","SG-01","Costa Rica"),
  ("146-4889 Vel St.",877,"Chulucanas","FA","Italy"),
  ("581-8884 Eget Street",2563,"Eindhoven","Z.","Germany"),
  ("562-9186 Rhoncus. Road",4533,"Bremen","SI","South Africa");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("P.O. Box 282, 8894 Diam St.",1021,"Smila","AS","United Kingdom"),
  ("Ap #421-3534 Quam Rd.",5228,"Baltimore","MP","Norway"),
  ("P.O. Box 837, 8880 Senectus Avenue",1207,"Spaniard's Bay","NW","Netherlands"),
  ("425-8523 Ultrices, Avenue",1268,"Sandviken","NÖ.","South Africa"),
  ("732-3962 Quis Av.",8777,"Gaziantep","VI","Spain"),
  ("7176 Aliquet Street",3806,"Saint-Lô","NAR","Austria"),
  ("P.O. Box 716, 2007 Dapibus Avenue",4486,"Kırıkhan","Kocaeli","Turkey"),
  ("Ap #348-3112 Lacus. Road",7167,"Bruck an der Mur","GUA","Belgium"),
  ("P.O. Box 355, 8851 Suspendisse St.",4124,"Ravenstein","NC","Vietnam"),
  ("Ap #197-3281 Nulla. Road",10,"Zwelitsha","03","New Zealand");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("2167 Nullam St.",8425,"Heilongjiang","CAU","New Zealand"),
  ("Ap #986-8462 Est Rd.",2577,"Bhakkar","BOY","South Africa"),
  ("3144 Dictum Rd.",2585,"Zaria","LX","Colombia"),
  ("238-6665 Sit Rd.",8520,"Konya","KPK","Chile"),
  ("5260 Dolor Rd.",6396,"Rostov","N.","Turkey"),
  ("P.O. Box 277, 8392 Et Street",7674,"Vanderbijlpark","OD","Ireland"),
  ("4915 Ullamcorper, Rd.",4925,"Baracaldo","Gangwon","Sweden"),
  ("793-4858 Proin Street",2547,"Piedecuesta","OY","South Korea"),
  ("4491 Cum Rd.",4252,"Sujawal","Dōngběi","Netherlands"),
  ("P.O. Box 941, 2628 Urna Avenue",7788,"Steinkjer","Aydın","Indonesia");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("Ap #574-5794 Lorem St.",9440,"Istanbul","XIV","Austria"),
  ("8419 Ante Avenue",300,"Lipetsk","BU","Poland"),
  ("P.O. Box 812, 2646 A Rd.",2684,"Konstanz","50","Ukraine"),
  ("794-3119 Ac Rd.",1171,"Kohima","NI","South Africa"),
  ("541-9793 Lorem Rd.",9407,"Maryborough","NT","Ireland"),
  ("433-2670 Fusce Road",2376,"Hamburg","KP","France"),
  ("Ap #874-6985 Euismod Av.",2725,"Jecheon","SAM","Sweden"),
  ("P.O. Box 374, 1913 Convallis Rd.",8811,"Bethlehem","L.","Sweden"),
  ("Ap #195-9111 Tristique Rd.",7613,"Chicago","MA","Ukraine"),
  ("Ap #404-7825 Elementum, Rd.",1007,"Masbate City","VI","Pakistan");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("P.O. Box 235, 2678 Nisi St.",6852,"Kędzierzyn-Koźle","VO","China"),
  ("5731 Adipiscing St.",1251,"Palma de Mallorca","NI","Colombia"),
  ("939-4546 Ultrices. Ave",4967,"Bundaberg","BEL","Italy"),
  ("Ap #992-2106 Mollis Ave",8317,"Alingsås","KU","Netherlands"),
  ("Ap #276-1867 Rutrum Rd.",9369,"Mercedes","NI","Pakistan"),
  ("Ap #606-6460 A St.",4627,"Le Puy-en-Velay","NI","United States"),
  ("409-7564 Neque Avenue",4640,"Yurimaguas","IN","Indonesia"),
  ("7975 Nibh Avenue",8569,"St. Albans","Xīnán","Singapore"),
  ("P.O. Box 662, 7689 Erat. Rd.",9555,"Hildesheim","Van","Peru"),
  ("Ap #720-261 Sit Road",8110,"Greymouth","Ver.","New Zealand");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("435-3752 Eu, Av.",8434,"San Vicente de Cañete","BB","Germany"),
  ("P.O. Box 130, 4946 Vestibulum Street",3487,"Henan","LA","Ireland"),
  ("Ap #312-5659 Id, Ave",9730,"Salice Salentino","CAU","Russian Federation"),
  ("523-7193 Id, Rd.",3837,"Tianjin","PUG","Austria"),
  ("131-9565 Ac Road",9141,"Hamburg","L.","Germany"),
  ("833-6495 Adipiscing, Ave",7863,"Auldearn","LAL","Chile"),
  ("458-2461 In, St.",3976,"Linköping","regionVI","France"),
  ("P.O. Box 968, 9522 Suspendisse Rd.",1552,"Jonesboro","Xīběi","Indonesia"),
  ("Ap #595-660 Mauris Street",8487,"Presteigne","SO","Canada"),
  ("Ap #897-6820 Quis St.",5610,"Villahermosa","CE","Costa Rica");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("Ap #509-4461 Quis Avenue",3848,"Cañas","N.","Vietnam"),
  ("P.O. Box 303, 4023 Consectetuer Avenue",1262,"Sachs Harbour","WE","Austria"),
  ("418-6083 Pede. St.",692,"Vị Thanh","Tamps.","Austria"),
  ("P.O. Box 978, 9865 Cum Road",5252,"Seevetal","NI","Turkey"),
  ("Ap #420-8358 Quisque Avenue",8333,"Panguipulli","ER","Spain"),
  ("390-8408 Tellus. St.",6011,"Baguio","N.","South Africa"),
  ("P.O. Box 409, 1321 Praesent Av.",4648,"Chiclayo","C","Spain"),
  ("Ap #494-3298 Montes, Rd.",3540,"Mexicali","E","Chile"),
  ("617-4429 Nec Avenue",2219,"Balvano","IL","Norway"),
  ("Ap #255-4751 Est. Road",4230,"Kirov","XIV","New Zealand");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("Ap #230-877 Sed Street",8119,"Pasir Ris","BE","Ireland"),
  ("172-8030 Pharetra, Ave",4397,"Swan","BAS","Brazil"),
  ("Ap #418-8271 At Rd.",6770,"Wimborne Minster","LP","United Kingdom"),
  ("Ap #156-4012 Tincidunt. Avenue",5356,"Mglin","ARE","Norway"),
  ("684-108 Massa. Rd.",2052,"Istmina","CUN","India"),
  ("Ap #522-2744 Risus Street",9223,"Wellington","E","South Africa"),
  ("778-3479 Faucibus. Rd.",2717,"Hamburg","ML","United Kingdom"),
  ("394-6797 Ridiculus Street",9933,"Ghislarengo","KZN","Netherlands"),
  ("Ap #655-4528 Amet Avenue",6165,"Abeokuta","NU","Chile"),
  ("Ap #829-1119 Curabitur Avenue",3263,"Rouyn-Noranda","WA","Costa Rica");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("Ap #883-6803 Duis Ave",6296,"Kano","CAR","Norway"),
  ("414-1140 Non, Rd.",9417,"Guwahati","Dōngběi","Norway"),
  ("Ap #804-5023 Turpis Road",9739,"Westport","SI","Ukraine"),
  ("428-8084 Ut Avenue",6117,"Lochgilphead","RV","Australia"),
  ("329-958 Imperdiet Av.",8960,"Vehari","SU","Singapore"),
  ("4377 Nulla. Ave",9813,"Carunchio","ATL","China"),
  ("Ap #592-5929 Commodo Rd.",6345,"Singkawang","54","Singapore"),
  ("Ap #556-6792 Aliquam Ave",79,"Dongducheon","BR","Austria"),
  ("8976 Integer Av.",3201,"Nizhyn","AN","Philippines"),
  ("Ap #325-3319 Egestas. Avenue",9123,"Barkhan","regionIV-A","Indonesia");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("Ap #631-1458 Massa Rd.",1628,"Kemerovo","IN","Sweden"),
  ("4380 Penatibus Rd.",2415,"Bắc Kạn","BU","Turkey"),
  ("318-7678 Lectus Street",8025,"Waitara","SL","Costa Rica"),
  ("Ap #857-3467 Arcu Rd.",2959,"Hengelo","W","Spain"),
  ("Ap #394-9367 Tempor, Avenue",93,"Albagiara","PSK","Singapore"),
  ("966-817 Dolor. Avenue",3647,"Ganshoren","ST","Norway"),
  ("P.O. Box 753, 8073 Porta Avenue",8824,"Stonewall","HE","Spain"),
  ("Ap #478-9255 Aliquam Avenue",481,"Gansu","BL","South Africa"),
  ("425-363 Magna. Rd.",9102,"Yogyakarta","F","Italy"),
  ("133-282 Et, Rd.",8472,"Alta","CES","New Zealand");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("746-6991 Feugiat. Ave",8832,"Phan Thiết","RI","Sweden"),
  ("7295 Vitae Av.",4120,"Uyo","CUN","Russian Federation"),
  ("Ap #211-647 Euismod Avenue",2067,"Porpetto","BK","Vietnam"),
  ("Ap #977-3035 Aliquam Avenue",4691,"Ichalkaranji","03","Austria"),
  ("Ap #624-2067 Non St.",6500,"Villahermosa","HA","South Korea"),
  ("Ap #503-2729 Tellus St.",4298,"Dutse","QC","Spain"),
  ("6730 Et, Rd.",5778,"Hengelo","Balıkesir","Poland"),
  ("Ap #462-9903 Etiam Rd.",9803,"San Juan del Cesar","PI","Spain"),
  ("Ap #648-1093 Risus Av.",3541,"Turrialba","AR","Philippines"),
  ("Ap #804-6961 Adipiscing, Rd.",697,"Bergen","GA","Costa Rica");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("P.O. Box 718, 379 Amet Street",4758,"Ránquil","regionVII","South Korea"),
  ("593-1641 Arcu Rd.",2022,"Port Nolloth","CR","Singapore"),
  ("561-3599 Mauris Road",6187,"Narvik","Kocaeli","Colombia"),
  ("6151 Ornare. Av.",732,"Warri","HB","South Korea"),
  ("Ap #907-7383 Nonummy St.",4869,"Oviedo","NA","South Korea"),
  ("579-7824 Dictum Street",9601,"Marine Parade","BE","China"),
  ("Ap #866-175 Suspendisse St.",5785,"Laakirchen","PUT","Nigeria"),
  ("P.O. Box 738, 9630 Blandit Avenue",8470,"Zamora de Hidalgo","SH","Australia"),
  ("P.O. Box 192, 9591 Lectus Ave",3263,"Alanya","NI","Philippines"),
  ("938-6530 Libero Road",1340,"Salamanca","ON","Colombia");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("804-4571 Lectus St.",6808,"Larkana","OR","Poland"),
  ("P.O. Box 773, 7848 Elementum Road",3729,"Drohobych","CE","China"),
  ("Ap #730-6170 Sed Ave",8228,"Quảng Ngãi","DN","United Kingdom"),
  ("649 Eu, Road",9258,"Koszalin","Wien","Nigeria"),
  ("9495 Accumsan St.",3648,"Mérida","VII","Canada"),
  ("671-209 Quam Avenue",8342,"Lingen","11","Costa Rica"),
  ("5998 Elit, St.",9570,"Kufstein","QLD","South Africa"),
  ("Ap #977-930 Malesuada Rd.",8550,"Cusco","Lạng Sơn","Costa Rica"),
  ("Ap #144-6145 Interdum Rd.",3487,"Calamar","WA","United Kingdom"),
  ("Ap #769-7663 Eu Av.",1991,"Jurong West","VII","Norway");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("P.O. Box 482, 2261 Euismod Rd.",5044,"Palma de Mallorca","Thừa Thiên–Huế","Pakistan"),
  ("Ap #154-6541 Praesent Rd.",6440,"Rostov","EL","Brazil"),
  ("320-3785 Adipiscing. Avenue",3079,"Mexico City","BL","Pakistan"),
  ("Ap #875-6923 Donec Street",5870,"Đà Nẵng","Qro.","Costa Rica"),
  ("834-1106 Phasellus Avenue",5467,"San Pedro","MY","Peru"),
  ("175-1686 Pellentesque. Ave",714,"Lagos","SK","Pakistan"),
  ("P.O. Box 690, 2357 Blandit. Road",6992,"Arequipa","SJ","Poland"),
  ("495-6109 Tellus St.",4598,"Laakdal","Pue.","Italy"),
  ("9160 Nullam St.",6748,"Calais","BE","Canada"),
  ("2884 Nisl Av.",8586,"Iksan","Kahramanmaraş","South Africa");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("2772 Blandit Avenue",5590,"Feira de Santana","NA","Vietnam"),
  ("Ap #698-4469 Etiam Street",3831,"Güssing","NV","Russian Federation"),
  ("304-9789 Enim. Street",8775,"Caldera","SA","United Kingdom"),
  ("P.O. Box 291, 2729 Sodales Ave",2412,"Frederikstad","GP","India"),
  ("6182 Dictum Rd.",6764,"Fort Resolution","A","Australia"),
  ("P.O. Box 596, 2353 Neque St.",1085,"Rosenheim","Pue.","Turkey"),
  ("8029 Senectus St.",2088,"Parndorf","HA","Russian Federation"),
  ("P.O. Box 758, 1408 Gravida Rd.",8324,"Ockelbo","Manisa","Indonesia"),
  ("8714 Ipsum Av.",7780,"Woerden","ER","Brazil"),
  ("Ap #723-4959 Sit St.",4513,"Greater Hobart","Huádōng","Peru");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("Ap #635-9171 Nec Ave",8069,"Bhimber","İzmir","Netherlands"),
  ("Ap #749-1558 Lorem Street",235,"Kristiansund","LE","South Africa"),
  ("7122 Nonummy Ave",3999,"Caldera","JK","China"),
  ("Ap #681-7789 Cras Rd.",4570,"Isernia","regionXII","Germany"),
  ("735-9424 Mauris. Ave",6466,"Fort Collins","KL","Colombia"),
  ("Ap #712-5846 Nam Rd.",6043,"Tuy Hòa","PD","New Zealand"),
  ("581-9564 Phasellus Street",3027,"Istanbul","Hưng Yên","Mexico"),
  ("871-3041 Molestie Road",7326,"San Vicente de Cañete","NL","Chile"),
  ("P.O. Box 473, 9712 Dapibus Street",6477,"Bonnyville","Xīnán","South Africa"),
  ("Ap #712-1945 Vitae Ave",5971,"Gold Coast","DS","Mexico");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("9830 Sed Rd.",4600,"Dannevirke","BE","United Kingdom"),
  ("122-3007 Sed Avenue",3601,"Plymouth","BW","Peru"),
  ("Ap #488-1403 Tortor, Rd.",2187,"Trujillo","WB","Turkey"),
  ("202-1690 Dolor Rd.",7521,"Palmerston","AR","Spain"),
  ("494-7955 Pede. Ave",6144,"Mukachevo","MAG","Spain"),
  ("801-8910 Donec Rd.",9367,"Oaxaca","BR","Norway"),
  ("499-6110 Orci. Av.",9556,"Potchefstroom","regionIV-A","Peru"),
  ("Ap #326-5595 Enim, Rd.",5475,"Villafranca d'Asti","ER","Costa Rica"),
  ("366-1929 Nec, Av.",3597,"Sandnessjøen","BA","China"),
  ("398-9153 Hymenaeos. Avenue",9766,"Yaroslavl","AL","Italy");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("Ap #553-3487 Lorem, Street",3302,"Palmerston","S.L.P.","Colombia"),
  ("Ap #774-1856 Et, St.",8301,"Zwickau","NI","Spain"),
  ("Ap #530-2835 Lorem, Ave",7193,"Montjovet","CE","Netherlands"),
  ("273-5392 Aliquet Road",7224,"Jiangsu","ZP","Pakistan"),
  ("Ap #866-2966 Faucibus Rd.",1705,"Anápolis","FC","United States"),
  ("613-534 Aliquam St.",3961,"Kapfenberg","CDMX","Costa Rica"),
  ("Ap #624-233 Nulla Rd.",7797,"Püttlingen","OV","Sweden"),
  ("P.O. Box 526, 6846 Semper Rd.",6966,"Secunda","SO","Chile"),
  ("Ap #817-8892 Erat. Rd.",9471,"Kropyvnytskyi","YO","Netherlands"),
  ("P.O. Box 418, 1970 Natoque Road",4743,"Hoshiarpur","NW","Pakistan");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("Ap #587-6348 Arcu. Avenue",9214,"Canberra","OV","Chile"),
  ("206-6093 Pede, Av.",1043,"Sissa","Gangwon","Peru"),
  ("296-3990 Ut Rd.",2403,"Neder-Over-Heembeek","P","Sweden"),
  ("3137 Orci, St.",386,"Koronadal","Huáběi","India"),
  ("556-8733 Varius Road",6414,"Ålesund","FA","Australia"),
  ("749-370 Non St.",1627,"La Dorada","PA","Spain"),
  ("Ap #110-2592 Posuere Avenue",1254,"Pasir Ris","MZ","Ireland"),
  ("P.O. Box 502, 2591 Sapien, Ave",1382,"Ciudad Santa Catarina","BA","Austria"),
  ("740-3672 Eu Av.",458,"Zwijnaarde","TX","Vietnam"),
  ("297-9260 Pharetra Rd.",3924,"Boulogne-sur-Mer","OS","Norway");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("789-9320 Magna. St.",2835,"Medellín","MAR","France"),
  ("Ap #520-2891 Orci Rd.",9210,"Ulloa (Barrial]","Ankara","South Korea"),
  ("P.O. Box 902, 3356 Luctus Road",3248,"Villahermosa","SI","China"),
  ("543-551 Ac, St.",7608,"Davangere","C","Russian Federation"),
  ("1604 Id Rd.",2943,"Leirvik","CR","Singapore"),
  ("Ap #717-1034 Maecenas Avenue",7185,"Murcia","Yuc.","Sweden"),
  ("977-4891 Praesent Rd.",1089,"Zerkegem","SI","Brazil"),
  ("Ap #251-9259 Purus, Avenue",3728,"Santiago","MP","Nigeria"),
  ("P.O. Box 302, 5377 Euismod Street",1416,"Manisa","ZP","United States"),
  ("397-2365 A, Street",4936,"Huaral","CN","United Kingdom");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("Ap #144-5642 Eu Road",2617,"Haripur","NÖ.","Canada"),
  ("Ap #233-7637 Metus. Avenue",8809,"Faisalabad","PB","Belgium"),
  ("Ap #531-7318 Sapien, Road",6537,"Imphal","KP","Indonesia"),
  ("Ap #998-9046 Penatibus Street",9400,"Kielce","VLG","Nigeria"),
  ("Ap #684-365 Sit Road",4337,"Izmir","KOS","Vietnam"),
  ("776-6499 Tincidunt Ave",6949,"Valéncia","UMB","Russian Federation"),
  ("1386 Vitae Road",8681,"Driekapellen","LP","Vietnam"),
  ("307-330 Mollis St.",9633,"Secunda","Xīnán","Brazil"),
  ("P.O. Box 993, 8321 Fermentum Road",8879,"Baguio","SI","Mexico"),
  ("Ap #181-683 Proin Ave",9688,"Cumaribo","CR","New Zealand");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("Ap #326-3699 Fermentum St.",7888,"Muiden","ANC","Ireland"),
  ("742-655 Dui. Road",1809,"Bandung","DO","Turkey"),
  ("Ap #163-4291 Donec Ave",8490,"İzmit","HE","India"),
  ("708-6253 Non Rd.",7015,"Gangneung","XV","Chile"),
  ("Ap #133-2834 Tortor Rd.",5158,"Port Nolloth","MP","Russian Federation"),
  ("861-9647 Aliquam Av.",6691,"Neustrelitz","JH","Indonesia"),
  ("407-6346 Ornare Rd.",6639,"Puerto Princesa","Gto.","Norway"),
  ("Ap #250-4943 Pellentesque. St.",1133,"Lichtaart","CR","Costa Rica"),
  ("2181 Fusce Av.",212,"Serang","IM","Netherlands"),
  ("Ap #430-3675 Molestie Rd.",463,"Berwick","JI","Vietnam");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("656-6829 Volutpat Rd.",6855,"Fauske","SR","Vietnam"),
  ("253-2746 Phasellus Av.",6558,"Castanhal","SS","Germany"),
  ("828-697 Neque Street",6973,"Soissons","CN","United States"),
  ("953-9565 Dapibus St.",7841,"Karak","OÖ.","Peru"),
  ("Ap #331-9424 Tincidunt Av.",2342,"Canberra","AB","Indonesia"),
  ("Ap #794-9584 Metus. Avenue",7731,"Ocaña","CR","Mexico"),
  ("Ap #638-3312 Orci Ave",797,"Huasco","GP","India"),
  ("Ap #256-5183 Eget Av.",6661,"Mexico City","FS","Vietnam"),
  ("5664 Dictum Ave",6126,"Volgograd","NI","United States"),
  ("Ap #505-3367 Tincidunt Street",185,"Notodden","NI","Chile");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("P.O. Box 755, 3866 Id, Street",5246,"Alexandra","MU","New Zealand"),
  ("405-5642 Ut Av.",8381,"Jaén","CR","Poland"),
  ("946-2831 Luctus. Street",8501,"Toledo","KE","Brazil"),
  ("P.O. Box 109, 8713 Ultrices. Av.",5099,"Casole d'Elsa","SG-01","Spain"),
  ("4482 Vel Avenue",3168,"Belfast","LV","Brazil"),
  ("P.O. Box 981, 7856 Eu Street",5675,"Simpang","V","Singapore"),
  ("506-8296 Nonummy Av.",2820,"Kongsvinger","VI","Netherlands"),
  ("P.O. Box 645, 1037 Mi Avenue",3932,"Pamplona","BA","Costa Rica"),
  ("P.O. Box 825, 4674 Tristique Av.",2439,"Divinópolis","OÖ.","Belgium"),
  ("8687 Eget Rd.",7697,"Chungju","FA","Sweden");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("7074 Leo. St.",8402,"Sokoto","CA","Belgium"),
  ("P.O. Box 715, 4829 Vel, Av.",8310,"Tijuana","OÖ.","Germany"),
  ("Ap #540-6899 Justo. St.",8299,"Metro","PL","Indonesia"),
  ("2909 Pede, St.",2715,"Changwon","BB","Netherlands"),
  ("P.O. Box 465, 7744 Feugiat Ave",3491,"Kremenchuk","ANC","Belgium"),
  ("5825 Quis Rd.",1655,"Gore","Hatay","Sweden"),
  ("P.O. Box 131, 3666 Tempus Rd.",3135,"Tomaszów Mazowiecki","GB","Philippines"),
  ("204-9642 Magnis Street",6895,"Utrecht","PI","India"),
  ("628-3161 Suscipit St.",9338,"North-Eastern Islands","11","South Korea"),
  ("192-2781 Egestas St.",667,"Soma","OP","Netherlands");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("P.O. Box 852, 8236 Integer Road",7956,"Almere","Manisa","Singapore"),
  ("Ap #251-7265 Ornare, Street",1180,"Navojoa","NW","Canada"),
  ("P.O. Box 101, 8809 Habitant Av.",5783,"Silvan","BE","Spain"),
  ("1905 Hendrerit Road",5182,"Vetlanda","TAS","United States"),
  ("9113 Ante, St.",9029,"Toulouse","II","Australia"),
  ("P.O. Box 654, 5352 Non St.",1680,"Rothesay","SG-02","Indonesia"),
  ("8334 Sed, Avenue",501,"Ciénaga","SL","Turkey"),
  ("Ap #793-9349 Adipiscing St.",6242,"Watson Lake","ZP","United Kingdom"),
  ("P.O. Box 445, 674 Interdum St.",4392,"Heilongjiang","KN","Singapore"),
  ("Ap #753-1871 Sapien Avenue",253,"Galway","Bgl.","Indonesia");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("P.O. Box 840, 985 Lorem. St.",4584,"Boo","SAR","Poland"),
  ("P.O. Box 824, 8665 Pede. St.",7291,"Winterswijk","AL","Italy"),
  ("Ap #589-5594 Egestas Street",1569,"Vinh","NL","Mexico"),
  ("984-5966 Nec Road",5464,"Cuautla","SJ","Colombia"),
  ("318-2663 Phasellus Road",4729,"Cork","Kocaeli","Pakistan"),
  ("956 Torquent Street",9507,"Vinnytsia","CE","Peru"),
  ("4364 Duis Road",6783,"Fraser-Fort George","AB","Germany"),
  ("Ap #708-465 Egestas, Av.",269,"Pepingen","PIE","Spain"),
  ("256-3087 Urna. St.",5662,"Stendal","Bursa","Austria"),
  ("Ap #908-7361 Enim, Road",5185,"Kemerovo","mimaropa","South Africa");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("1426 Vel Avenue",737,"Cà Mau","Sbg.","Singapore"),
  ("Ap #930-1586 Nulla Avenue",1488,"Benoni","LA","South Africa"),
  ("704-9842 Dictum St.",5764,"Traiskirchen","TOL","Spain"),
  ("1158 Dignissim St.",6506,"Yurimaguas","P","Pakistan"),
  ("Ap #671-1603 Arcu. Road",8709,"Blumenau","LAZ","Sweden"),
  ("Ap #830-2473 Eros Av.",5680,"Karak","GB","Sweden"),
  ("Ap #770-9970 Tellus Street",8592,"Chungju","NI","United States"),
  ("633-2850 Arcu Rd.",7146,"Saint-Lô","EX","Nigeria"),
  ("372-6865 Et, Road",9901,"Bajaur Agency","III","Peru"),
  ("564-3503 Quis Rd.",1511,"Penza","SO","India");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("P.O. Box 114, 404 Euismod St.",2423,"Stockholm","CE","Ukraine"),
  ("157-2215 Euismod Street",3180,"Banjarmasin","PUT","Brazil"),
  ("829-2487 Interdum Rd.",3425,"Aguachica","JK","Pakistan"),
  ("Ap #483-961 Tellus. Rd.",6016,"Đồng Xoài","PM","South Africa"),
  ("3173 Pharetra, Rd.",400,"Cartagena","L","Belgium"),
  ("138-1954 Et Ave",4007,"Leeuwarden","C","Norway"),
  ("9973 Etiam St.",2151,"Saint Petersburg","PE","Spain"),
  ("P.O. Box 234, 2046 Ligula Ave",841,"Chernihiv","BOL","China"),
  ("9955 Lorem Avenue",4968,"Okigwe","Chih.","United Kingdom"),
  ("304-2029 Purus, Avenue",1886,"Dublin","regionII","Vietnam");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("3035 Nam Avenue",9495,"Bischofshofen","PUN","South Africa"),
  ("Ap #107-2434 Quis Street",7553,"Balikpapan","FA","South Korea"),
  ("Ap #367-6608 Sem Road",8073,"Gijón","Vbg.","China"),
  ("Ap #347-9954 Elit. Avenue",3239,"Ceyhan","BC","Ireland"),
  ("P.O. Box 122, 3542 Purus Road",8992,"Bath","SI","Ukraine"),
  ("Ap #278-8198 Praesent Ave",5138,"Soledad de Graciano Sánchez","DD","Philippines"),
  ("7763 Suspendisse Rd.",9430,"Bludenz","Kayseri","Turkey"),
  ("P.O. Box 912, 6887 Vitae Road",5774,"Cork","AN","Nigeria"),
  ("8177 Dui. Av.",3427,"Tanglin","F","Ukraine"),
  ("927-2497 Purus. Road",1174,"Barranquilla","CH","Canada");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("P.O. Box 354, 3334 Ut St.",863,"Ulyanovsk","HA","Philippines"),
  ("Ap #139-9970 Est St.",1309,"Waterloo","LX","Philippines"),
  ("465-8338 Semper. Rd.",3647,"Bauchi","F","Ireland"),
  ("3087 Aliquet Rd.",3635,"Kungälv","SK","Singapore"),
  ("490-8673 Integer Ave",4107,"San José de Alajuela","regionXIII","India"),
  ("Ap #674-4760 Per Rd.",7495,"Siquirres","TAS","Ukraine"),
  ("Ap #184-206 Lobortis. Ave",2526,"Lago Ranco","PR","China"),
  ("679-6992 Integer Street",3390,"Petrolina","OK","Australia"),
  ("Ap #630-7934 Non St.",8763,"San Rafael","JK","Belgium"),
  ("Ap #368-2866 Sit St.",6941,"Maaseik","Huádōng","Ukraine");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("6951 Semper. Avenue",6431,"Buenaventura","ST","Sweden"),
  ("7909 Nunc Rd.",6146,"Beausejour","DE","India"),
  ("589-5882 Sodales. Rd.",5059,"Teruel","KPK","Belgium"),
  ("7491 Non Rd.",9978,"Sapele","SAP","Singapore"),
  ("Ap #405-7654 Nibh. Avenue",1649,"Birmingham","Ver.","Canada"),
  ("P.O. Box 499, 6082 Ut Av.",7347,"Moss","OR","Turkey"),
  ("905-2633 Ornare. Ave",608,"San José de Alajuela","Mich.","Turkey"),
  ("Ap #568-4466 Est. St.",2606,"Serangoon","Aydın","Poland"),
  ("P.O. Box 141, 3246 Turpis. Rd.",8809,"Adana","ER","Pakistan"),
  ("6601 Elit. St.",4406,"Lakewood","CA","Austria");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("822-7869 Mauris Rd.",9192,"Bedok","M","Norway"),
  ("210-4929 Tincidunt Av.",478,"Hafizabad","Aydın","Germany"),
  ("Ap #156-7330 Et St.",8248,"Tulsa","Hgo.","Canada"),
  ("219-7059 Euismod Street",2600,"Drammen","CAU","Italy"),
  ("Ap #879-180 Et Rd.",3801,"Surat","38","Mexico"),
  ("9989 Ante Avenue",8371,"Açailândia","MG","Netherlands"),
  ("775-1642 In Rd.",6086,"Cork","Samsun","Netherlands"),
  ("P.O. Box 655, 3178 Tellus Rd.",5180,"Ipís","Qro.","United States"),
  ("P.O. Box 317, 5851 Ut, St.",4245,"Hofors","ACT","Germany"),
  ("2356 Ridiculus Street",2490,"Cork","U","Norway");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("Ap #459-5351 Posuere, Avenue",1565,"Limón (Puerto Limón]","Gl","Indonesia"),
  ("515-203 Sed St.",8926,"Lidingo","KV","Mexico"),
  ("P.O. Box 599, 7050 Est, Av.",5254,"Toledo","SI","Austria"),
  ("342-5304 Eu, Avenue",5327,"Karnal","QLD","Brazil"),
  ("8785 Semper St.",1447,"Seborga","Z.","Austria"),
  ("777-8762 Mauris. Road",810,"Belfast","L.","Sweden"),
  ("2841 At Ave",1704,"Futrono","LV","New Zealand"),
  ("P.O. Box 454, 2265 Malesuada Road",5028,"Limoges","PA","Singapore"),
  ("396-9322 Amet St.",6657,"Galway","VOR","Chile"),
  ("Ap #676-8690 Neque. Avenue",1133,"San Rafael","AR","Philippines");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("Ap #876-1824 In, Av.",2479,"Palagianello","X","Brazil"),
  ("Ap #234-6461 Elementum Street",2545,"Ibagué","A","Mexico"),
  ("P.O. Box 778, 8404 Elementum St.",9443,"Jaén","AR","United Kingdom"),
  ("Ap #473-1784 Non St.",533,"Sarre","O","Mexico"),
  ("8084 Nibh Rd.",3773,"Ghizer","BA","Brazil"),
  ("348-7931 Tempor Avenue",4171,"Carletonville","CR","Costa Rica"),
  ("8513 Egestas. Street",136,"Flekkefjord","W","Poland"),
  ("3842 Vulputate Avenue",8706,"Kilsyth","NSW","South Korea"),
  ("Ap #696-1590 Nec Ave",5648,"Pınarbaşı","VI","France"),
  ("P.O. Box 240, 8434 Sed, St.",1217,"Bingen","NSA","India");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("Ap #382-2035 Gravida St.",4890,"Naperville","M","Germany"),
  ("188-3989 Erat Av.",6959,"Bedok","NÖ.","Turkey"),
  ("708-3287 Quis, St.",5166,"Hebei","ARE","Ireland"),
  ("7201 Ligula Rd.",3240,"Pacasmayo","JK","South Korea"),
  ("684-3273 Sodales St.",1414,"Koronadal","KZN","South Africa"),
  ("138-7498 Dictum Road",9971,"Bad Kreuznach","HH","Sweden"),
  ("Ap #764-598 Tellus. St.",6742,"Ijebu Ode","C","Italy"),
  ("Ap #786-6057 Sed Road",7469,"Alajuelita","L.","Sweden"),
  ("P.O. Box 170, 5660 Nullam Road",7270,"Lagos","P","Brazil"),
  ("P.O. Box 894, 4369 Nisl Rd.",6992,"Soweto","Zhōngnán","Pakistan");
INSERT INTO `myTable` (`street`,`number`,`city`,`province`,`country`)
VALUES
  ("707-6782 Parturient Avenue",7781,"Liberia","ON","Italy"),
  ("Ap #384-7210 Lorem, Road",7123,"Nicoya","NW","Mexico"),
  ("P.O. Box 130, 4373 Ipsum Rd.",2497,"Swan Hill","G","Colombia"),
  ("Ap #978-9975 Ipsum Av.",1731,"Cercemaggiore","SG-02","Netherlands"),
  ("5267 Id, Rd.",6548,"Nelspruit","Bình Dương","Nigeria"),
  ("P.O. Box 376, 2990 Suscipit St.",5920,"Brummunddal","11","New Zealand"),
  ("363-619 Nunc St.",2074,"Guizhou","Yuc.","France"),
  ("4611 Porttitor Rd.",6293,"Legnica","BEL","India"),
  ("816-9568 Mi Street",1232,"Acuña","regionVI","Sweden"),
  ("P.O. Box 254, 1475 Arcu Street",3702,"Bellegem","IL","Philippines");
