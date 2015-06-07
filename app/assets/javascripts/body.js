/**
 * Created by sidneyeubanks on 6/7/15.
 */

function init() {
    var canvas = document.getElementsByTagName('canvas')[0];
    var context = canvas.getContext('2d');
    var x, y, r, dx, dy;

    //Sets the width and height of the canvas to fit the window
    var ctx = document.getElementById("canvas");
    ctx.width = window.outerWidth;
    ctx.height = window.innerHeight;

    var circles = [
        {x: 0, y: 0, r: 0, vx: 0, vy: 0},
        {x: 0, y: 0, r: 0, vx: 0, vy: 0},
        {x: 0, y: 0, r: 0, vx: 0, vy: 0},
        {x: 0, y: 0, r: 0, vx: 0, vy: 0},
        {x: 0, y: 0, r: 0, vx: 0, vy: 0},
        {x: 0, y: 0, r: 0, vx: 0, vy: 0}];

    for(var i = 0; i < circles.length; i++) {
        x = Math.floor((Math.random() * window.innerWidth) + 1);// These set the coordinates of the starting circle
        y = Math.floor((Math.random() * window.innerHeight) + 1);// to a random position
        r = Math.floor((Math.random() * 80) + 60);//Sets radius of circle
        dx = (Math.random() * (0.20 - 0.01) + 0.01); //Set the velocity on x-axis
        dy = (Math.random() * (0.20 - 0.01) + 0.01); //These set the velocity on y-axis

        circles[i].y = y;
        circles[i].x = x;
        circles[i].r = r;
        circles[i].vx = dx;
        circles[i].vy = dy;
    }

    function draw() {

        context.clearRect(0,0,window.innerWidth,window.innerHeight);

        for(var i = 0; i <circles.length; i++) {
            context.fillStyle = 'hsl(' + circles[i].color + ',100%,50%)';
            context.beginPath();
            context.fillStyle = "rgba(255, 255, 255, 0.15)";
            context.arc(circles[i].x, circles[i].y, circles[i].r, 0, 2 * Math.PI, false);
            context.fill();

            if ((circles[i].x + circles[i].vx + circles[i].r > window.innerWidth) ||
                (circles[i].x - circles[i].r + circles[i].vx < 0)) { circles[i].vx = -circles[i].vx; }

            if ((circles[i].y + circles[i].vy + circles[i].r > window.innerHeight) ||
                (circles[i].y - circles[i].r + circles[i].vy < 0)) {circles[i].vy = -circles[i].vy;}

            circles[i].x += circles[i].vx;
            circles[i].y += circles[i].vy;
        }
        requestAnimationFrame(draw);    // start
    }
    requestAnimationFrame(draw); // loop here
}
