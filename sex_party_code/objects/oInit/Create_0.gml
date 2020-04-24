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
	yellow
}




global.body[0] = sBody_1;



global.orientation[ori.ace,0] = sOrientation_ace; // 0 mean ace orientation
global.orientation[ori.ace,1] = move.red; // 0 mean blue move
global.orientation[ori.ace,2] = move.blue; // 1 mean red move
global.orientation[ori.ace,3] = move.green; // 2 mean green move
global.orientation[ori.ace,4] = move.yellow; // 3 mean yellow move