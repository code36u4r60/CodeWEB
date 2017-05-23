
//--------      CANVAS 1 - RadialGradient
var canvas = document.getElementById('canvas');
var ctx = canvas.getContext('2d');
var aGradient = ctx.createRadialGradient(20, 20, 10, 50, 50, 70);

aGradient.addColorStop(0, "orange");
aGradient.addColorStop(1, "green");

ctx.fillStyle = aGradient;
ctx.fillRect(10, 10, 100, 100);



//--------      CANVAS 2
var canvas = document.getElementById("canvas2");
var context = canvas.getContext("2d");
context.fillStyle = "white";
context.fillRect(0, 0, 100, 100);


//--------      CANVAS 3
var cav = document.getElementById("canvas3");
var ctx = cav.getContext("2d");

//Adding a shadow
ctx.shadowBlur=40;
ctx.shadowColor="black";

//Linear Gradients 
var lgrad = ctx.createLinearGradient(10,10,100,100);
lgrad.addColorStop(0, "orange");
lgrad.addColorStop(1, "blue");
ctx.fillStyle = lgrad;

ctx.fillRect(0, 0, 150, 150);

//--------      CANVAS Circle
var cavCircle = document.getElementById("circle");
var ctxCircle = cavCircle.getContext("2d");
 ctxCircle.beginPath();
 ctxCircle.arc(100,100,50,0,2*Math.PI);
 ctxCircle.stroke();
 
