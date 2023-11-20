<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Simple 2D Cat</title>
  <style>
    canvas {
      border: 1px solid #000;
    }
  </style>
</head>
<body>
  <canvas id="Canvas" width="400" height="400"></canvas>

  <script>
    const canvas = document.getElementById('Canvas');
    const ctx = canvas.getContext('2d');

  ctx.fillStyle = 'gray';
    ctx.fillRect(0, 0, canvas.width, canvas.height);


    // Head
    ctx.beginPath();
    ctx.ellipse(200, 200, 75, 60, 0, 0, 2 * Math.PI);
    ctx.fillStyle = 'black';
    ctx.fill();

    // EyeLeft
    ctx.beginPath();
    ctx.ellipse(170, 180, 10, 4, 0, 0, 2 * Math.PI);
    ctx.fillStyle = 'yellow';
    ctx.fill();

    // EyeLeftBG
    ctx.beginPath();
    ctx.ellipse(170, 180, 2, 4, 0, 0, 2 * Math.PI);
    ctx.fillStyle = 'black';
    ctx.fill();

    // EyeRight
    ctx.beginPath();
    ctx.ellipse(225, 180, 10, 4, 0, 0, 2 * Math.PI);
    ctx.fillStyle = 'yellow';
    ctx.fill();

    // EyeRightBG
    ctx.beginPath();
    ctx.ellipse(225, 180, 2, 4, 0, 0, 2 * Math.PI);
    ctx.fillStyle = 'black';
    ctx.fill();




// Set the Y-offset to move the triangles down
var yOffset = 70;
var xOffset = 60;

// Draw the outer black triangle (smaller and pointier, moved down)
ctx.fillStyle = "black";
ctx.beginPath();
ctx.moveTo(70 + xOffset, 110 + yOffset);
ctx.lineTo(83.33 + xOffset, 30 + yOffset);
ctx.lineTo(116.67 + xOffset, 83.33 + yOffset);
ctx.closePath();
ctx.fill();

// Draw the inner red triangle (smaller, moved down)
ctx.fillStyle = "red";
ctx.beginPath();
ctx.moveTo(80 + xOffset, 90 + yOffset);
ctx.lineTo(86 + xOffset, 46 + yOffset);
ctx.lineTo(100 + xOffset, 74 + yOffset);
ctx.closePath();
ctx.fill();


var xOffset2 = 140;
var yOffset2 = 75;

// Draw the outer black triangle (smaller and pointier, moved down)
ctx.fillStyle = "black";
ctx.beginPath();
ctx.moveTo(90 + xOffset2, 80 + yOffset2);
ctx.lineTo(125 + xOffset2, 20 + yOffset2);
ctx.lineTo(130 + xOffset2, 110 + yOffset2);
ctx.closePath();
ctx.fill();

// Draw the inner red triangle (smaller, moved down)
ctx.fillStyle = "red";
ctx.beginPath();
ctx.moveTo(105 + xOffset2, 74 + yOffset2);
ctx.lineTo(123 + xOffset2, 90 + yOffset2);
ctx.lineTo(120 + xOffset2, 40 + yOffset2);
ctx.closePath();
ctx.fill();



var whiskerOffsetx = -10


function drawWhisker(startX, startY, endX, endY) {
      ctx.beginPath();
      ctx.moveTo(startX, startY);
      ctx.lineTo(endX, endY);
      ctx.stroke();
    }


  // Whiskers
    ctx.strokeStyle = 'white';
    ctx.lineWidth = 2;

    // Left Whisker
  
    drawWhisker(180 + whiskerOffsetx, 220, 120, 200);
    drawWhisker(180 + whiskerOffsetx, 230, 120, 230);
    drawWhisker(180 + whiskerOffsetx, 240, 120, 260);

    // Right Whiskers
    drawWhisker(230, 220, 280, 200);
    drawWhisker(230, 230, 280, 230);
    drawWhisker(230, 240, 280, 260);
	
drawWhisker(200, 220, 200, 230);
drawWhisker(200, 230, 190, 240);
drawWhisker(200, 230, 210, 240);


 ctx.beginPath();
    ctx.ellipse(200, 220, 7, 3, 0, 0, 2 * Math.PI);
    ctx.fillStyle = 'white';
    ctx.fill();

 
  </script>
</body>
</html>
