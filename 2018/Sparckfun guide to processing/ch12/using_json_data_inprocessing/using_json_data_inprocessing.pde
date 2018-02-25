// working with JSON data
JSONObject json;

void setup() {
  // load the JSON file by calling the function loadJSONObject("URL") and passing the url object
  json = loadJSONObject("http://api.openweathermap.org/data/2.5/weather?q=riyadh&appid=4c0e66f31b49270a2a64b5d7b05e0a71&units=metric");
  
  JSONObject coord = json.getJSONObject("coord");
  float lon = coord.getFloat("lon");
  float lat = coord.getFloat("lat");
  
  println(lon + " , " + lat);
}