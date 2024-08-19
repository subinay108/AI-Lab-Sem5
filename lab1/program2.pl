/*
1. Ananya is singing
2. Ananya sings whenever she listens to music
3. When Ananya sings she is happy
4. Rohit is singing
5. Rohit plays Guitar when he sings
*/

sings(ananya).
sings(rohit).

plays_guiter(rohit, guiter).

listen_music(ananya):- sings(ananya).
happy(ananya):- sings(ananya).

plays_guiter(rohit):- sings(rohit).

