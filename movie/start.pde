void start_page(){//시작화면
  background(255);
  image(backimage,0,0,1200,800);//필름 사진
  fill(255);
  noStroke();
  rect(300,200,400,400);
  fill(0);
  textFont(font1);
  text("영화 데이터 시각화",365,380);
  textSize(32);
  text("역대 박스오피스",225,580); 
  text("장르별 박스오피스",480,580);
  if(mouseX>=210 && mouseX<=450 && mouseY>=510 && mouseY<=630){
    fill(color(80,80));
    rect(210,510,240,120,10);
    if(mousePressed){
      startpage=false;
      boxpage=true;
    }
  }
  else{
    fill(color(127,63));
    rect(210,510,240,120,10);
  }
  if(mouseX>=475 && mouseX<=715 && mouseY>=510 && mouseY<=630){
    fill(color(80,80));
    rect(475,510,240,120,10);
  }
  else{
    fill(color(127,63));
    rect(475,510,240,120,10);
  }
  if(mouseX>=740 && mouseX<=980 && mouseY>=510 && mouseY<=630){
    fill(color(80,80));
    rect(740,510,240,120,10);
  }
  else{
    fill(color(127,63));
    rect(740,510,240,120,10);
  }
}
