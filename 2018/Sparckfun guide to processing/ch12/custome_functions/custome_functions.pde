// working with JSON data

void setup() {  
  size(500, 500);
  update_data(); // get the weather data
  
  frameRate(1); // reduce the frame rate so it doesn't bombard the weather site and causes the JSON data to get bocked
  
}

void draw() {
  background(#5352ed);

  // text data
  textSize(20);
  fill(#70a1ff);
  text("GPS Location: " + lat + " , " + lon, 50, 100);
  text("Sunrise: " + sunR, 50, 125);
  text("Sunset: " + sunS, 50, 150);
  text("Temprature: " + temp, 50, 175);
  text("Atmospheric Pressure: " + pressure, 50, 200);
  text("Humidity: " + humidity + "%", 50, 225);
  text("Wind Speed: " + windS + "mps", 50, 250);
  text("Wind Direction: " + windD + "%", 50, 275);
  text("Cloud Coverage: " + cloud + "%", 50, 300);
  text("Conditions: " + condition + " , " + discription, 50, 325);
  
  // image icon
  image(weatherIcon, 50, 350);
  
  // update your json data every 15 minutes
  if ((minute()%15 == 0) && (second() == 1)) {
    update_data(); // get the weather data
  }
}