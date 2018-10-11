# Elegidos
## Ejercicio integrador

![](elegidos.jpg)

**Cansados de construir software, ahora nos dedicamos a la música, a cantar y a bailar. En la búsqueda del mejor artista vemos que el jurado no se pone de acuerdo y  que necesita ayuda para determinar con precisión y justicia al ganador, por lo que sin olvidar los viejos hábitos, planteamos una solución en el paradigma de objetos.**

El programa consta de un jurado conformado por varios jueces invitados, quienes escuchan a todos los cantantes y deciden si votan a cada uno de ellos de forma positiva o negativa, según su propio criterio. Cada voto positivo vale 10 puntos y los votos negativos restan la mitad.

- Los jueces machirulos votan positivamente a las cantantes jóvenes. 
- Los tradicionalistas votan de forma positiva si el género elegido por el cantante es propio de nuestro país (por ejemplo el folklore y el tango).
- Los técnicos prefieren a aquellos artistas cuya presentación encaja con el género elegido.

También el público forma parte del jurado, pero cada voto positivo vale 2 puntos y en caso negativo resta la mitad. Hay quienes se identifican con alguno de los jueces invitados y deciden cómo votar utilizando su mismo criterio; el resto decide siempre votar positivamente.

De los cantantes se conocen los datos personales como así también la indumentaria que usan, la forma de bailar, si afinaron o no y la canción elegida. De toda canción se conoce su autor y género al que pertenece

La apariencia esperada para cada género es la siguiente:

- folklore: tiene que usar poncho y un calzado típico como alpargatas o botas.
- tango: el artista debe tener más de 50 años, usar sombrero y ser afinado
- cumbia: no es necesario que sea afinado, basta con que baile bien
- pop: siempre encaja

La composición del jurado se va modificando con el tiempo, tanto los invitados como el público. Los cantantes, con el tiempo, también pueden ir cambiando la canción, del mismo u otro género que la anterior, y obviamente también pueden variar su vestimenta y su performance. 


### Lo que se necesita realizar es:
- Encontrar al cantante ganador en un determinado momento, teniendo en cuenta a todos los cantantes con sus respectivas canciones, y de acuerdo a la cantidad total de puntos que le otorgan todos los integrantes del jurado.
- Hacer un test, que valide la cantidad total de puntos que recibe un cantante de todos los miembros del jurado (al menos dos).
- Explicar la utilidad del concepto de herencia en la solución
