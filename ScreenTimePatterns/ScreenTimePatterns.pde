int ttX = 60;
int discordX = 180;
int whatsappX = 300;
int safariX = 420;
int tachimangaX = 540;
int calculateHeight(int minutes)
{
  int limitedMinutes = constrain(minutes, 0, 1200);

  if (limitedMinutes == 0)
  {
    return 0;
  }

  return (int) map(limitedMinutes, 0, 1200, 20, 300);
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
  int tiktokHeight = calculateHeight(383);
  line(ttX, 500, ttX, 500 - tiktokHeight);
  
  fill(255,247,3);
  stroke(255,247,3);
  circle(ttX, 500 - tiktokHeight, 40);
  
  fill(0);
  textSize(14);
  text("Tiktok", ttX,513);
  
  stroke(40,130,60);
  int discordHeight = calculateHeight(120);
  line(discordX, 500, discordX, 500 - discordHeight);
  
  fill(117,183,247);
  stroke(117,183,247);
  circle(discordX, 500 - discordHeight, 40);
  
  fill(0);
  textSize(14);
  text("Discord",discordX,513);
  
  stroke(40,130,60);
  int whatsappHeight = calculateHeight(115);
  line(whatsappX, 500, whatsappX, 500 - whatsappHeight);
  
  fill(255,10,166);
  stroke(255,10,166);
  circle(whatsappX, 500 - whatsappHeight ,40);
  
  fill(0);
  textSize(14);
  text("Whatsapp",whatsappX,513);
  
  stroke(40,130,60);
  int safariHeight = calculateHeight(19);
  line(safariX, 500, safariX, 500 - safariHeight);
  
  fill(252,75,5);
  stroke(252,75,5);
  circle(safariX, 500 - safariHeight, 40);
  
  fill(0);
  textSize(14);
  text("Safari",safariX,513);
  
  stroke(40,130,60);
  int tachimangaHeight = calculateHeight(21);
  line(tachimangaX, 500, tachimangaX, 500 - tachimangaHeight);
  
  fill(41,27,121);
  stroke(41,27,121);
  circle(tachimangaX, 500 - tachimangaHeight, 40);
  
  fill(0);
  textSize(14);
  text("Tachimanga", tachimangaX, 513);
}
