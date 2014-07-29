//Top 10 most densely populated countries and dependencies
//Data Source: http://data.worldbank.org/indicator/EN.POP.DNST
//By Jimmy Tang. April 2014

ArrayList ballCollection;
int[] ballNum;
int xNum;
String city;
PFont font;

void setup() {
  size(800,800);
  smooth();
  
  ballCollection = new ArrayList();
  
  city = "MACAO";
  
  // Set up ballNum
  ballNum = new int[10];
  ballNum[0] = 19510;
  ballNum[1] = 18631;
  ballNum[2] = 7405;
  ballNum[3] = 6787;
  ballNum[4] = 1701;
  ballNum[5] = 1291;
  ballNum[6] = 1174;
  ballNum[7] = 1132;
  ballNum[8] = 1107;
  ballNum[9] = 844;
  
  xNum = 0;
  
  for(int i = 0; i < ballNum[xNum]; i++) {
  Ball myBall = new Ball(random(0, width), random(0, height));
  ballCollection.add(myBall);
  }
  
}

void draw() {
  background(0);
  
  for(int i = 0; i < ballNum[xNum]; i++) {
  Ball mb = (Ball) ballCollection.get(i);
  mb.run();
  }
  
  displayText();
  
}

void mouseReleased() {
  xNum++;
  if (xNum > 9 ) {
      xNum = 0;
    }
  }
  
void displayText() {
    
  font = loadFont("HelveticaNeue-Bold-150.vlw");
  textFont(font, 75);
  textAlign(CENTER);
  text(city, width/2, height/2); 
  
  if (xNum == 1) {
    city = "MONACO";
  } else if (xNum == 2) {
    city = "SINGAPORE";
  } else if (xNum == 3) {
    city = "HONG KONG";
  } else if (xNum == 4) {
    city = "BAHRAIN";
  } else if (xNum == 5) {
    city = "MALTA";
  } else if (xNum == 6) {
    city = "BERMUDA";
  } else if (xNum == 7) {
    city = "BANGLADESH";
  } else if (xNum == 8) {
    city = "SINT MAARTEN";
  } else if (xNum == 9) {
    city = "MALDIVES";
  } else {
    city = "MACAO";
  }
  
}
