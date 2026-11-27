int ttX = 60;
int discordX = 180;
int whatsappX = 300;
int safariX = 420;
int tachimangaX = 540;

Table data;
ArrayList<Observation> observations = new ArrayList<Observation>();

int calculateLeafSize(int minutes)
{
  int leafSize = (int) map(minutes, 0, 600, 6, 40);
  return leafSize;
}

int getPlantX(String app)
{
    if (app.equals("Tiktok"))
    {
        return ttX;
    }

    if (app.equals("Discord"))
    {
      return discordX;
    }
    
    if (app.equals("Whatsapp"))
    {
      return whatsappX;
    }
    
    if (app.equals("Safari"))
    {
      return safariX;
    }
    
    if (app.equals("Tachimanga"))
    {
      return tachimangaX;
    }
    return -1;
}

void setup()
{
  size(600,600);
  data = loadTable("My Data - Sheet1 (3).csv", "header");
  
  
for (int i = 0; i < data.getRowCount(); i++)
{   
    TableRow row = data.getRow(i);
    String date = row.getString("Date");
    String app = row.getString("App");
    int minutes = row.getInt("Minutes");
    String category = row.getString("Category");
    observations.add(new Observation(date, app, minutes, category));
}

int tiktokCount = 0;
int discordCount = 0;
int whatsappCount = 0;
int safariCount = 0;
int tachimangaCount = 0;

for (int i = 0; i < observations.size(); i++)
{ 
  if (observations.get(i).app.equals("Tiktok"))
  {
    tiktokCount++;
  }
  
  if (observations.get(i).app.equals("Discord"))
  {
    discordCount++;
  }
  
  if (observations.get(i).app.equals("Whatsapp"))
  {
    whatsappCount++;
  }
  
  if (observations.get(i).app.equals("Safari"))
  {
    safariCount++;
  }
  
  if (observations.get(i).app.equals("Tachimanga"))
  {
    tachimangaCount++;
  }
  
  println(observations.get(i).app + ": " + observations.get(i).minutes);
}

println(tiktokCount);
println(discordCount);
println(whatsappCount);
println(safariCount);
println(tachimangaCount);
int totalCount = tiktokCount + discordCount + whatsappCount + safariCount + tachimangaCount;
println("Total counted: " + totalCount);
println("Total observations: " + observations.size());
}

void draw()
{
  int ttLeafIndex = 0;
  int discordLeafIndex = 0;
  int whatsappLeafIndex = 0;
  int safariLeafIndex = 0;
  int tachimangaLeafIndex = 0;
  
  background(240);
  fill(0);
  
  textAlign(CENTER);
  textSize(24);
  text("Screen Time Patterns", 300, 50);
  
  fill(120, 80, 45);
  stroke(120,80,45);
  rect(0, 500, 600, 100);
  
  stroke(40,130,60);
  line(ttX, 500, ttX, 90);
  
  fill(255,247,3);
  stroke(255,247,3);
  circle(ttX, 80, 20);
  
  fill(0);
  textSize(14);
  text("Tiktok", ttX,513);
  
  stroke(40,130,60);
  line(discordX, 500, discordX, 90);
  
  fill(117,183,247);
  stroke(117,183,247);
  circle(discordX, 80, 20);
  
  fill(0);
  textSize(14);
  text("Discord",discordX,513);
  
  stroke(40,130,60);
  line(whatsappX, 500, whatsappX, 90);
  
  fill(255,10,166);
  stroke(255,10,166);
  circle(whatsappX, 80, 20);
  
  fill(0);
  textSize(14);
  text("Whatsapp",whatsappX,513);
  
  stroke(40,130,60);
  line(safariX, 500, safariX, 90);
  
  fill(252,75,5);
  stroke(252,75,5);
  circle(safariX, 80, 20);
  
  fill(0);
  textSize(14);
  text("Safari",safariX,513);
  
  stroke(40,130,60);
  line(tachimangaX, 500, tachimangaX, 90);
  
  fill(41,27,121);
  stroke(41,27,121);
  circle(tachimangaX, 80, 20);
  
  fill(0);
  textSize(14);
  text("Tachimanga", tachimangaX, 513);
  
  for (int i = 0; i < observations.size(); i++)
  {
    int leafSize = calculateLeafSize(observations.get(i).minutes);
    int leafX = getPlantX(observations.get(i).app);

    if (observations.get(i).app.equals("Tiktok"))
    {
        int leafY = 480 - (ttLeafIndex * 20);
        fill(255,247,3);
        noStroke();
        ellipse(leafX, leafY, leafSize, 10);
        ttLeafIndex++;    
    }
  
    if (observations.get(i).app.equals("Discord"))
    {
        int leafY = 480 - (discordLeafIndex * 20);
        fill(117,183,247);
        noStroke();
        ellipse(leafX, leafY, leafSize, 10);
        discordLeafIndex++;
    }
    
    
    if (observations.get(i).app.equals("Whatsapp"))
    {
        int leafY = 480 - (whatsappLeafIndex * 20);
        fill(255,10,166);
        noStroke();
        ellipse(leafX, leafY, leafSize, 10);
        whatsappLeafIndex++;
    }
    
    
    if (observations.get(i).app.equals("Safari"))
    {
        int leafY = 480 - (safariLeafIndex * 20);
        fill(252,75,5);
        noStroke();
        ellipse(leafX, leafY, leafSize, 10);
        safariLeafIndex++;
    }
    
    
    if (observations.get(i).app.equals("Tachimanga"))
    {
        int leafY = 480 - (tachimangaLeafIndex * 20);
        fill(41,27,121);
        noStroke();
        ellipse(leafX, leafY, leafSize, 10);
        tachimangaLeafIndex++;
    }   
  } 
}

class Observation
{
   String date;
   String app;
   int minutes;
   String category;
   
   Observation(String observationDate, String appName, int screenMinutes, String appCategory)
   
   {
     date = observationDate;
     app = appName;
     minutes = screenMinutes;
     category = appCategory;
   }
} 
