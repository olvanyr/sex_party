# sex_party
a game about sex, queer and consent


je dois connaitre quatres variable pour chaque appuies de bouton :
la couleur de l'aura, l'émiteur, le recepteur, le moment de la création   éventuellement le nombre de call de l'aura 

Si quand le bouton est appuyer aucun joueur n'est proche, je peu ne pas le stoquer 
Si quand le bouton est appuyé par j1 si j2 ne possaide pas la couleur, add +1 to the non consent counter, un timer le remt a Zéro, et il est reset a chaque misbeahve


une ds_grid pourrais marcher

x = temps de création (le timer in-game)
y = toute les autres info j1 j2 couleur

a chaque frame, je regarde dans la liste, et les info trop vielles sont suprimée


ouuuuuuu

quand tu appuye, ça crée une aura, si on rappuie, ça crée une autres aura, les auras si il y a deux aura bleu, le j1 qui a appuyais deux fois a un compteur bleu = 2;

dans le player step 
instance creat blablabla 
	blue += 1;

dans l'aura beginstep : 

when instance destroy 
if creator.blue > 0 creator.blue -= 1;

les aura peuvent avoir une vie assez courte

Quand tu appuie sur une aura, on vérifie qu'il n'y a pas de joueur proches, si il y en a un, on regarde le compteur de la même couleur, si les deux compteur sont supérieur a 3 par exemple, on ajoute un au deux 


se code serra dupliquée pour chaque couleur d'aura

if other.blue >= 3 && blue >= 3 
{
	score ++;
	other.score ++;
	blue = 0;
	other.blue= 0;
}
il faut aussi trouver un moyens de delet les aura si un point est marqué 


Si j1 appuye sur bleu, et mais que j2 non et qu'il y a colision

if other.bleu > 3 && blue <2
{
	other.score
}

ou, je fais un objet qui regarde tout, et qui dis que si deux player ont un score d'une même couleur supérieur a 3, on regarde si ils sont proche ou pas 


but du jeu : 

le but du jeux est d'aller vers d'autres personnes et de presser un bouton corespondant a un move, lme but est que l'autre appuie sur le même bouton au même moment, si l'acction est répété plusieurs foi, il y a eu du sex consenti, et otu le monde marque 1 point
Attention, si tu utilise tout le temps le même move, tu peu te sentire fatiguer, et le moove marchera moins bien 
vous pouvez parler pour annoncer quelle move vous vouez faire avec qui, le consentement, ça passe aussi par la parole 