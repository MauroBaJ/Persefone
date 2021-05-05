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
INSERT INTO `blog` VALUES (1,'73827ac3ce0745ed402e1b17e7afed95.jpg','Las ventajas de las macetas de barro',3,'admin','2021-04-29','Las características del barro como material hacen que las prefiramos sobre otras. La alta porosidad permite que el agua puede escaparse de ella, en su justa medida. En los días más lluviosos, las macetas de plástico acumulan el agua pero no dejan escaparla cuando es sobrante. En las de barro no tenemos esta desventaja, sus poros permiten que se libere la cantidad que no admite la planta.\nAdemás, como material, el barro protege de las temperaturas más altas a las raíces que inmersas en ella. Tanto las heladas como días calurosos no son positivas para las raíces y tienen que estar protegidas.\nEn los lugares en los que se alcanzan temperaturas más altas, como en el Sur de España, están más que indicadas las macetas de barro. Las plantas sufrirán mucho si se usan de plástico porque este material, unido al agua que acumula en su interior, hace que la temperatura de la tierra que hay en ella sea demasiado alta. Se convertirá en un auténtico hervidero que dañará la salud de la planta y que hace que mueran una gran cantidad de ellas en los días más calurosos.\nNo solo se ven beneficiadas las plantas sino que con una maceta de terracota o barro estarás adquiriendo un objeto para toda la vida. Son mucho más resistentes, su vida útil será mucho más longeva que usando otros materiales porque el barro aporta gran calidad y dureza a estos objetos.'),(3,'34128e22d0258be3bb006ad14c9dd4eb.jpg','Rosas, la planta que le dio nombre a una ciudad',4,'Admin','2021-04-30','Hace algunos ayeres, la belleza y tranquilidad de Guadalajara se convirtió en sinónimo de modernidad, elegancia y romanticismo, lo que hizo que se ganara uno de sus títulos más famosos: La Ciudad de las Rosas.</p><p>Pero, ¿de dónde viene ese título?</p><p>El historiador Carlos Silva Cortés, maestro en Historia de México, relata que durante las décadas de los 60 y 70 había rosales plantados en diversos puntos de la ciudad, lo que convirtió a las rosas en un referente para Guadalajara.</p><p>La idea de tapizar la ciudad de rosas llegó desde Agustín Gómez y Gutiérrez, quien fue director de Parques y Jardines de Guadalajara.</p><p>Se dice que durante una visita a Estados Unidos y Canadá el funcionario tapatío quedó cautivado por esas flores, por lo que pensó en plantar rosales en la capital.</p><p>Durante esa época se podían observar rosales en puntos de la ciudad como Plaza de la Liberación, el Parque Alcalde o el Hospicio Cabañas, entre otros más.'),(5,'b2ea9133256b3683748e00bacdaf7123.jpg','Cultivo de granos en Jalisco',4,'Pedro L. Celso Arellano','2021-04-30','RESUMEN </p><p>\\r\\nEl   objetivo   del   presente   artículo   es   mostrar   cuáles   son   los   principales   efectos   en   la   comercialización   del   maíz   en   torno   a   la   reestructuración   e   implementación   de   nuevosmecanismos para esos efectos. El maíz en Jalisco, ocupa el primer lugar en el ámbito nacional y es cultivado por la mayoría de sus  productores  en  épocas  de  lluvias,  a  su  vez  la  cosecha  se  concentra  especialmente  en  los  meses de noviembre y diciembre. Se habla de empresas harineras, almidoneras que procesan elmaíz  blanco  y  el  amarillo.  Éste  último  se  ha  producido    y    una  agricultura  por  contrato  en  la  siembra. La  introducción  del  retiro  del  estado  significa  que  el  agente  económico  tiene  la  libertad  de  elegir su precio y manifestarse competitivo ante la regionalización y aún la globalización en elque México está inmerso. En esas condiciones, en este momento existen nuevos escenarios con relación  a  la  comercialización  de  granos  (destacando  el  maíz)  orientados  al  equilibrio  entre  la  oferta y la demanda; es decir,  la tendencia es la competencia perfecta en granos;  En esta nueva modernización  existen  nuevos  actores  (productores,  comercializadores),  y  en  1999  aparece  la  bolsa de físicos de Jalisco, que a decir de los coordinadores busca la transparencia y seguridad para los productores en su precio. Se  analiza  el  caso  Jalisco;  por  un  lado  a  los  participantes  en  el  MENAGRO  y  por  otro  a  agricultores de San Martín Hidalgo un municipio que corresponde a la región Valles.  \\r\\n</p><p>HIPÓTESIS \\r\\n</p><p>Uno.  Al  crearse  la  bolsa  de  físicos  en  Jalisco,  se  modificó  la  forma  tradicional  del  proceso  deproducción y comercialización del maíz en el sector agropecuario; este nuevo esquema es unaalternativa de comercialización en el contexto actual pues permite tener transparencias con unacerteza  en  el  precio,  tanto  para  grandes  como  para  pequeños  productores,  siempre  y  cuandoestos últimos se organicen con una visión estratégica para transformar sus procesos productivos. Dos.    La  creación,  operación  y  funcionamiento  del  mercado  de  físicos  están  supeditados  a  la  difusión  de  información  sobre  los  mecanismos  de  soporte;  si  estas  condiciones  no  se  cumplen  difícilmente se podrá consolidar con una bolsa agropecuaria en un futuro. Tres. A causa de la idiosincrasia, pero también de sus condiciones productivas y tecnológicas,un gran parte de los agricultores maiceros no participarán en este esquema de comercialización; en  virtud  de  que  ellos  estarán  sujetos  a  las  relaciones  de  intercambio  con  los  intermediarios  locales  o  regionales,  quienes  a  su  vez,  podrán  participar  en  los  esquemas  de  la  bolsa  agropecuaria de futuros METODOLOGIA Fue la documentación y consulta de fuentes bibliográficas, direcciones de Internet relacionadascon el sector agropecuario, revistas especializadas en economía y negocios, así como periódicos nacionales y locales. \\r\\n</p><p>Cabe mencionar que el trabajo de campo fue de gran ayuda para recabar información  que  al  menos,  nos  guíe  para  entender  mejor  el  contexto,  de  tal  manera,  seefectuaron entrevistas a intermediarios clave en la comercialización del maíz, a profesionales en la  materia,  así  como  a  promotores  del  estado,  con  la  finalidad  de  obtener  información  relacionada con el mercado de físicos. La  idea  por  la  cuál  abordo  a  Jalisco,  es  porque  este  es  un  Estado  pionero  en  la  creación  de  labolsa  de  físicos  y  por  destacar  en  los  primeros  lugares  en  la    producción    de  maíz  a  nivelnacional. Puesto que nuestro país participa con un 61% dentro del rubro de los granos, en tanto que la región Valles sobresale con un 93%.  Así  pues,  dentro  de  la  región  mencionada    se  eligió  al  municipio  de  San  Martín  Hidalgo,  y  serecurrió  al  cálculo  del  cociente  de  localización2  de  Polése  (1998),  con  relación  a  la  media  estatal, el resultado fue un coeficiente de localización de 1.50 eso demuestra que San Martín deHidalgo se especializa en maíz. En noviembre de 1999 se aplicó encuestas a productores en general de acuerdo a un muestreo en  forma  aleatoria  simple  en  el  ejido  San  Martín,  perteneciente  al  municipio  de  San  Martín  Hidalgo. El total del universo es de 325. De igual manera, en el mes anteriormente dicho se entrevistó a siete participantes en el mercado de  físicos.  Es  menester  mencionar  que  para  encuestar  a  estos  agentes  fue  necesario  asistir  en  dos  ocasiones  al  lugar  llamado  “mercadito  de  físicos”  que  se  localiza  en  la  Ciudad  deGuadalajara, es ahí donde se comercializa el maíz de manera novedosa. \\r\\n</p><p>El  marco  conceptual  parte  del  modelo  de  la  oferta  y  la  demanda,  la  llamada  competencia  perfecta,  también  se  relaciona  a  los  mercados  imperfectos  en  virtud  de  que  se  encontró  que  elárea de estudio tiene cierta similitud con este modelo, dado que existe un monopsonio, a su vez se  comenta  la  incertidumbre  e  información  porque  es  vital  para  hablar  dentro  del  rubro  de  los  derivados. DESARROLLO Principales estados productores Según  el  Centro  de  Estadística  Agropecuaria  (1999),  entre  los  principales  estados  productores  de maíz grano se encuentran Jalisco, Sinaloa y Chiapas. En 1997 el estado de Sinaloa produjo el15.5% de la producción total nacional de maíz, el Estado de México el 13% y Jalisco participó 2 El valor del cociente expresa el grado de concentración de la actividad en la región en relación con el territorio de referencia (por esto se habla también de cociente de concentración): un valor superior a 1 significa una concentración más que proporcional en la región. (Polèse, 1998:154).con  el  11.7%.  Para  1998,  el  estado  de  Jalisco  produjo  el  15.1%,  siguiéndole  Sinaloa  con  el 14.2%  y  Chiapas  pasó  a  ser  el  tercer  productor  nacional  de  maíz  con  el  9.5%,  el  resto  de  los  estados participan con valores menores al 9%.  \\r\\n</p><p>Principales destinos de consumo Según  el  FIRA,  para  México  en  1997,  el  consumo  de  maíz  se  distribuyó  en  5  grandes  rubros:consumo humano 57%, pecuario 26%, almidón 11%, mermas 4% y siembras 2% con relación a una producción disponible para ese año, de 14,744 mil toneladas. Precios del Maíz y tendencias En   nuestro   país,   el   precio   del   maíz   se   encontraba   subsidiado   hasta   1998.   El   subsidio   PROCAMPO que es un apoyo directo al productor; el subsidio al maíz que se empleaba para la producción   de   tortilla,   para   consumo   humano   a   precio   controlado,   era   operado   por   CONASUPO.  Este  subsidio  se  le  entregaba  a  molineros  nixtamaleros  y  a  las  industrias  de  harina nixtamalizada, y consistía en reembolsar el diferencial entre el precio pagado por el maíz en  el  mercado  libre  y    el  precio  de  indiferencia  calculado  por  CONASUPO;  el  subsidio  manejado por ASERCA estaba destinado a la comercialización del grano. No  obstante,  con  la  salida  de  CONASUPO,  se  borró  la  idea  del  precio  de  garantía  o  precio  indicativo; de esta manera el grano ya se encuentra en el mercado libre, así como el precio de la tortilla. La tendencia de la producción de maíz sigue en aumento y así seguirá de manera significativa debido  a  las  investigaciones  que  se  están  realizando  en  EUA  para  sustituir  el  petróleo,  como  fuentes de energéticos, así como a derivados del mismo, como por ejemplo los plásticos. Esto ocasionará  un  aumento  en  la  demanda  del  maíz,  por  lo  que  los  precios  internacionales  repuntarán (FIRA, 1998:46). El maíz en Jalisco El estado de Jalisco cuenta con una superficie de 8’013,700 hectáreas. La superficie dedicada a la  ganadería  se  estima  en  3’185,269  hectáreas  que  representan  el  39.7%  de  la  superficie  delestado.  A  su  vez,  la  superficie  agrícola  es  de  1’710,151  hectáreas,  que  representan  el  21.3%,  éstas  251,110  hectáreas  son  de  riego.  Mientras  tanto  el  39%  restante  se  destina  al  uso  forestal  (30%)  y  el  9%  a  otros  usos.  Al  igual  que  en  el  ámbito  nacional,  la  estructura  de  la  superficie  sembrada  y  cosechada  en  Jalisco  estuvo  concentrado  en  granos,  donde  el  maíz  obtuvo  una  participación del 81% con relación a los demás granos.'),(6,'21331e64e3d2c48d4853a42b27a248bd.jpg','Cuidados del agave Azul',1,'Admin','2021-05-04','La floración de esta planta es espectacular y sólo se produce una vez a lo largo de su vida ya que cuando la flor muere, la pita muere con ella. </p><p>Cuando la planta llega a la madurez, nace un gran tallo que crece hasta florecer en verano. Pese a esta circunstancia, la planta puede llegar a vivir hasta 40 años antes de florecer y morir y, durante todo este tiempo, produce una amplia descendencia a su alrededor.</p><p>Además, cuando la mata muere, de sus raíces emergen un montón de hijuelos. Podremos extraer estos hijuelos cortando el tallo que lo une con la mata central y así lograremos una nueva mata para la reproducción de la planta.</p><p>Existen diferentes variedades con las hojas en diferentes tonalidades: algunas tienen color en sus hojas, otras solo con el perímetro de un color, otras de tonos de verde oscuro, otras con un color azulado, otras con porte contenido o de tamaño pequeños, etc.</p><p>El jugo de las hojas es irritante. Al manipular la planta (sobre todo al cortar o retirar alguna hoja) es recomendable protegerse la piel de manos y brazos utilizando guantes y manga larga.</p><p>Además, también es importante protegerse para evitar las púas de las hojas. Para evitar problemas, se pueden cortar cuidadosamente con una podadora.');
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
INSERT INTO `direccion` VALUES (4,'ELEFANTE','90','A',3100,'DEL CENTRO','BENITO JUAREZ','CIUDAD DE MéXICO',1),(6,'PROVIDENCIA ','726','',3100,'DEL VALLE CENTRO','BENITO JUAREZ','CIUDAD DE MéXICO',16),(7,'AV INSURGENTES ','166','PTE',63000,'CENTRO','TEPIC','NAYARIT',17),(8,'CAMINO ARENERO','412','Sistemas',45019,'EL BAJIO','ZAPOPAN','JALISCO',1);
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
INSERT INTO `producto` VALUES (16,'3','Maceta pequena','Maceta de cerámica de 5 litros con agujero de drenaje.','3456970fc8fb6b7b840fad8d6c439934.jpg',300.00,4),(17,'3','Maceta mediana','Maceta de barro de 25 litros. Cuenta con agujero de drenaje.','713fa0425ff3624e6e4b30ed8af212e6.jpg',750.00,4),(18,'2','Pala','Pala mediana de 8\". Cuenta con mango de madera de 8\'.','b982b8723804826a7a91ab9d24006299.jpg',250.00,-30),(19,'3','Maceta grande','Maceta grande de 100 litros, con agujero de drenaje.','33b26ef5268608e6ab3842956f27fd4e.jpg',1500.00,10),(20,'2','Pala mediana','Este texto es solo de demo, blah blah blah','945265dc7af92af599d8bd01d84cccee.jpg',500.00,19),(22,'1','Semillas de tomate','Bolsa de 150gr. de semillas de jitomate estilo \"pomodoro\". Incluye manual de instrucciones para su cultivo.','7e051559ad9a702552014547aa1092a3.jpg',50.00,-360),(23,'2','Pala pequeña','Pequeña pala de jardin, perfecta para cuidar de flores y huertos de hortalizas.','6cd0b9e8a5a2ef329276af6ea78ca8d0.jpg',150.00,49),(24,'4','Habaneros','Variedad de Habanero naranja seleccionado. Planta de alto rendimiento. Días a madurez relativa entre los 90 a 100 días. El fruto es de color verde claro a naranja brilloso, con un tamaño aproximado de 5 x 2.5 cm.; de apariencia jugosa y terminado en punta, con paredes delgadas. Muy utilizado en la preparación de salsas y extracción de aceites esenciales. Resistencia a enfermedades más comunes. Bolsa de 10 piezas','411d6e227279f1ff90532f0dc2c9b663.jpg',200.00,-148),(25,'1','Semillas de Alfalfa minerva','Alfalfa de alto rendimiento de dormancia 10.\r\nExcelente rendimiento y persistencia.\r\nRecuperación muy rapida después del corte.\r\nAdecuado para climas cálidos y para suelos con problemas de nematodos.\r\nAlta resistencia a plagas. ','79140f097e0015d3fe7eedd539253fc0.jpg',500.00,-448),(26,'1','Semillas de Agave','Bolsa de 50g de semillas de agave azul. Certificadas de denominacion de origen de Jalisco ISO 9001, autorizadas para produccion de tequila por la secretaria de salud del estado de Jalisco.','9b4f8cf1f75450910b62a5296d6b8f37.jpg',250.00,28),(27,'4','Articulo demo','Este es un articulo de demostracion, no tomarse muy en serio el texto','0c7990e3ab8958b74353666b21e87f7f.jpg',100.00,0);
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
