var orange = 100;
var apple = 120;

if(orange < apple){
	alert("みかんの値段がリンゴより安い");
}
else if(orange == apple){
	alert("みかんとリンゴが同じ値段");
}
else{
	alert("みかんの値段がリンゴより高い");
}

var max = 100;
var num = 1;
var count = 0;

while(num < max){
	num = num * 2;
	count = count + 1;
}
alert("２を掛け続けて" + max + "を超えるのに必要だった回数は" + count + "回です");

var i;
var numbar1 = 0;

for(i = 1; i < 11; i++){
	numbar1 = numbar1 + i;
}
alert("１から１０まで足し算した結果は" + numbar1 + "です");

var a = 50;
var numbar2 = 100;
alert("100-50=" + (numbar2-a));

var height = 178;
var weight = 75;
var BMI = weight / ((height * height /10000));
alert("あなたの身長は" + height + "cmであなたの体重は" + weight + 
	"kgです。BMIの計算は体重/((身長*身長/10000なので、あなたのBMIは" + BMI + "です。");