int ttX = 60;
int discordX = 180;
int whatsappX = 300;
int safariX = 420;
int tachimangaX = 540;
int calculateHeight(int minutes)
{  
   int limitedMinutes = constrain(minutes,0,1200);
   return (int) map(limitedMinutes, 0, 1200, 0, 300);
}

void setup()
{
  size(600,600);
}

void draw()
{
  background(240);
  
  textAlign(CENTER);
  textSize(24);
  text("Screen Time Patterns", 300, 50);
  
  fill(120, 80, 45);
  stroke(120,80,45);
  rect(0, 500, 600, 100);
  
  stroke(40,130,60);
  int plantHeight = calculateHeight(200);
  line(ttX,500,ttX,500 - plantHeight);
  
  fill(255,247,3);
  stroke(255,247,3);
  circle(ttX,500 - plantHeight,40);
  
  fill(0);
  textSize(14);
  text("Tiktok", ttX,513);
  
  stroke(40,130,60);
  line(discordX,500,discordX,400);
  
  fill(117,183,247);
  stroke(117,183,247);
  circle(discordX,400,40);
  
  fill(0);
  textSize(14);
  text("Discord",discordX,513);
  
  stroke(40,130,60);
  line(whatsappX,500,whatsappX,400);
  
  fill(255,10,166);
  stroke(255,10,166);
  circle(whatsappX,400,40);
  
  fill(0);
  textSize(14);
  text("Whatsapp",whatsappX,513);
  
  stroke(40,130,60);
  line(safariX,500,safariX,400);
  
  fill(252,75,5);
  stroke(252,75,5);
  circle(safariX,400,40);
  
  fill(0);
  textSize(14);
  text("Safari",safariX,513);
  
  stroke(40,130,60);
  line(tachimangaX,500,tachimangaX,400);
  
  fill(41,27,121);
  stroke(41,27,121);
  circle(tachimangaX,400,40);
  
  fill(0);
  textSize(14);
  text("Tachimanga",tachimangaX,513);
}
