#Tiros libres
#Has recibido datos de dos estadísticas adicionales del juego:
#* Tiros libres
#* Intento de tiros libres

#Necesita crear tres gráficos que representen las siguientes ideas:
#* Intentos de Trows gratis por juego
#* Garantía de Trhows gratis
#* Estilo de juego del jugador (preferencia de 2 vs 3 puntos) excluyendo los tiros libres

#* Cada tiro libre vale 1 punto

#Los datos se han proporcionado en forma de vectores. Deberá crear las matrices antes de continuar con el análisis.

#Estaciones
Seasons <- c ("2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")

#Jugadores
Players <- c ("KobeBryant", "JoeJohnson", "LeBronJames", "CarmeloAnthony", "DwightHoward", "ChrisBosh", "ChrisPaul", "KevinDurant", "DerrickRose", "DwayneWade")

#Tiros libres
KobeBryant_FT <- c (696,667,623,483,439,483,381,525,18,196)
JoeJohnson_FT <- c (261,235,316,299,220,195,158,132,159,141)
LeBronJames_FT <- c (601,489,549,594,593,503,387,403,439,375)
CarmeloAnthony_FT <- c (573,459,464,371,508,507,295,425,459,189)
DwightHoward_FT <- c (356,390,529,504,483,546,281,355,349,143)
ChrisBosh_FT <- c (474,463,472,504,470,384,229,241,223,179)
ChrisPaul_FT <- c (394,292,332,455,161,337,260,286,295,289)
KevinDurant_FT <- c (209,209,391,452,756,594,431,679,703,146)
DerrickRose_FT <- c (146,146,146,197,259,476,194,0,27,152)
DwayneWade_FT <- c (629,432,354,590,534,494,235,308,189,284)
#Matriz
#
FreeThrows <- rbind(KobeBryant_FT, JoeJohnson_FT, LeBronJames_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, ChrisPaul_FT, KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)
rm(KobeBryant_FT, JoeJohnson_FT, LeBronJames_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, ChrisPaul_FT, KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)
colnames(FreeThrows) <- Seasons
rownames(FreeThrows) <- Players
FreeThrows
#

# Intentos de tiros libres
KobeBryant_FTA <- c (819,768,742,564,541,583,451,626,21,241)
JoeJohnson_FTA <- c (330,314,379,362,269,243,186,161,195,176)
LeBronJames_FTA <- c (814,701,771,762,773,663,502,535,585,528)
CarmeloAnthony_FTA <- c (709,568,590,468,612,605,367,512,541,237)
DwightHoward_FTA <- c (598,666,897,849,816,916,572,721,638,271)
ChrisBosh_FTA <- c (581,590,559,617,590,471,279,302,272,232)
ChrisPaul_FTA <- c (465,357,390,524,190,384,302,323,345,321)
KevinDurant_FTA <- c (256,256,448,524,840,675,501,750,805,171)
DerrickRose_FTA <- c (205,205,205,250,338,555,239,0,32,187)
DwayneWade_FTA <- c (803,535,467,771,702,652,297,425,258,370)
#Matriz
#
FreeThrowsAttempts <- rbind(KobeBryant_FTA, JoeJohnson_FTA, LeBronJames_FTA, CarmeloAnthony_FTA, DwightHoward_FTA, ChrisBosh_FTA, ChrisPaul_FTA, KevinDurant_FTA, DerrickRose_FTA, DwayneWade_FTA)
rm(KobeBryant_FTA, JoeJohnson_FTA, LeBronJames_FTA, CarmeloAnthony_FTA, DwightHoward_FTA, ChrisBosh_FTA, ChrisPaul_FTA, KevinDurant_FTA, DerrickRose_FTA, DwayneWade_FTA)
colnames(FreeThrowsAttempts) <- Seasons
rownames(FreeThrowsAttempts) <- Players
FreeThrowsAttempts

#

#Games 
KobeBryant_G <- c(80,77,82,82,73,82,58,78,6,35)
JoeJohnson_G <- c(82,57,82,79,76,72,60,72,79,80)
LeBronJames_G <- c(79,78,75,81,76,79,62,76,77,69)
CarmeloAnthony_G <- c(80,65,77,66,69,77,55,67,77,40)
DwightHoward_G <- c(82,82,82,79,82,78,54,76,71,41)
ChrisBosh_G <- c(70,69,67,77,70,77,57,74,79,44)
ChrisPaul_G <- c(78,64,80,78,45,80,60,70,62,82)
KevinDurant_G <- c(35,35,80,74,82,78,66,81,81,27)
DerrickRose_G <- c(40,40,40,81,78,81,39,0,10,51)
DwayneWade_G <- c(75,51,51,79,77,76,49,69,54,62)
#Matrix
Games <- rbind(KobeBryant_G, JoeJohnson_G, LeBronJames_G, CarmeloAnthony_G, DwightHoward_G, ChrisBosh_G, ChrisPaul_G, KevinDurant_G, DerrickRose_G, DwayneWade_G)
rm(KobeBryant_G, JoeJohnson_G, CarmeloAnthony_G, DwightHoward_G, ChrisBosh_G, LeBronJames_G, ChrisPaul_G, DerrickRose_G, DwayneWade_G, KevinDurant_G)
colnames(Games) <- Seasons
rownames(Games) <- Players

