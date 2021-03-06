-- MariaDB dump 10.19  Distrib 10.5.9-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: persefone
-- ------------------------------------------------------
-- Server version	10.5.9-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administradores` (
  `idadministradores` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` char(60) NOT NULL,
  PRIMARY KEY (`idadministradores`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administradores`
--

LOCK TABLES `administradores` WRITE;
/*!40000 ALTER TABLE `administradores` DISABLE KEYS */;
INSERT INTO `administradores` VALUES (2,'Administrador','email@email.com','root');
/*!40000 ALTER TABLE `administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `idblog` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(200) DEFAULT NULL,
  `titulo` varchar(200) NOT NULL,
  `categoria` int(1) NOT NULL,
  `Autor` varchar(60) NOT NULL,
  `creacion` date NOT NULL,
  `texto` longtext NOT NULL,
  PRIMARY KEY (`idblog`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'73827ac3ce0745ed402e1b17e7afed95.jpg','Las ventajas de las macetas de barro',3,'admin','2021-04-29','Las caracter??sticas del barro como material hacen que las prefiramos sobre otras. La alta porosidad permite que el agua puede escaparse de ella, en su justa medida. En los d??as m??s lluviosos, las macetas de pl??stico acumulan el agua pero no dejan escaparla cuando es sobrante. En las de barro no tenemos esta desventaja, sus poros permiten que se libere la cantidad que no admite la planta.\nAdem??s, como material, el barro protege de las temperaturas m??s altas a las ra??ces que inmersas en ella. Tanto las heladas como d??as calurosos no son positivas para las ra??ces y tienen que estar protegidas.\nEn los lugares en los que se alcanzan temperaturas m??s altas, como en el Sur de Espa??a, est??n m??s que indicadas las macetas de barro. Las plantas sufrir??n mucho si se usan de pl??stico porque este material, unido al agua que acumula en su interior, hace que la temperatura de la tierra que hay en ella sea demasiado alta. Se convertir?? en un aut??ntico hervidero que da??ar?? la salud de la planta y que hace que mueran una gran cantidad de ellas en los d??as m??s calurosos.\nNo solo se ven beneficiadas las plantas sino que con una maceta de terracota o barro estar??s adquiriendo un objeto para toda la vida. Son mucho m??s resistentes, su vida ??til ser?? mucho m??s longeva que usando otros materiales porque el barro aporta gran calidad y dureza a estos objetos.'),(3,'34128e22d0258be3bb006ad14c9dd4eb.jpg','Rosas, la planta que le dio nombre a una ciudad',4,'Admin','2021-04-30','Hace algunos ayeres, la belleza y tranquilidad de Guadalajara se convirti?? en sin??nimo de modernidad, elegancia y romanticismo, lo que hizo que se ganara uno de sus t??tulos m??s famosos: La Ciudad de las Rosas.</p><p>Pero, ??de d??nde viene ese t??tulo?</p><p>El historiador Carlos Silva Cort??s, maestro en Historia de M??xico, relata que durante las d??cadas de los 60 y 70 hab??a rosales plantados en diversos puntos de la ciudad, lo que convirti?? a las rosas en un referente para Guadalajara.</p><p>La idea de tapizar la ciudad de rosas lleg?? desde Agust??n G??mez y Guti??rrez, quien fue director de Parques y Jardines de Guadalajara.</p><p>Se dice que durante una visita a Estados Unidos y Canad?? el funcionario tapat??o qued?? cautivado por esas flores, por lo que pens?? en plantar rosales en la capital.</p><p>Durante esa ??poca se pod??an observar rosales en puntos de la ciudad como Plaza de la Liberaci??n, el Parque Alcalde o el Hospicio Caba??as, entre otros m??s.'),(5,'b2ea9133256b3683748e00bacdaf7123.jpg','Cultivo de granos en Jalisco',4,'Pedro L. Celso Arellano','2021-04-30','RESUMEN </p><p>\\r\\nEl   objetivo   del   presente   art??culo   es   mostrar   cu??les   son   los   principales   efectos   en   la   comercializaci??n   del   ma??z   en   torno   a   la   reestructuraci??n   e   implementaci??n   de   nuevosmecanismos para esos efectos. El ma??z en Jalisco, ocupa el primer lugar en el ??mbito nacional y es cultivado por la mayor??a de sus  productores  en  ??pocas  de  lluvias,  a  su  vez  la  cosecha  se  concentra  especialmente  en  los  meses de noviembre y diciembre. Se habla de empresas harineras, almidoneras que procesan elma??z  blanco  y  el  amarillo.  ??ste  ??ltimo  se  ha  producido    y    una  agricultura  por  contrato  en  la  siembra. La  introducci??n  del  retiro  del  estado  significa  que  el  agente  econ??mico  tiene  la  libertad  de  elegir su precio y manifestarse competitivo ante la regionalizaci??n y a??n la globalizaci??n en elque M??xico est?? inmerso. En esas condiciones, en este momento existen nuevos escenarios con relaci??n  a  la  comercializaci??n  de  granos  (destacando  el  ma??z)  orientados  al  equilibrio  entre  la  oferta y la demanda; es decir,  la tendencia es la competencia perfecta en granos;  En esta nueva modernizaci??n  existen  nuevos  actores  (productores,  comercializadores),  y  en  1999  aparece  la  bolsa de f??sicos de Jalisco, que a decir de los coordinadores busca la transparencia y seguridad para los productores en su precio. Se  analiza  el  caso  Jalisco;  por  un  lado  a  los  participantes  en  el  MENAGRO  y  por  otro  a  agricultores de San Mart??n Hidalgo un municipio que corresponde a la regi??n Valles.  \\r\\n</p><p>HIP??TESIS \\r\\n</p><p>Uno.  Al  crearse  la  bolsa  de  f??sicos  en  Jalisco,  se  modific??  la  forma  tradicional  del  proceso  deproducci??n y comercializaci??n del ma??z en el sector agropecuario; este nuevo esquema es unaalternativa de comercializaci??n en el contexto actual pues permite tener transparencias con unacerteza  en  el  precio,  tanto  para  grandes  como  para  peque??os  productores,  siempre  y  cuandoestos ??ltimos se organicen con una visi??n estrat??gica para transformar sus procesos productivos. Dos.    La  creaci??n,  operaci??n  y  funcionamiento  del  mercado  de  f??sicos  est??n  supeditados  a  la  difusi??n  de  informaci??n  sobre  los  mecanismos  de  soporte;  si  estas  condiciones  no  se  cumplen  dif??cilmente se podr?? consolidar con una bolsa agropecuaria en un futuro. Tres. A causa de la idiosincrasia, pero tambi??n de sus condiciones productivas y tecnol??gicas,un gran parte de los agricultores maiceros no participar??n en este esquema de comercializaci??n; en  virtud  de  que  ellos  estar??n  sujetos  a  las  relaciones  de  intercambio  con  los  intermediarios  locales  o  regionales,  quienes  a  su  vez,  podr??n  participar  en  los  esquemas  de  la  bolsa  agropecuaria de futuros METODOLOGIA Fue la documentaci??n y consulta de fuentes bibliogr??ficas, direcciones de Internet relacionadascon el sector agropecuario, revistas especializadas en econom??a y negocios, as?? como peri??dicos nacionales y locales. \\r\\n</p><p>Cabe mencionar que el trabajo de campo fue de gran ayuda para recabar informaci??n  que  al  menos,  nos  gu??e  para  entender  mejor  el  contexto,  de  tal  manera,  seefectuaron entrevistas a intermediarios clave en la comercializaci??n del ma??z, a profesionales en la  materia,  as??  como  a  promotores  del  estado,  con  la  finalidad  de  obtener  informaci??n  relacionada con el mercado de f??sicos. La  idea  por  la  cu??l  abordo  a  Jalisco,  es  porque  este  es  un  Estado  pionero  en  la  creaci??n  de  labolsa  de  f??sicos  y  por  destacar  en  los  primeros  lugares  en  la    producci??n    de  ma??z  a  nivelnacional. Puesto que nuestro pa??s participa con un 61% dentro del rubro de los granos, en tanto que la regi??n Valles sobresale con un 93%.  As??  pues,  dentro  de  la  regi??n  mencionada    se  eligi??  al  municipio  de  San  Mart??n  Hidalgo,  y  serecurri??  al  c??lculo  del  cociente  de  localizaci??n2  de  Pol??se  (1998),  con  relaci??n  a  la  media  estatal, el resultado fue un coeficiente de localizaci??n de 1.50 eso demuestra que San Mart??n deHidalgo se especializa en ma??z. En noviembre de 1999 se aplic?? encuestas a productores en general de acuerdo a un muestreo en  forma  aleatoria  simple  en  el  ejido  San  Mart??n,  perteneciente  al  municipio  de  San  Mart??n  Hidalgo. El total del universo es de 325. De igual manera, en el mes anteriormente dicho se entrevist?? a siete participantes en el mercado de  f??sicos.  Es  menester  mencionar  que  para  encuestar  a  estos  agentes  fue  necesario  asistir  en  dos  ocasiones  al  lugar  llamado  ???mercadito  de  f??sicos???  que  se  localiza  en  la  Ciudad  deGuadalajara, es ah?? donde se comercializa el ma??z de manera novedosa. \\r\\n</p><p>El  marco  conceptual  parte  del  modelo  de  la  oferta  y  la  demanda,  la  llamada  competencia  perfecta,  tambi??n  se  relaciona  a  los  mercados  imperfectos  en  virtud  de  que  se  encontr??  que  el??rea de estudio tiene cierta similitud con este modelo, dado que existe un monopsonio, a su vez se  comenta  la  incertidumbre  e  informaci??n  porque  es  vital  para  hablar  dentro  del  rubro  de  los  derivados. DESARROLLO Principales estados productores Seg??n  el  Centro  de  Estad??stica  Agropecuaria  (1999),  entre  los  principales  estados  productores  de ma??z grano se encuentran Jalisco, Sinaloa y Chiapas. En 1997 el estado de Sinaloa produjo el15.5% de la producci??n total nacional de ma??z, el Estado de M??xico el 13% y Jalisco particip?? 2 El valor del cociente expresa el grado de concentraci??n de la actividad en la regi??n en relaci??n con el territorio de referencia (por esto se habla tambi??n de cociente de concentraci??n): un valor superior a 1 significa una concentraci??n m??s que proporcional en la regi??n. (Pol??se, 1998:154).con  el  11.7%.  Para  1998,  el  estado  de  Jalisco  produjo  el  15.1%,  sigui??ndole  Sinaloa  con  el 14.2%  y  Chiapas  pas??  a  ser  el  tercer  productor  nacional  de  ma??z  con  el  9.5%,  el  resto  de  los  estados participan con valores menores al 9%.  \\r\\n</p><p>Principales destinos de consumo Seg??n  el  FIRA,  para  M??xico  en  1997,  el  consumo  de  ma??z  se  distribuy??  en  5  grandes  rubros:consumo humano 57%, pecuario 26%, almid??n 11%, mermas 4% y siembras 2% con relaci??n a una producci??n disponible para ese a??o, de 14,744 mil toneladas. Precios del Ma??z y tendencias En   nuestro   pa??s,   el   precio   del   ma??z   se   encontraba   subsidiado   hasta   1998.   El   subsidio   PROCAMPO que es un apoyo directo al productor; el subsidio al ma??z que se empleaba para la producci??n   de   tortilla,   para   consumo   humano   a   precio   controlado,   era   operado   por   CONASUPO.  Este  subsidio  se  le  entregaba  a  molineros  nixtamaleros  y  a  las  industrias  de  harina nixtamalizada, y consist??a en reembolsar el diferencial entre el precio pagado por el ma??z en  el  mercado  libre  y    el  precio  de  indiferencia  calculado  por  CONASUPO;  el  subsidio  manejado por ASERCA estaba destinado a la comercializaci??n del grano. No  obstante,  con  la  salida  de  CONASUPO,  se  borr??  la  idea  del  precio  de  garant??a  o  precio  indicativo; de esta manera el grano ya se encuentra en el mercado libre, as?? como el precio de la tortilla. La tendencia de la producci??n de ma??z sigue en aumento y as?? seguir?? de manera significativa debido  a  las  investigaciones  que  se  est??n  realizando  en  EUA  para  sustituir  el  petr??leo,  como  fuentes de energ??ticos, as?? como a derivados del mismo, como por ejemplo los pl??sticos. Esto ocasionar??  un  aumento  en  la  demanda  del  ma??z,  por  lo  que  los  precios  internacionales  repuntar??n (FIRA, 1998:46). El ma??z en Jalisco El estado de Jalisco cuenta con una superficie de 8???013,700 hect??reas. La superficie dedicada a la  ganader??a  se  estima  en  3???185,269  hect??reas  que  representan  el  39.7%  de  la  superficie  delestado.  A  su  vez,  la  superficie  agr??cola  es  de  1???710,151  hect??reas,  que  representan  el  21.3%,  ??stas  251,110  hect??reas  son  de  riego.  Mientras  tanto  el  39%  restante  se  destina  al  uso  forestal  (30%)  y  el  9%  a  otros  usos.  Al  igual  que  en  el  ??mbito  nacional,  la  estructura  de  la  superficie  sembrada  y  cosechada  en  Jalisco  estuvo  concentrado  en  granos,  donde  el  ma??z  obtuvo  una  participaci??n del 81% con relaci??n a los dem??s granos.'),(6,'21331e64e3d2c48d4853a42b27a248bd.jpg','Cuidados del agave Azul',1,'Admin','2021-05-04','La floraci??n de esta planta es espectacular y s??lo se produce una vez a lo largo de su vida ya que cuando la flor muere, la pita muere con ella. </p><p>Cuando la planta llega a la madurez, nace un gran tallo que crece hasta florecer en verano. Pese a esta circunstancia, la planta puede llegar a vivir hasta 40 a??os antes de florecer y morir y, durante todo este tiempo, produce una amplia descendencia a su alrededor.</p><p>Adem??s, cuando la mata muere, de sus ra??ces emergen un mont??n de hijuelos. Podremos extraer estos hijuelos cortando el tallo que lo une con la mata central y as?? lograremos una nueva mata para la reproducci??n de la planta.</p><p>Existen diferentes variedades con las hojas en diferentes tonalidades: algunas tienen color en sus hojas, otras solo con el per??metro de un color, otras de tonos de verde oscuro, otras con un color azulado, otras con porte contenido o de tama??o peque??os, etc.</p><p>El jugo de las hojas es irritante. Al manipular la planta (sobre todo al cortar o retirar alguna hoja) es recomendable protegerse la piel de manos y brazos utilizando guantes y manga larga.</p><p>Adem??s, tambi??n es importante protegerse para evitar las p??as de las hojas. Para evitar problemas, se pueden cortar cuidadosamente con una podadora.');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrito`
--

DROP TABLE IF EXISTS `carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrito` (
  `idcarrito` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`idcarrito`),
  KEY `fk_idcliente_3_idx` (`idcliente`),
  KEY `fk_idproducto_2_idx` (`idproducto`),
  CONSTRAINT `fk_idcliente_3` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idproducto_2` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito`
--

LOCK TABLES `carrito` WRITE;
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
INSERT INTO `carrito` VALUES (10,14,18,1),(11,14,23,2);
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcliente`),
  UNIQUE KEY `telefono_UNIQUE` (`telefono`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Mauricio','Basurto','1234567890','correo@correo.com','123456'),(14,'Arianna','Arredondo Gallardo','3313790640','','aarredondo'),(16,'Fritz','Carrasquill Valenzuela','5556829263','FritzCarrasquillValenzuela@superrito.com','fcv'),(17,'Benny','Ayala Olivares','3112131573','BennyAyalaOlivares@superrito.com','bao');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `idcompra` int(11) NOT NULL AUTO_INCREMENT,
  `hora` datetime NOT NULL,
  `total` decimal(7,2) NOT NULL,
  `idcliente` int(11) NOT NULL,
  PRIMARY KEY (`idcompra`),
  KEY `fk_clienteID_idx` (`idcliente`),
  CONSTRAINT `fk_clienteID_1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (31,'2021-05-04 19:04:55',3650.00,1),(65,'2021-05-04 22:23:21',2000.00,16),(95,'2021-05-04 22:35:47',2000.00,17),(96,'2021-05-04 22:52:46',2150.00,1),(97,'2021-05-04 22:54:42',1900.00,1);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direccion` (
  `iddireccion` int(11) NOT NULL AUTO_INCREMENT,
  `calle` varchar(45) NOT NULL,
  `nExt` varchar(45) NOT NULL,
  `nInt` varchar(45) DEFAULT NULL,
  `cp` int(5) NOT NULL,
  `colonia` varchar(45) NOT NULL,
  `municipio` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `idCliente` int(11) NOT NULL,
  PRIMARY KEY (`iddireccion`),
  KEY `fk_idCliente_2_idx` (`idCliente`),
  CONSTRAINT `fk_idCliente_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
INSERT INTO `direccion` VALUES (4,'ELEFANTE','90','A',3100,'DEL CENTRO','BENITO JUAREZ','CIUDAD DE M??XICO',1),(6,'PROVIDENCIA ','726','',3100,'DEL VALLE CENTRO','BENITO JUAREZ','CIUDAD DE M??XICO',16),(7,'AV INSURGENTES ','166','PTE',63000,'CENTRO','TEPIC','NAYARIT',17),(8,'CAMINO ARENERO','412','Sistemas',45019,'EL BAJIO','ZAPOPAN','JALISCO',1);
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `precio` decimal(7,2) NOT NULL,
  `inventario` int(11) NOT NULL,
  PRIMARY KEY (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (16,'3','Maceta pequena','Maceta de cer??mica de 5 litros con agujero de drenaje.','3456970fc8fb6b7b840fad8d6c439934.jpg',300.00,4),(17,'3','Maceta mediana','Maceta de barro de 25 litros. Cuenta con agujero de drenaje.','713fa0425ff3624e6e4b30ed8af212e6.jpg',750.00,4),(18,'2','Pala','Pala mediana de 8\". Cuenta con mango de madera de 8\'.','b982b8723804826a7a91ab9d24006299.jpg',250.00,-30),(19,'3','Maceta grande','Maceta grande de 100 litros, con agujero de drenaje.','33b26ef5268608e6ab3842956f27fd4e.jpg',1500.00,10),(20,'2','Pala mediana','Este texto es solo de demo, blah blah blah','945265dc7af92af599d8bd01d84cccee.jpg',500.00,19),(22,'1','Semillas de tomate','Bolsa de 150gr. de semillas de jitomate estilo \"pomodoro\". Incluye manual de instrucciones para su cultivo.','7e051559ad9a702552014547aa1092a3.jpg',50.00,-360),(23,'2','Pala peque??a','Peque??a pala de jardin, perfecta para cuidar de flores y huertos de hortalizas.','6cd0b9e8a5a2ef329276af6ea78ca8d0.jpg',150.00,49),(24,'4','Habaneros','Variedad de Habanero naranja seleccionado. Planta de alto rendimiento. D??as a madurez relativa entre los 90 a 100 d??as. El fruto es de color verde claro a naranja brilloso, con un tama??o aproximado de 5 x 2.5 cm.; de apariencia jugosa y terminado en punta, con paredes delgadas. Muy utilizado en la preparaci??n de salsas y extracci??n de aceites esenciales. Resistencia a enfermedades m??s comunes. Bolsa de 10 piezas','411d6e227279f1ff90532f0dc2c9b663.jpg',200.00,-148),(25,'1','Semillas de Alfalfa minerva','Alfalfa de alto rendimiento de dormancia 10.\r\nExcelente rendimiento y persistencia.\r\nRecuperaci??n muy rapida despu??s del corte.\r\nAdecuado para climas c??lidos y para suelos con problemas de nematodos.\r\nAlta resistencia a plagas. ','79140f097e0015d3fe7eedd539253fc0.jpg',500.00,-448),(26,'1','Semillas de Agave','Bolsa de 50g de semillas de agave azul. Certificadas de denominacion de origen de Jalisco ISO 9001, autorizadas para produccion de tequila por la secretaria de salud del estado de Jalisco.','9b4f8cf1f75450910b62a5296d6b8f37.jpg',250.00,28),(27,'4','Articulo demo','Este es un articulo de demostracion, no tomarse muy en serio el texto','0c7990e3ab8958b74353666b21e87f7f.jpg',100.00,0);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjeta`
--

DROP TABLE IF EXISTS `tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarjeta` (
  `idtarjeta` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(16) NOT NULL,
  `cvv` varchar(4) NOT NULL,
  `vencimiento` varchar(5) NOT NULL,
  `idCliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtarjeta`),
  UNIQUE KEY `numero_UNIQUE` (`numero`),
  KEY `fk_idCliente_1_idx` (`idCliente`),
  CONSTRAINT `fk_idCliente_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjeta`
--

LOCK TABLES `tarjeta` WRITE;
/*!40000 ALTER TABLE `tarjeta` DISABLE KEYS */;
INSERT INTO `tarjeta` VALUES (1,'4556493864251217','244','05/26',1),(16,'5418815891659696','082','09/24',16),(17,'4485782116402263','689','05/21',17),(18,'4567890123456789','123','08/22',1);
/*!40000 ALTER TABLE `tarjeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-04 17:57:28
