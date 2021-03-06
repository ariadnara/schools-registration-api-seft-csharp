-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-02-2022 a las 15:42:10
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `school_registrations`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `dep_administrativa` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `abr_nome` varchar(50) NOT NULL,
  `logradouro` varchar(100) NOT NULL,
  `numero` int(11) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cep` int(11) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `telefone` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url_website` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `schools`
--

INSERT INTO `schools` (`id`, `dep_administrativa`, `tipo`, `nome`, `abr_nome`, `logradouro`, `numero`, `bairro`, `cep`, `latitude`, `longitude`, `telefone`, `email`, `url_website`) VALUES
(208, 'PRIVADO', 'NI', '5001 IEI MÃEZINHA DO CÉU', '5001 MÃEZINHA DO CÉU', 'R VINTE CINCO DE OUTUBRO', 295, 'SARANDI', 91140500, -29.9842836, -51.1213051, 33668700, 'crechemaezinhadoceu@bol.com.br', ''),
(209, 'PRIVADO', 'NI', '5002 IEI JOÃO PAULO II', '5002 JOÃO PAULO II', 'R FREDERICO MENTZ', 118, 'FARRAPOS', 90250370, -29.978485199999998, -51.1964513, 33742675, 'CRECHEJOAOPAULOLL@YAHOO.COM.BR', ''),
(210, 'PRIVADO', 'NI', '5003 EEI ESTRELINHA DO CÉU', '5003 ESTRELINHA DO CÉU', 'R ULYSSES DE ALENCASTRO BRANDAO', 205, 'SARANDI', 91140400, -29.9896111, -51.1196226, 33645165, 'creche.estrelinha@hotmail.com', ''),
(211, 'PRIVADO', 'NI', '5004 EEI ESTRELINHA DO AMANHÃ', '5004 ESTRELINHA DO AMANHÃ', 'AV DONARIO BRAGA', 159, 'RUBEM BERTA', 91160360, -29.998119999999997, -51.0998618, 33340223, 'rosemarycentena@hotmail.com', ''),
(212, 'PRIVADO', 'NI', '5005 IEI VILA UNIÃO', '5005 VILA UNIÃO', 'AV VINTE UM DE ABRIL', 1470, 'SARANDI', 91120630, -29.9794081, -51.1299406, 33644456, 'clube.uniao@terra.com.br', ''),
(213, 'PRIVADO', 'NI', '5006 EEI TRENZINHO DA ALEGRIA', '5006 TRENZINHO DA ALEGRIA', 'R SENHOR DO BOM FIM', 956, 'SARANDI', 91140380, -29.985651, -51.1152988, 33655844, 'e.eita@ig.com.br', ''),
(214, 'PRIVADO', 'NI', '5007 IEI EUGÊNIA CONTE', '5007 EUGENIA CONTE', 'RUA K', 120, 'RUBEM BERTA', 91160170, -29.9943402, -51.1057893, 33673267, 'CIEC.SECRETARIA@GMAIL.COM', ''),
(215, 'PRIVADO', 'NI', '5008 EEI JOANA DARC', '5008 JOANA DARC', 'R VINTE QUATRO DE AGOSTO VL MINUANO', 375, 'SARANDI', 91110560, -29.9908941, -51.1378963, 33508487, 'escola_joanadarc@hotmail.com', ''),
(216, 'PRIVADO', 'NI', '5009 IEI SANTA CATARINA', '5009 SANTA CATARINA', 'R JOSUE DE CASTRO', 290, 'SARANDI', 91120110, -29.978444999999997, -51.1369299, 33658244, 'SANTACATARINA290@HOTMAIL.COM', ''),
(217, 'PRIVADO', 'NI', '5010 IEI ACOMPAR NUCLEO II - SANTO AGOSTINHO', '5010 ACOMPAR - II', 'AV CALDEIA', 210, 'SARANDI', 91130540, -29.9854438, -51.1084677, 34145931, 'NUCLEO2@ACOMPAR.ORG', ''),
(218, 'PRIVADO', 'NI', '5012 EEI JESUS O BOM PASTOR', '5012 JESUS O BOM PASTOR', 'R DONA TEODORA', 160, 'FARRAPOS', 90240300, -29.9888326, -51.2020304, 30241793, 'comulherliberdade@gmail.com', ''),
(219, 'PRIVADO', 'NI', '5013 IEI SANTA LUIZA', '5013 SANTA LUIZA', 'R IRMA MARIA JOSE TREVISAN', 30, 'FARRAPOS', 90250430, -29.980178499999997, -51.1944606, 33744986, 'obrasocialsluiza@gmail.com', ''),
(220, 'PRIVADO', 'NI', '5016 IEI OSICOM I', '5016 OSICOM I', 'R JOSEFA BARRETO', 302, 'PASSO DAS PEDRAS', 91230080, -30.0163844, -51.1266233, 33445159, 'osicomimc@gmail.com', ''),
(221, 'PRIVADO', 'NI', '5017 EEI NEGRINHO DO PASTOREIO', '5017 NEGRINHO DO PASTOREIO', 'R WOLFRAM METZLER', 21, 'RUBEM BERTA', 91250320, -30.0230287, -51.1066541, 33665808, 'escolanegrinhopastoreio@gmail.com', ''),
(222, 'PRIVADO', 'NI', '5018 IEI ESPERANÇA CORDEIRO', '5018 ESPERANÇA CORDEIRO', 'R JULIO STREGUE', 55, 'COSTA E SILVA', 91180030, -29.9947196, -51.1300714, 33488086, 'ieiesperancacordeiro@gmail.com', ''),
(223, 'PRIVADO', 'NI', '5019 IEI VOVÔ CAZEMIRO -ACM CRUZEIRO', '5019 VOVÔ CAZEMIRO', 'RUA CRUZEIRO DO SUL', 2702, 'SANTA TEREZA', 90840000, -30.084479299999998, -51.23015289999999, 32666200, 'tgutterres@acm-rs.com.br', ''),
(224, 'PRIVADO', 'NI', '5020 EEI MADRE TERESA', '5020 MADRE TERESA', 'R WOLFRAM METZLER', 605, 'RUBEM BERTA', 91250320, -30.0245675, -51.1034946, 33663177, 'iemadreteresa@gmail.com', ''),
(225, 'PRIVADO', 'NI', '5021 EEI GALPÃOZINHO', '5021 GALPAOZINHO', 'R DONA BECA', 120, 'RUBEM BERTA', 91150000, -30.0002273, -51.1072645, 33741768, 'crechegalpaozinho@gmail.com', ''),
(226, 'PRIVADO', 'NI', '5023 EEI VO ANA', '5023 VO ANA', 'R JOSE LUIZ MARTINS COSTA', 200, 'MÁRIO QUINTANA', 91250330, -30.0248097, -51.0997214, 996071073, 'escolavoana@yahoo.com.br', ''),
(227, 'PRIVADO', 'NI', '5024 IEI LAR DA CRIANÇA MENINO JESUS DE PRAGA', '5024 MENINO JESUS DE PRAGA', 'R WOLFRAM METZLER', 334, 'RUBEM BERTA', 91250320, -30.0235552, -51.1047559, 33664599, 'larmjpraga@terra.com.br', 'http://www.larmeninojesus.com.br/'),
(228, 'PRIVADO', 'NI', '5026 IEI CRIANÇA ESPERANÇA', '5026 CRIANÇA ESPERANÇA', 'R JOAO BRAVO DE ALMEIDA', 101, 'SARANDI', 91180035, -30.0084627, -51.1237528, 33484428, 'associacao.instituicao@gmail.com', ''),
(229, 'PRIVADO', 'NI', '5027 IEI GIRASSOL', '5027 GIRASSOL', 'R WOLFRAM METZLER', 567, 'RUBEM BERTA', 91250320, -30.0245367, -51.1031299, 33660296, 'clubedemaesrubemberta2@yahoo.com.br', ''),
(230, 'PRIVADO', 'NI', '5028 EEI SÃO VICENTE DE PAULO', '5028 CASA CRIANÇA SÃO VICENTE', 'R PEDRO RAUPP', 160, 'JARDIM ITU', 91225080, -30.0228461, -51.1331812, 30721754, 'escola_svp@yahoo.com.br', ''),
(231, 'PRIVADO', 'NI', '5029 EEI CANTINHO DOS PIAS', '5029 CANTINHO DOS PIÁS', 'R THOMAZ FRANCISCO DE JESUS', 412, 'JARDIM CARVALHO', 91430750, -30.0499294, -51.1462807, 33387776, 'cantinhodospias@hotmail.com', ''),
(232, 'PRIVADO', 'NI', '5030 EEI TRÊS CORAÇÕES', '5030.TRÊS CORAÇÕES', 'R DEZESSEIS VILA MATO SAMPAIO', 623, 'BOM JESUS', 91420620, -30.047757, -51.1623576, 33873108, 'creche3coracoes@gmail.com', ''),
(233, 'PRIVADO', 'NI', '5031 IEI TIA ROSA', '5031 TIA ROSA', 'R CINCO VILA VALNERI ANTUNES', 10, 'MÁRIO QUINTANA', 91260350, -30.0301658, -51.1094676, 33380586, 'crechetiarosa.valneriantunes@gmail.com', ''),
(234, 'PRIVADO', 'NI', '5032 IEI JERUSALÉM BEITH SHALOM', '5032 JERUSALÉM-BEITH SHALOM', 'AV VITORIA', 35, 'PASSO DAS PEDRAS', 91225040, -30.028367, -51.129723, 33506739, 'diretoria.principedapaz@gmail.com', ''),
(235, 'PRIVADO', 'NI', '5033 IEI ALAN MARIA TEREZA', '5033 TIA MARIA TEREZA', 'AV DEZ DE MAIO', 265, 'PASSO DAS PEDRAS', 91230480, -30.023148099999997, -51.122773599999995, 33476431, 'alanmariatereza@gmail.com', ''),
(236, 'PRIVADO', 'NI', '5034 IEI ALAN BOM JESUS', '5034 ALAN', 'R PANAMA', 324, 'BOM JESUS', 91420200, -30.0456783, -51.1578594, 33348727, 'ong.ligadeamparo@hotmail.com', ''),
(237, 'PRIVADO', 'NI', '5035 EEI NOSSA SENHORA APARECIDA VILA PINTO', '5035 NOSSA SENHORA APARECIDA', 'R J VILA FATIMA-PINTO', 220, 'BOM JESUS', 91420120, -30.0501193, -51.1544744, 30267499, 'crechensaparecida@terra.com.br', ''),
(238, 'PRIVADO', 'NI', '5036 EEI MUNDO CRIANÇA', '5036 MUNDO CRIANÇA', 'RUA 4', 62, 'MORRO SANTANA', 91450430, -30.0455451, -51.1268365, 33670114, 'mundocrianca2011@hotmail.com', ''),
(239, 'PRIVADO', 'NI', '5037 IEI AELCA', '5037 AELCA', 'R GEN SALVADOR PINHEIRO', 799, 'VILA JARDIM', 91320240, -30.0373761, -51.1505003, 33346222, 'aelca@uol.com.br', ''),
(240, 'PRIVADO', 'NI', '5038 IEI NOSSA SENHORA DE FÁTIMA -BOM JESUS', '5038 N S FATIMA BOM JESUS', 'R OITO VILA MATO SAMPAIO', 32, 'BOM JESUS', 91420591, -30.0495658, -51.1600356, 33816659, 'instituicaonossasenhoradefatima@hotmail.com', ''),
(241, 'PRIVADO', 'NI', '5040 IEI SAGRADA FAMÍLIA', '5040 SAGRADA FAMÍLIA', 'RUA 05 V. LARANJEIRAS', 174, 'MORRO SANTANA', 91310001, -30.0465594, -51.1293932, 980243637, 'lorecinead@hotmail.com', ''),
(242, 'PRIVADO', 'NI', '5041 EEI MENSAGEIROS DA LUZ', '41 LAR DO MENOR MENSAGEIROS DA', 'TRAV. CEL ANTONIO CARNEIRO PINTO', 195, 'PETRÓPOLIS', 90460020, -30.0396671, -51.1854302, 33352849, 'mensageirosdaluz1976@hotmail.com', ''),
(243, 'PRIVADO', 'NI', '5042 IEI PIU PIU', '5042 PIU PIU', 'R JACINTO GOMES', 683, 'SANTANA', 90040270, -30.043907599999997, -51.209109899999994, 30296737, 'CRECHEVILAPLANETARIO@GMAIL.COM', ''),
(244, 'PRIVADO', 'NI', '5043 IEI LUPICINIO RODRIGUES', '5043 LUPICINIO RODRIGUES', 'R ALMIRANTE ALVARO A DA MOTTA E SILVA', 200, 'MENINO DEUS', 90160130, -30.0449969, -51.2202849, 32110416, 'lupi@cepa.org.br', ''),
(245, 'PRIVADO', 'NI', '5044 EEI CASA DO PEQUENINO', '5044 CASA DO PEQUENINO', 'AV AZENHA', 366, 'AZENHA', 90160004, -30.0469886, -51.2136191, 32230043, 'casapequenino@gmail.com', ''),
(246, 'PRIVADO', 'NI', '5045 EEI SOMAI', '5045 SOMAI LAR DAS MENINAS', 'R BOM JESUS', 610, 'BOM JESUS', 91420030, -30.0436105, -51.1509089, 0, 'creche.somai@yahoo.com.br', ''),
(247, 'PRIVADO', 'NI', '5046 IEI NSA SRA DE FÁTIMA NOVO MUNDO', '5046 N S FATIMA NOVO MUNDO', 'AV MARTIM FELIX BERTA', 2575, 'RUBEM BERTA', 91270650, -30.031179, -51.1135289, 33876460, 'clubedemaess@terra.com.br', ''),
(248, 'PRIVADO', 'NI', '5048 IEI HELOISA BECKER', '5048 HELOISA BECKER', 'R SAO MANOEL', 1909, 'RIO BRANCO', 90620110, -30.0500031, -51.2006183, 32233714, 'infantillar@hotmail.com', ''),
(249, 'PRIVADO', 'NI', '5049 IEI BRINCANDO DE CIRANDA', '5049 BRINCANDO DE CIRANDA', 'R JOSE MADRID', 736, 'JARDIM CARVALHO', 91430580, -30.0492423, -51.1509889, 33814301, 'brincandodeciranda@bol.com.br', ''),
(250, 'PRIVADO', 'NI', '5050 EEI NSA SRA APARECIDA SÃO PEDRO', '5050 NOSSA SENHORA APARECIDA', 'AV IPIRANGA', 5229, 'PRAIA DE BELAS', 90160092, -30.056813, -51.1869432, 33223047, 'criancasaopedro@bol.com.br', ''),
(251, 'PRIVADO', 'NI', '5051 EEI TURMA DO BARULHO', '5051 TURMA DO BARULHO', 'R TANAUI DA SILVA BOEIRA', 209, 'LOMBA DO PINHEIRO', 91570440, -30.1227998, -51.1027429, 30265796, 'ascovipa2008@gmail.com', ''),
(252, 'PRIVADO', 'NI', '5052 EEI SÃO PEDRO', '5052 SÃO PEDRO', 'RUA PADRE ROQUE GONZALES', 315, 'LOMBA DO PINHEIRO', 91570170, -30.1155737, -51.511019681, 31784511, 'ed.infantilsaopedro@gmail.com', ''),
(253, 'PRIVADO', 'NI', '5053 IEI BALÃO MÁGICO', '5053 BALÃO MÁGICO', 'RUA RIO NEGRO - LOMBA DO PINHEIRO', 59, 'LOMBA DO PINHEIRO', 91570330, -30.1186663, -51.510962297, 30224531, 'balaomagicocreche@gmail.com', ''),
(254, 'PRIVADO', 'NI', '5054 EEI CASA DA CRIANÇA ALGODÃO DOCE', '5054 ALGODÃO DOCE', 'R SÃO MARCOS - LOMBA DO PINHEIRO', 150, 'LOMBA DO PINHEIRO', 91570380, -30.1179578, -51.0971373, 30192458, 'crechealgodaodoce@terra.com.br', ''),
(255, 'PRIVADO', 'NI', '5055 IEI VOVÓ IDA', '5055 VOVO IDA', 'RUA DONA FIRMINA', 1583, 'VILA JOÃO PESSOA', 91520210, -30.0759542, -51.1685722, 33250757, 'vovoida19@gmail.com', ''),
(256, 'PRIVADO', 'NI', '5056 EEI PAINEIRAS', '5056 PAINEIRAS', 'LG PAINEIRAS', 477, 'VILA JOÃO PESSOA', 91510070, -30.0713849, -51.1747845, 33284708, 'crechepaineiras@gmail.com', ''),
(257, 'PRIVADO', 'NI', '5057 EEI CAMPO DA TUCA', '5057 CAMPO DA TUCA', 'RUA D', 200, 'PARTENON', 91510480, -30.0709027, -51.1736134, 33220971, 'creche@campodatuca.org.br', ''),
(258, 'PRIVADO', 'NI', '5058 EEI TOPO GIGIO', '5058 TOPO GIGIO', 'RUA SÃO JOSÉ VILA SÃO JOSÉ COMUNITÁRIA', 29, 'VILA SÃO JOSÉ', 91520470, -30.0772698, -51.1638843, 33158057, 'escolatopogigio@gmail.com', ''),
(259, 'PRIVADO', 'NI', '5059 EEI ACOMUR', '5059 ACOMUR', 'RUA VIDAL DE NEGREIROS', 996, 'VILA SÃO JOSÉ', 91520480, -30.0703867, -51.1671969, 33183231, 'acomur@hotmail.com', ''),
(260, 'PRIVADO', 'NI', '5060 IEI MURIALDO', '5060 MURIALDO', 'TRAVESSA SÃO JOÃO', 57, 'VILA SÃO JOSÉ', 91520560, -30.0730572, -51.1637132, 33152960, 'creche@murialdopoasocial.org.br', ''),
(261, 'PRIVADO', 'NI', '5061 IEI VÓ BELINHA', '5061 VÓ BELINHA', 'RUA MIGUEL OLVICTO DOS SANTOS', 71, 'LOMBA DO PINHEIRO', 91550280, -30.0972645, -51.136052, 31033105, '', ''),
(262, 'PRIVADO', 'NI', '5062 IEI ESTRELA MAGICA', '5062 ESTRELA MÁGICA', 'R SANTA CATARINA ESTR JOÃO DE O REMIÃO', 30, 'LOMBA DO PINHEIRO', 91560000, -30.1219697, -51.1085822, 33520881, 'crecheestrelamagica@hotmail.com', ''),
(263, 'PRIVADO', 'NI', '5063 IEI NOSSA SENHORA APARECIDA -VILA PINHAL', '5063 Nª S APARECIDA VILA PINHA', 'R ABACATEIRO', 195, 'LOMBA DO PINHEIRO', 91560480, -30.1203592, -51.1066651, 0, 'escolapinhal@hotmail.com', ''),
(264, 'PRIVADO', 'NI', '5064 EEI RECREIO DA DIVISA', '5064.RECREIO DA DIVISA', 'ESTR JOÃO DE OLIVEIRA REMIÃO', 6269, 'LOMBA DO PINHEIRO', 91130540, -30.1237905, -51.1079968, 33177469, 'recreiodadivisa@gmail.com', ''),
(265, 'PRIVADO', 'NI', '5065 IEI ARCO IRIS ENCANTADO', '5065 ARCO IRIS ENCANTADO', 'R GUAIBA-LOMBA DO PINHEIRO', 95, 'LOMBA DO PINHEIRO', 91560640, -30.1105187, -51.1120846, 30292214, '', ''),
(266, 'PRIVADO', 'NI', '5066 EEI MEU NENE', '5066 MEU NENE', 'R ERNESTO LISCANO', 195, 'AGRONOMIA', 91540310, -30.0882007, -51.1266516, 33154217, 'cristiane-fogassafonseca@hotmail.com', ''),
(267, 'PRIVADO', 'NI', '5067 IEI NOSSA SENHORA DA GLORIA', '5067 NOSSA SENHORA DA GLORIA', 'CLAUDIONOR DE MORAIS', 252, 'CASCATA', 91710150, -30.0780113, -51.1896033, 33397463, 'crechecomgloria@hotmail.com', ''),
(268, 'PRIVADO', 'NI', '5069 IEI CRECHE LAR DA CRIANCA', '5069 LAR DA CRIANÇA', 'R NOSSA SENHORA DO BRASIL-SANTA TERESA', 83, 'SANTA TEREZA', 90850510, -30.0699447, -51.2224929, 32320503, 'ieicrechelardacrianca@gmail.com', ''),
(269, 'PRIVADO', 'NI', '5070 IEI CENEAMM 1 DE MAIO', '5070 CENEAMM 1 DE MAIO', 'ESTR BARCELLOS', 2268, 'CASCATA', 91712300, -30.0907206, -51.179328, 33184152, 'ceneamm@gmail.com', ''),
(270, 'PRIVADO', 'NI', '5071 EEI CRIANÇA FELIZ', '5071 CRIANÇA FELIZ', 'R CANUDOS', 625, 'CASCATA', 91712340, -30.0935696, -51.1743931, 33851641, 'asmovica254@gmail.com', ''),
(271, 'PRIVADO', 'NI', '5072 IEI AMAVTRON', '5072 AMAVTRON', 'R CAIXA ECONOMICA', 633, 'SANTA TEREZA', 90840610, -30.0745487, -51.2222956, 32333150, 'iceiamavtron@gmail.com', ''),
(272, 'PRIVADO', 'NI', '5073 EEI MATO GROSSO', '5073 MATO GROSSO', 'RUA OCTAVIO DE SOUZA', 1818, 'TERESÓPOLIS', 90840350, -30.0809394, -51.2289879, 32662407, 'escolamt2017@gmail.com', ''),
(273, 'PRIVADO', 'NI', '5074 IEI BOA ESPERANÇA', '5074 BOA ESPERANÇA', 'RUA OSMAR SANTOS FREITAS', 40, 'SANTA TEREZA', 90840405, -30.0789011, -51.218418, 30628064, 'secretaria.cencor1@hotmail.com', ''),
(274, 'PRIVADO', 'NI', '5075 IEI MARIA DOLABELLA PORTELA', '5075 MARIA DOLABELLA PORTELA', 'R DONA OTILIA', 927, 'SANTA TEREZA', 90830580, -30.0815506, -51.2265473, 31098325, 'imaculatinaspoa.gestao-rh@hotmail.com', ''),
(275, 'PRIVADO', 'NI', '5076 EEI DOM ORIONE', '5076 DOM ORIONE', 'R URSA MAIOR', 215, 'CRISTAL', 90820200, -30.0859696, -51.2324344, 32665774, 'orione@donorione.org.br', ''),
(276, 'PRIVADO', 'NI', '5077 EEI NOSSA SENHORA DE NAZARÉ-DOM ORIONE', '5077 NOSSA SENHORA DE NAZARÉ', 'R EUCLIDES DE ALMEIDA', 20, 'SANTA TEREZA', 90840640, -30.0790974, -51.2239631, 32412955, 'nazare@donorione.org.br', ''),
(277, 'PRIVADO', 'NI', '5081 EEI BRIZOLINHA', '5081 BRIZOLINHA', 'AV ARROIO DOS PADRES', 130, 'CASCATA', 91712390, -30.0979033, -51.1877896, 33223095, 'cecojare@yahoo.com.br', ''),
(278, 'PRIVADO', 'NI', '5082 IEI MEDIANEIRA', '5082 MEDIANEIRA', 'R CAIXA ECONOMICA', 320, 'SANTA TEREZA', 90840610, -30.0725293, -51.2235659, 32233558, 'crechemedianeira@gmail.com', ''),
(279, 'PRIVADO', 'NI', '5083 EEI CASA DE NAZARE CENTRO DE APOIO AO MENOR', '5083 CASA DE NAZARE', 'R CEL TIMOTEO', 350, 'CAMAQUÃ', 91910680, -30.00949777, -51.2376089, 32429196, 'mariainesflores013@gmail.com', ''),
(280, 'PRIVADO', 'NI', '5084 EEI CANTINHO DA CRIANÇA', '5084 CANTINHO DA CRIANCA', 'RUA ADÃO ARAUJO', 81, 'CORONEL APARÍCIO BOR', 91710560, -30.0755231, -51.182646, 33395480, 'cantinho.crianca@gmail.com', ''),
(281, 'PRIVADO', 'NI', '5085 EEI BATILANOS', '5085 BATILANOS', 'ESTR BATILLANAS', 1005, 'CASCATA', 91712310, -30.0869465, -51.1811157, 33184427, 'crechebatilanos@hotmail.com', ''),
(282, 'PRIVADO', 'NI', '5086 EEI ARAPEÍ', '5086 ARAPEÍ', 'R ARAPEI', 103, 'CRISTAL', 90830470, -30.0863338, -51.2294967, 32410360, 'crechearapei@yahoo.com.br', ''),
(283, 'PRIVADO', 'NI', '5087 IEI NUCLEO SAO FRANCISCO', '5087 NUCLEO SAO FRANCISCO', 'BC UM RUA CEL TIMOTEO', 465, 'CAVALHADA', 91910000, -30.094817, -51.2385141, 32434801, 'casadenazare.adm@gmail.com', ''),
(284, 'PRIVADO', 'NI', '5088 IEI VINDE A MIM AS CRIANCINHAS', '5088 VINDE A MIM AS CRIANCINHA', 'ESTR COSTA GAMA', 719, 'BELÉM VELHO', 91787311, -30.1196196, -51.1769797, 32452506, 'amparosc@bol.com.br', ''),
(285, 'PRIVADO', 'NI', '5089 EEI VÓ MARIA', '5089 VÓ MARIA', 'VILA ORFANOTROFIO II', 54, 'NONOAI', 90840440, -30.0865126, -51.2273637, 32660181, 'crechevomaria@gmail.com', ''),
(286, 'PRIVADO', 'NI', '5091 IEI MADRE BRIGIDA POSTORINO', '5091 MADRE BRIGIDA POSTORINO', 'BC FLORES VILA TRONCO II', 346, 'SANTA TEREZA', 90843462, -30.0772184, -51.225752, 32666067, 'imaculatinaspoa@ig.com.br', ''),
(287, 'PRIVADO', 'NI', '5097 EEI PASSO A PASSO', '5097 PASSO A PASSO', 'RUA MORRO ALTO', 485, 'ABERTA DOS MORROS', 91751650, -30.1366918, -51.2110045, 30849823, 'edina.avila@hotmail.com', ''),
(288, 'PRIVADO', 'NI', '5099 EEI AMIGO SPINELLI', '5099 AMIGO SPINELLI-ALDEIA DA', 'R DONA PAULINA', 700, 'TRISTEZA', 91920030, -30.1175854, -51.246815, 32683313, 'contato@aldeiadafraternidade.org.br', ''),
(289, 'PRIVADO', 'NI', '5100 IEI ISABEL VIEIRA', '5100 TIA ISABEL', 'RUA NOVA IPANEMA', 34, 'HÍPICA', 91755200, -30.1532525, -51.2013379, 31105904, 'iceivi@bol.com.br', ''),
(290, 'PRIVADO', 'NI', '5102 IEI RENASCER VILA AMERICA', '5102 RENASCER', 'R ROBERTO FELIX BERTOI', 25, 'CAMAQUÃ', 91910540, -30.1012431, -51.2423268, 32417161, 'crecherenascer@bol.com.br', ''),
(291, 'PRIVADO', 'NI', '5105 EEI ANANDA MARGA RESTINGA VELHA', '5105 ANANDA MARGA RESTINGA VEL', 'R MANOEL FARIA DA ROSA PRIMO', 779, 'RESTINGA', 91790770, -30.1598602, -51.1402469, 32508180, 'restingavelha@amurt.org.br', ''),
(292, 'PRIVADO', 'NI', '5106 EEI NOVA SANTA RITA', '5106 NOVA SANTA RITA', 'R TOBAGO', 570, 'RESTINGA', 91790530, -30.1589231, -51.1439202, 32581138, 'creche.s.rita@gmail.com', ''),
(293, 'PRIVADO', 'NI', '5107 EEI ARCO IRIS I', '5107 ARCO IRIS I', 'R TOBAGO', 1258, 'RESTINGA', 91790530, -30.155906, -51.1372846, 32610170, 'acobreve@gmail.com', ''),
(294, 'PRIVADO', 'NI', '5108 EEI PADRE PEDRO LEONARDI I', '5108 PADRE PEDRO LEONARDI I', 'ESTR BARRO VERMELHO', 542, 'RESTINGA', 91790100, -30.1628744, -51.1454685, 32505008, 'padrepedroleonardi@yahoo.com.br', ''),
(295, 'PRIVADO', 'NI', '5109 EEI ANANDA MARGA RESTINGA NOVA 1', '5109 ANANDA MARGA REST NOVA 1', 'RUA ALAMEDA D', 84, 'RESTINGA', 91790610, -30.1549846, -51.136894, 30946660, 'restinganova1@amurt.org.br', ''),
(296, 'PRIVADO', 'NI', '5110 EEI ANANDA MARGA JUCA BATISTA', '5110 ANANDA MARGA JUCA BATISTA', 'AV JUCA BATISTA', 6841, 'PONTA GROSSA', 91778063, -30.1747344, -51.17665, 33122300, 'escola.bn@amurt.org.br', ''),
(297, 'PRIVADO', 'NI', '5111 EEI ANANDA MARGA BARRO VERMELHO', '5111 ANANDA MARGA BARRO VERMEL', 'R JOSE DE ABREU FRAGA', 52, 'RESTINGA', 91790095, -30.1667164, -51.1462713, 32611753, 'barrovermelho@amurt.org.br', ''),
(298, 'PRIVADO', 'NI', '5112 EEI SANTA CATARINA DA RESTINGA', '5112 SANTA CATARINA DA RES', 'AV LUIZ FRANCISCO ZANELLA', 1001, 'RESTINGA', 91790800, -30.1620111, -51.1365418, 32662517, 'santacatarinadarestinga@yahoo.com.br', ''),
(299, 'PRIVADO', 'NI', '5113 EEI ANJINHO DA GUARDA', '5113 ANJINHO DA GUARDA', 'R DOMINGOS DE ABREU', 290, 'SARANDI', 91120090, -29.988703, -51.1347265, 33645552, 'escinfantilanjinho@terra.com.br', ''),
(300, 'PRIVADO', 'NI', '5114 EEI CAPELA NAVEGANTES', '5114 CAPELA NAVEGANTES', 'AV GUAIBA', 3955, 'CRISTAL', 91900420, -30.0991831, -51.26444497, 32651955, 'adm31@cpij.org.br', ''),
(301, 'PRIVADO', 'NI', '5115 IEI SANTA ANITA', '5115 SANTA ANITA', 'R MENEZES PAREDES', 425, 'NONOAI', 90830070, -30.0884957, -51.2242941, 32427853, 'creche.santaanita@gmail.com', ''),
(302, 'PRIVADO', 'NI', '5116 IEI COLORINDO MEU DIA', '5116 COLORINDO MEU DIA', 'R JOSE LUIZ MARTINS COSTA', 1001, 'MÁRIO QUINTANA', 91250330, -30.0268234, -51.0983652, 33440043, 'escolinha_colorindomeudia@outlook.com', ''),
(303, 'PRIVADO', 'NI', '5117 EEI NOSSA SENHORA APARECIDA LOT MARIANTE', '5117 EEI NSA LOT MARIANTE', 'R HONDURAS', 19, 'BELÉM VELHO', 91787302, -30.1124293, -51.1529632, 32464002, 'secretariaamnsa2017@gmail.com', ''),
(304, 'PRIVADO', 'NI', '5119 EEI CRIANÇA CIDADÃ', '5119 CRIANÇA CIDADA', 'AV ADELINO FERREIRA JARDIM', 280, 'RUBEM BERTA', 91250310, -30.0209878, -51.1045111, 33665476, 'fliliane67@hotmail.com', ''),
(305, 'PRIVADO', 'NI', '5120 EEI MEDIANEIRA NOSSO SONHO I', '5120 MEDIANEIRA', 'R JARY', 119, 'PASSO DA AREIA', 91350170, -30.0129724, -51.1697539, 32374877, 'escolanossosonho1@yahoo.com.br', ''),
(306, 'PRIVADO', 'NI', '5121 IEI NSA SRA APARECIDA IPANEMA', '5121 N SEN APARECIDA IPANEMA', 'AV TRAMANDAI', 395, 'IPANEMA', 91760050, -30.1342703, -51.2298776, 33776391, 'instituicaoaparecida@gmail.com', ''),
(307, 'PRIVADO', 'NI', '5123 EEI GOTINHAS DE AMOR', '5123 GOTINHAS DE AMOR', 'RUA DRA VERA GLUSMAN KNIJNIK', 40, 'VILA CONCEIÇÃO', 91920073, -30.1209063, -51.2536194, 32223860, 'escolagotinhasdeamor@gmail.com', ''),
(308, 'PRIVADO', 'NI', '5124 EEI ANTONIO GIANELLI - LOT CAVALHADA', '5124 ANTONIO GIANELLI - LOT CA', 'R MONSENHOR RUBEN NEIS', 731, 'CAVALHADA', 91920000, -30.1171493, -51.2310059, 32479194, 'centrosocialagianelli@gmail.com', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
