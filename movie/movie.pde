boolean startpage=true, boxpage=false, genrepage=false; //화면 변수
PImage backimage,boximage;
PFont font1;
Table boxtable;
boolean boxcheck1=false, boxcheck2=false,explaincheck=false;//역대 박스오피스 체크 변수 
int rowCount;//줄 수 
PImage [] koreaboximage=new PImage[6];
PImage [] overseaboximage=new PImage[6];

class movieclass{
  String name,date,money,people;
}

ArrayList <movieclass> koreapop=new ArrayList();//국내 인구 수 정렬

void setup(){
  size(1200,800);
  backimage=loadImage("back1.png");
  boxtable=loadTable("koreapopdata.csv","header");
  font1=createFont("cinema.ttf",60);
  rowCount=boxtable.getRowCount();
  for(int i=0;i<6;i++){
    koreaboximage[i]=loadImage("kp"+(i+1)+".jpg");
    overseaboximage[i]=loadImage("op"+(i+1)+".jpg");
  }
  for(int i=0;i<rowCount;i++){
    koreapop.add(new movieclass());
    String moviename=boxtable.getRow(i).getString("name");
    String moviedate=boxtable.getRow(i).getString("date");
    String moviemoney=boxtable.getRow(i).getString("money");
    String moviepop=boxtable.getRow(i).getString("pop");
    koreapop.get(i).name=moviename;
    koreapop.get(i).date=moviedate;
    koreapop.get(i).money=moviemoney;
    koreapop.get(i).people=moviepop;

  }
  
}

void draw(){
  if(startpage){
    start_page();
  }
  if(boxpage){
    box_page();
  }
}
