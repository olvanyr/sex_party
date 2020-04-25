enum ori
{
	ace,
	gay
}
enum move
{
	blue,
	red,
	green,
	yellow,
	purple
}

enum menu
{
	body,
	orientation,
	name
}




global.body[0] = sBody_1;
global.body[1] = sBody_2;
global.body[2] = sBody_3;



global.orientation[ori.ace,0] = sOrientation_ace; // 0 mean ace orientation
global.orientation[ori.ace,1] = move.red; // 0 mean blue move
global.orientation[ori.ace,2] = move.blue; // 1 mean red move
global.orientation[ori.ace,3] = move.green; // 2 mean green move
global.orientation[ori.ace,4] = move.purple; // 3 mean yellow move
global.orientation[ori.gay,0] = sOrientation_gay; // 0 mean ace orientation
global.orientation[ori.gay,1] = move.red; // 0 mean blue move
global.orientation[ori.gay,2] = move.blue; // 1 mean red move
global.orientation[ori.gay,3] = move.green; // 2 mean green move
global.orientation[ori.gay,4] = move.purple; // 3 mean yellow move

global.name = split_string(
"Max,Vubil,Alex,Ilo,Geoffroy,Time,Ferdinant,Hades,Locki,Bertine,Lou,Felix,Pathauton,Bob,Sybile,Orbille,Cleyton,Eliot,Gabriel,Morgane,Loup,"+
"Anastase,Arion,Sam,Louison,Issac,Gae,Fae,Lesbian-lord,Gay-lord,Cyprina,Semencio,Altea,Athena,Pommezed,Demetrius,Euphemia,Cleo,Dovie,Iris,Leaf,"+
"Similiant,LaSoleil,LeLune,Brearalch,Arizona,Sieste,Stormagedon,PussyEater,Fatigay,Wingardium-leviosa,Aphrobite,Transypirne,Transtastique,Bearyfiant,"+
"Lesbichette,Acifluyde,Hetenul,Man-crusher,Pantheon,Assdestructor,Titi,Leroidlapipe,Prout"
,",");

show_debug_message(" name length : " + string(array_length_1d(global.name)));