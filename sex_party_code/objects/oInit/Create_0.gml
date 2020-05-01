randomise();

enum ori
{
	ace,
	gay
}
enum move
{
	light_gray,
	white,
	pink,
	purple,
	dark_purple,
	light_purple,
	yellow,
	bright_yellow,
	cyan,
	light_orange,
	light_green,
	blue,
	pamplemousse
}

enum menu
{
	name,
	body,
	orientation,
	ready
}


global.body[0] = sBody_1;
global.body[1] = sBody_2;
global.body[2] = sBody_3;


global.state[0] = "start";
global.state[1] = "start";
global.state[2] = "start";
global.state[3] = "start";

//orientation & move

//ace
global.orientation[ori.ace] = sOrientation_ace; 
global.ori_move[ori.ace,0] = move.red;
global.ori_move[ori.ace,1] = move.blue; 
global.ori_move[ori.ace,2] = move.green;
global.ori_move[ori.ace,3] = move.purple;
global.ori_move[ori.ace,4] = move.pink;


//gay
global.orientation[ori.gay] = sOrientation_gay;
global.ori_move[ori.gay,0] = move.red;
global.ori_move[ori.gay,1] = move.blue; 
global.ori_move[ori.gay,2] = move.green; 
global.ori_move[ori.gay,3] = move.yellow;

//show_debug_message(" move length : " + string(array_length_2d(global.move,ori.ace)));

global.name = split_string(
"Max,Vubil,Alex,Ilo,Geoffroy,Camille,Time,Ferdinant,Hades,Locki,Bertine,Lou,Felix,Pathauton,Bob,Sybile,Orbille,Cleyton,Eliot,Gabriel,Morgane,Loup,"+
"Anastase,Arion,Sam,Louison,Issac,Gae,Fae,Lesbian-lord,Gay-lord,Cyprina,Semencio,Altea,Athena,Pommezed,Demetrius,Euphemia,Cleo,Dovie,Iris,Leaf,"+
"Similiant,LaSoleil,LeLune,Olivier,Brearalch,Arizona,Sieste,Stormagedon,PussyEater,Fatigay,Wingardium-leviosa,Aphrobite,Transypirne,Transtastique,Bearyfiant,"+
"Lesbichette,Acifluyde,Hetenul,Man-crusher,Pantheon,Assdestructor,Titi,Leroidlapipe,Prout,Barnabie,Liza,Disco-Glam,Jodariel,Moxxy,Satrans666,BaronDuDjender,"+
"HSBC-Slayer,Mirmidon,Gilles-Stella,Dramabulle,Bulle,Ocean,Flora_Tris,Rosa_Lux,,Louise_Michel,Anna,Anthropy,Porpentine,Ashley,BDG,BFG9000"
,",");



global.player_info [0,0] = 0; //body
global.player_info [0,1] = ori.ace; //orientation
global.player_info [0,2] = ""; //name
global.player_info [0,3] = false; //player existe ? 
global.player_info [1,0] = 0;
global.player_info [1,1] = ori.ace;
global.player_info [1,2] = "";
global.player_info [1,3] = false;
global.player_info [2,0] = 0
global.player_info [2,1] = ori.ace;
global.player_info [2,2] = "";
global.player_info [2,3] = false;
global.player_info [3,0] = 0;
global.player_info [3,1] = ori.ace;
global.player_info [3,2] = "";
global.player_info [3,3] = false;


show_debug_message(" name length : " + string(array_length_1d(global.name)));