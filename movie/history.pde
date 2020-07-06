void box_page(){
  background(255);
  noStroke();
  fill(0);
  textFont(font1);
  textSize(50); 
  text("국내",85,95);
  text("해외",85,215);
  textSize(40);
  text("뒤로가기",58,745);
  if(mouseX>=30 && mouseX<=230 && mouseY>=30 && mouseY<=130||boxcheck1){
    fill(color(80,100));
    rect(30,30,200,100,10);
    if(mousePressed){
      boxcheck1=true;
      boxcheck2=false;
    }
  }
  else{
    fill(color(127,63));
    rect(30,30,200,100,10);
  }
  if(mouseX>=30 && mouseX<=230 && mouseY>=150 && mouseY<=250||boxcheck2){
    fill(color(80,100));
    rect(30,150,200,100,10);
    if(mousePressed){
      boxcheck2=true;
      boxcheck1=false;
    }
  }
  else{
    fill(color(127,63));
    rect(30,150,200,100,10);
  }
  if(mouseX>=30 && mouseX<=230 && mouseY>=700 && mouseY<=760){
    fill(color(80,100));
    rect(30,700,200,60,10);
    if(mousePressed){
      startpage=true;
      boxpage=false;
      boxcheck1=false;
      boxcheck2=false;
    }
  }
  else{
    fill(color(127,63));
    rect(30,700,200,60,10);
  }
  if(boxcheck1){
    fill(color(#33FFCC,40)); 
    rect(20,20,230,120,10,0,0,10);
    rect(250,20,930,720,0,10,10,10);
    textFont(font1);
    textSize(30);
    for(int i=0;i<6;i++){
      boximage=koreaboximage[i];
      if(i<3){
        if(mouseX>=310+300*i && mouseX<=535+300*i && mouseY>=30 && mouseY<=351){
          image(boximage,305+300*i,25,235,331);
          if(mousePressed&&explaincheck==false)
            explaincheck=true;
           
        }
        else
          image(boximage,310+300*i,30,225,321);
      }
      else{
        if(mouseX>=310+300*(i-3) && mouseX<=535+300*(i-3) && mouseY>=385 && mouseY<=706){
          image(boximage,305+300*(i-3),380,235,331);
        }
        else
          image(boximage,310+300*(i-3),385,225,321);
      }
      
  }
  
  } 
  if(boxcheck2){
    fill(color(#3399CC,40));
    rect(20,140,230,120,10,0,0,10);
    rect(250,20,930,720,0,10,10,10);
        textFont(font1);
    textSize(30);
    for(int i=0;i<6;i++){
      boximage=overseaboximage[i];
      if(i<3){
        if(mouseX>=310+300*i && mouseX<=535+300*i && mouseY>=30 && mouseY<=351){
          image(boximage,305+300*i,25,235,331);
        }
        else
          image(boximage,310+300*i,30,225,321);
      }
      else{
        if(mouseX>=310+300*(i-3) && mouseX<=535+300*(i-3) && mouseY>=385 && mouseY<=706){
          image(boximage,305+300*(i-3),380,235,331);
        }
        else
          image(boximage,310+300*(i-3),385,225,321);
      }
    }
  }
  
}

void explain(){
  fill(color(127,100));
  rect(0,0,1200,800);
  
}
