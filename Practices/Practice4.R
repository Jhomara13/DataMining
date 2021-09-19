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
Temporadas <- c ("2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")

#Jugadores
Jugadores <- c ("KobeBryant", "JoeJohnson", "LeBronJames", "CarmeloAnthony", "DwightHoward", "ChrisBosh", "ChrisPaul", "KevinDurant", "DerrickRose", "DwayneWade")

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
# <ponga su código aquí>
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
# <ponga su código aquí>
#

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
  legend ("bottomleft", inset = 0.01, legend = Players [quién], col = c (1: 4,6), pch = 15: 18, horiz = F)
}

#Visualizar las nuevas matrices
_(Tiros libres)
_ (FreeThrowAttempts)

# Parte 1 - Intentos de tiros libres por juego
# (Necesitarás la matriz de juegos)
myplot (_ / _)
# Fíjate cómo Chris Paul tiene pocos intentos por juego

# Parte 2 - Precisión en los tiros libres
myplot (_ / _)
#Y, sin embargo, la precisión de Chris Paul es una de las más altas
# Es probable que su equipo obtenga más puntos si tuviera más TLC
# También observe que la precisión de FT de Dwight Howard es extremadamente pobre
# en comparación con otros jugadores. Si recuerdas, Dwight Howard's
La precisión de los goles de campo fue excepcional:
  myplot (FieldGoals / FieldGoalAttempts)
#¿Cómo podría ser esto? ¿Por qué hay una diferencia tan drástica?
# Veremos justo ahora ...

# Parte 3 - Patrones de estilo del jugador que excluyen los tiros libres
myplot ((_-_) / _)
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