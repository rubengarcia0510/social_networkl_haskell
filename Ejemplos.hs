-- Ejemplos
module Ejemplos
where
import Redsocial


usuario1 = (1, "Juan")
usuario2 = (2, "Natalia")
usuario3 = (3, "Pedro")
usuario4 = (4, "Mariela")
usuario5 = (5, "Natalia")

relacion1_2 = (usuario1, usuario2)
relacion1_3 = (usuario1, usuario3)
relacion1_4 = (usuario4, usuario1) -- Notar que el orden en el que aparecen los usuarios es indistinto
relacion2_3 = (usuario3, usuario2)
relacion2_4 = (usuario2, usuario4)
relacion3_4 = (usuario4, usuario3)

publicacion1_1 = (usuario1, "Este es mi primer post", [usuario2, usuario4])
publicacion1_2 = (usuario1, "Este es mi segundo post", [usuario4])
publicacion1_3 = (usuario1, "Este es mi tercer post", [usuario2, usuario4])
publicacion1_4 = (usuario1, "Este es mi cuarto post", [])

publicacion2_1 = (usuario2, "Hello World", [usuario4])
publicacion2_2 = (usuario2, "Good Bye World", [usuario1, usuario4])

publicacion3_1 = (usuario3, "Lorem Ipsum", [])
publicacion3_2 = (usuario3, "dolor sit amet", [usuario2])
publicacion3_3 = (usuario3, "consectetur adipiscing elit", [usuario2, usuario4])

publicacion4_1 = (usuario4, "I am Alice. Not", [usuario1, usuario2])
publicacion4_2 = (usuario4, "I am Bob", [])
publicacion4_3 = (usuario4, "Just kidding, i am Mariela", [usuario1, usuario3])


usuariosA = [usuario1, usuario2, usuario3, usuario4]
relacionesA = [relacion1_2, relacion1_4, relacion2_3, relacion2_4, relacion3_4]
publicacionesA = [publicacion1_1, publicacion1_2, publicacion2_1, publicacion2_2, publicacion3_1, publicacion3_2, publicacion4_1, publicacion4_2]
redA = (usuariosA, relacionesA, publicacionesA)

usuariosB = [usuario1, usuario2, usuario3, usuario5]
relacionesB = [relacion1_2, relacion2_3]
publicacionesB = [publicacion1_1, publicacion1_2, publicacion1_3, publicacion1_4, publicacion3_1, publicacion3_2, publicacion3_3]
redB = (usuariosB, relacionesB, publicacionesB)


{-
Tests:
======
nombresDeUsuarios redA ~~~> {Juan, Natalia, Pedro, Mariela}
amigosDe redA usuario1 ~~~> {usuario2, usuario4}
amigosDe redA usuario1 ~~~> {usuario1, usuario3, usuario4}
amigosDe redA usuario4 ~~~> {usuario2, usuario1, usuario3}
cantidadDeAmigos redA usuario1 ~~~> 2
Notar que para usuarioConMasAmigos podría haber más de un resultado válido.
usuarioConMasAmigos redA == usuario2 || usuarioConMasAmigos redA == usuario4 ~~~> True
estaRobertoCarlos redA ~~~> False
publicacionesDe redA usuario2 ~~~> {publicacion2_1, publicacion2_2}
publicacionesQueLeGustanA redA usuario1 ~~~> {publicacion2_2, publicacion4_1}
lesGustanLasMismasPublicaciones redB usuario1 usuario2 ~~~> False
tieneUnSeguidorFiel redA usuario1 ~~> True
tieneUnSeguidorFiel redA usuario2 ~~> True
tieneUnSeguidorFiel redA usuario3 ~~> False
existeSecuenciaDeAmigos redA usuario1 usuario3 ~~~> True
----
nombresDeUsuarios redB ~~~> {Juan, Pedro, Natalia}
amigosDe redB usuario1 ~~~> {usuario2}
amigosDe redB usuario2 ~~~> {usuario1, usuario3}
amigosDe redB usuario3 ~~~> {usuario2}
amigosDe redB usuario5 ~~~> {}
cantidadDeAmigos redB usuario1 ~~~> 1
cantidadDeAmigos redB usuario2 ~~~> 2
cantidadDeAmigos redB usuario3 ~~~> 1
cantidadDeAmigos redB usuario5 ~~~> 0
usuarioConMasAmigos redB ~~~> usuario2
estaRobertoCarlos redB ~~~> False
publicacionesDe redB usuario1 ~~~> {publicacion1_1, publicacion1_2, publicacion1_3, publicacion1_4}
publicacionesDe redB usuario2 ~~~> {}
publicacionesDe redB usuario3 ~~~> {publicacion3_1, publicacion3_2, publicacion3_3}
publicacionesDe redB usuario5 ~~~> {}
publicacionesQueLeGustanA redB usuario1 ~~~> {}
publicacionesQueLeGustanA redB usuario2 ~~~> {publicacion1_1, publicacion1_3, publicacion3_2, publicacion3_3}
publicacionesQueLeGustanA redB usuario3 ~~~> {}
publicacionesQueLeGustanA redB usuario5 ~~~> {}
lesGustanLasMismasPublicaciones redB usuario1 usuario3 ~~~> True
lesGustanLasMismasPublicaciones redB usuario1 usuario2 ~~~> False
tieneUnSeguidorFiel redB usuario1 ~~> False
tieneUnSeguidorFiel redB usuario2 ~~> False
tieneUnSeguidorFiel redB usuario3 ~~> False
tieneUnSeguidorFiel redB usuario5 ~~> False
existeSecuenciaDeAmigos redB usuario1 usuario3 ~~~> True
existeSecuenciaDeAmigos redB usuario1 usuario5 ~~~> False
-}