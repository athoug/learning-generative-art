function Topics() {
  
  // create the list of topics
  this.topics = [
    "Say Hello",
    "Early Morning",
    "Dazzle",
    "Crusade",
    "Space",
    "Abyssopelagic (Deep Ocean)",
    "Fairy's Garden",
    "Teeth",
    "Ennui",
    "Super Power",
    "Touching",
    "Monster Parade",
    "Merry Go Round",
    "Microchip",
    "Party",
    "Euphoria",
    "Snacks",
    "Buttons",
    "Bears",
    "Dream Land",
    "Routine",
    "Muse",
    "Glasses",
    "Miniature",
    "Gargoyle",
    "Maid",
    "Cappuccino",
    "Cartridges ",
    "Panic",
    "Cardboard Box",
    "Carbonation",
    "Panties",
    "Ferris Wheel",
    "Royal Palace",
    "Zippers",
    "Glutton",
    "Iridescence",
    "Fluffy ",
    "Circus",
    "Lazy",
    "Laboratory",
    "Toys",
    "Geometry",
    "Donuts",
    "Television",
    "Recycle Bin",
    "Smile",
    "Laundry",
    "Band-aids",
    "Calico",
    "Jiggle",
    "Contort",
    "Communication",
    "Eclipse",
    "Ruffles",
    "Swag",
    "Balloons",
    "Power Tools",
    "Cubes",
    "Metropolis",
    "Select a Character",
    "Assorted",
    "Tea ",
    "Fireworks",
    "Air",
    "Pocket",
    "Clover",
    "Keyboard",
    "Roller-skates",
    "Temptation",
    "Adventure",
    "Soggy",
    "Requiem",
    "Alert",
    "Business",
    "Zoo",
    "Underground",
    "Soft",
    "Aggravation",
    "Supernova",
    "Library",
    "Bath",
    "Aesthetic",
    "Café",
    "Hiccup",
    "Hospital",
    "Colossal",
    "Mutate",
    "Myth",
    "Intimidate",
    "Balance",
    "Airship",
    "Stranded",
    "Prank",
    "Chill",
    "Disk Jockey",
    "Summer",
    "Alliance",
    "Cotton Candy",
   "Mission Complete!"
    ];
  this.drawinggTopic = "";  
  
  // display the topic 
  this.display = function() {
    // Instruction
    background("#ED147A");
    fill("#F17AAC");
    textSize(52);
    textStyle(BOLD);
    textAlign(CENTER);
    text("CLICK TO GENERATE A TOPIC", width/2, 225);
    
    // actual topic
    fill("#FFFFFC");
    textSize(58);
    drawinggTopic = random(this.topics);
    textStyle(NORMAL);
    text(drawinggTopic, width/2, height/2);
  };
  
}