#Field Goals
KobeBryant_FG <- c(978,813,775,800,716,740,574,738,31,266)
JoeJohnson_FG <- c(632,536,647,620,635,514,423,445,462,446)
LeBronJames_FG <- c(875,772,794,789,768,758,621,765,767,624)
CarmeloAnthony_FG <- c(756,691,728,535,688,684,441,669,743,358)
DwightHoward_FG <- c(468,526,583,560,510,619,416,470,473,251)
ChrisBosh_FG <- c(549,543,507,615,600,524,393,485,492,343)
ChrisPaul_FG <- c(407,381,630,631,314,430,425,412,406,568)
KevinDurant_FG <- c(306,306,587,661,794,711,643,731,849,238)
DerrickRose_FG <- c(208,208,208,574,672,711,302,0,58,338)
DwayneWade_FG <- c(699,472,439,854,719,692,416,569,415,509)
#Matrix
FieldGoals <- rbind(KobeBryant_FG, JoeJohnson_FG, LeBronJames_FG, CarmeloAnthony_FG, DwightHoward_FG, ChrisBosh_FG, ChrisPaul_FG, KevinDurant_FG, DerrickRose_FG, DwayneWade_FG)
rm(KobeBryant_FG, JoeJohnson_FG, LeBronJames_FG, CarmeloAnthony_FG, DwightHoward_FG, ChrisBosh_FG, ChrisPaul_FG, KevinDurant_FG, DerrickRose_FG, DwayneWade_FG)
colnames(FieldGoals) <- Seasons
rownames(FieldGoals) <- Players

#Field Goal Attempts
KobeBryant_FGA <- c(2173,1757,1690,1712,1569,1639,1336,1595,73,713)
JoeJohnson_FGA <- c(1395,1139,1497,1420,1386,1161,931,1052,1018,1025)
LeBronJames_FGA <- c(1823,1621,1642,1613,1528,1485,1169,1354,1353,1279)
CarmeloAnthony_FGA <- c(1572,1453,1481,1207,1502,1503,1025,1489,1643,806)
DwightHoward_FGA <- c(881,873,974,979,834,1044,726,813,800,423)
ChrisBosh_FGA <- c(1087,1094,1027,1263,1158,1056,807,907,953,745)
ChrisPaul_FGA <- c(947,871,1291,1255,637,928,890,856,870,1170)
KevinDurant_FGA <- c(647,647,1366,1390,1668,1538,1297,1433,1688,467)
DerrickRose_FGA <- c(436,436,436,1208,1373,1597,695,0,164,835)
DwayneWade_FGA <- c(1413,962,937,1739,1511,1384,837,1093,761,1084)
#Matrix
FieldGoalAttempts <- rbind(KobeBryant_FGA, JoeJohnson_FGA, LeBronJames_FGA, CarmeloAnthony_FGA, DwightHoward_FGA, ChrisBosh_FGA, ChrisPaul_FGA, KevinDurant_FGA, DerrickRose_FGA, DwayneWade_FGA)
rm(KobeBryant_FGA, JoeJohnson_FGA, LeBronJames_FGA, CarmeloAnthony_FGA, DwightHoward_FGA, ChrisBosh_FGA, ChrisPaul_FGA, KevinDurant_FGA, DerrickRose_FGA, DwayneWade_FGA)
colnames(FieldGoalAttempts) <- Seasons
rownames(FieldGoalAttempts) <- Players

#Points
KobeBryant_PTS <- c(2832,2430,2323,2201,1970,2078,1616,2133,83,782)
JoeJohnson_PTS <- c(1653,1426,1779,1688,1619,1312,1129,1170,1245,1154)
LeBronJames_PTS <- c(2478,2132,2250,2304,2258,2111,1683,2036,2089,1743)
CarmeloAnthony_PTS <- c(2122,1881,1978,1504,1943,1970,1245,1920,2112,966)
DwightHoward_PTS <- c(1292,1443,1695,1624,1503,1784,1113,1296,1297,646)
ChrisBosh_PTS <- c(1572,1561,1496,1746,1678,1438,1025,1232,1281,928)
ChrisPaul_PTS <- c(1258,1104,1684,1781,841,1268,1189,1186,1185,1564)
KevinDurant_PTS <- c(903,903,1624,1871,2472,2161,1850,2280,2593,686)
DerrickRose_PTS <- c(597,597,597,1361,1619,2026,852,0,159,904)
DwayneWade_PTS <- c(2040,1397,1254,2386,2045,1941,1082,1463,1028,1331)
#Matrix
Points <- rbind(KobeBryant_PTS, JoeJohnson_PTS, LeBronJames_PTS, CarmeloAnthony_PTS, DwightHoward_PTS, ChrisBosh_PTS, ChrisPaul_PTS, KevinDurant_PTS, DerrickRose_PTS, DwayneWade_PTS)
rm(KobeBryant_PTS, JoeJohnson_PTS, LeBronJames_PTS, CarmeloAnthony_PTS, DwightHoward_PTS, ChrisBosh_PTS, ChrisPaul_PTS, KevinDurant_PTS, DerrickRose_PTS, DwayneWade_PTS)
colnames(Points) <- Seasons
rownames(Points) <- Players


