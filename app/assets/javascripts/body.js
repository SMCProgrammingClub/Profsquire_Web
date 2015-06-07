/**
 * Created by sidneyeubanks on 6/7/15.
 */


var context;
var w = window.innerWidth;//Sets w to the width of the window
var h = window.innerHeight;//Sets h to the height of the window
var x=Math.floor((Math.random() * w) + 1);// These set the Coordinates of the starting circle
var y=Math.floor((Math.random() * h) + 1);// to a random position
var dx = (Math.random() * (0.20 - 0.01) + 0.01); //These set the speed and the random path
var dy = (Math.random() * (0.20 - 0.01) + 0.01); //the circles move in

// Set the circle to move in a specific direction of the circles made path
switch(Math.floor((Math.random() * 3) + 1)) {
    case 1:
        dx *= -1;
        dy *= -1;
        break;
    case 2:
        dx *= -1;
        break;
    case 3:
        dy *= -1;
        break;
    default:
        dx=.15;
        dy=.15;
}

// supposed to set the canvas to the size of the window, not working correctly
function windowsize(){
    var ctx = document.getElementById("canvas");
    ctx.width = window.outerWidth;
    ctx.height = window.innerHeight;
    //$('#canvas').css('background-color', 'rgba(158, 167, 184, 0.2)');
}

function init() {
    context = canvas.getContext('2d');
    windowsize();
    requestAnimationFrame(draw);    // start, see below
}

function draw() {
    context.clearRect(0, 0, w, h);
    context.beginPath();
    context.fillStyle = "rgba(255, 255, 255, 0.15)";
    // Draws a circle of radius 60 at the coordinates x, y on the canvas
    context.arc(x, y, 60, 0, Math.PI * 2, true);
    context.fill();

    // Boundary Logic
    if (x < 0 || x > w) dx = -dx;
    if (y < 0 || y > h) dy = -dy;
    x += dx;
    y += dy;

    requestAnimationFrame(draw);    // loop here
}

//for (i = 0; i < 6; i++){

//}
//x=Math.floor((Math.random() * 600) + 1);;
//y=Math.floor((Math.random() * 600) + 1);;