# Hit 1 para el estilo de juego del jugador (Puntos - FreeThrows) / FieldGoals

# Presiona 2 llena los espacios en blanco

#Matriz para tiros libres
#Enlaza los vectores dados para formar la matriz
 FreeThrows <- _ (KobeBryant_FT, JoeJohnson_FT, LeBronJames_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, ChrisPaul_FT, KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)
#Eliminar vectores - ya no los necesitamos
_ (KobeBryant_FT, JoeJohnson_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, LeBronJames_FT, ChrisPaul_FT, DerrickRose_FT, DwayneWade_FT, KevinDurant_FT)
# Cambiar el nombre de las columnas
_ (FreeThrows) <- _
# Cambiar el nombre de las filas
_ (FreeThrows) <- _

#Revisa la matriz
Tiros libres

#Matriz para intentos de tiros libres
#Enlaza los vectores dados para formar la matriz
FreeThrowAttempts <- _ (KobeBryant_FTA, JoeJohnson_FTA, LeBronJames_FTA, CarmeloAnthony_FTA, DwightHoward_FTA, ChrisBosh_FTA, ChrisPaul_FTA, KevinDurant_FTA, DerrickRose_FTA, DwayneWade_FTA)
#Eliminar vectores - ya no los necesitamos
_ (KobeBryant_FTA, JoeJohnson_FTA, CarmeloAnthony_FTA, DwightHoward_FTA, ChrisBosh_FTA, LeBronJames_FTA, ChrisPaul_FTA, DerrickRose_FTA, DwayneWade_FTA, KevinDurant_FTA)
# Cambiar el nombre de las columnas
_ (FreeThrowAttempts) <- _
# Cambiar el nombre de las filas
_ (FreeThrowAttempts) <- _

#Revisa la matriz
Intentos de tiro libre

# Vuelva a crear la función de trazado
myplot <- function (z, who = 1: 10) {
  matplot (t (z [who ,, drop = F]), type = "b", pch = 15: 18, col = c (1: 4,6), main = "Basketball Players Analysis")
  legend ("bottomleft", inset = 0.01, legend = Players [who], col = c (1: 4,6), pch = 15: 18, horiz = F)
}

#Visualizar las nuevas matrices
myplot(FreeThrows)
myplot(FreeThrowsAttempts)

# Parte 1 - Intentos de tiros libres por juego
# (Necesitarás la matriz de juegos)
myplot (FreeThrowsAttempts / Games)
# Fíjate cómo Chris Paul tiene pocos intentos por juego

# Parte 2 - Precisión en los tiros libres
myplot (FreeThrows / FreeThrowsAttempts)
#Y, sin embargo, la precisión de Chris Paul es una de las más altas
# Es probable que su equipo obtenga más puntos si tuviera más TLC
# También observe que la precisión de FT de Dwight Howard es extremadamente pobre
# en comparación con otros jugadores. Si recuerdas, Dwight Howard's
La precisión de los goles de campo fue excepcional:
  myplot (FieldGoals / FieldGoalAttempts)
#¿Cómo podría ser esto? ¿Por qué hay una diferencia tan drástica?
# Veremos justo ahora ...

# Parte 3 - Patrones de estilo del jugador que excluyen los tiros libres
myplot ((Points-FreeThrows) / FieldGoals)
#Porque hemos excluido los tiros libres, esta trama ahora nos muestra
# la verdadera representación del cambio de estilo del jugador. Podemos verificar
#que este es el caso porque todas las marcas sin excepción
# en este gráfico están entre 2 y 3. Eso se debe a que los objetivos de campo
# solo puede ser para 2 puntos o 3 puntos.
#Perspectivas:
# 1. Puedes ver la preferencia de los jugadores por tiros de 2 o 3 puntos.
# cambios a lo largo de su carrera. Podemos ver que casi todos
# jugadores de este conjunto de datos experimentan con su estilo en todo
# sus carreras. Quizás, el cambio de estilo más drástico ha
# sido experimentado por Joe Johnson.
# 2. Hay una excepción. Puedes ver que un jugador no ha
# cambió su estilo en absoluto, casi siempre anotando