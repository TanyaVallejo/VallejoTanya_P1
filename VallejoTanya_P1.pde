class Personaje {
int x,y;
int vida;
int winni; //personaje
int player;
int ganaste;
Personaje (int x_,int y_, int vida_, int winni_, int player_){
x = x_;
y = y_;
vida = vida_;
winni = winni_;
player = player_;
}

void vida(){
  if (player == 1 ){
    vida1 = vida;
  }
 if (player == 2 ){
    vida2 = vida;
  }
   
}

void ataque(){
  switch (winni){
  case 0: //circulo
  if (ataque == 1 && player == 1){
  vida2 = vida2 - 5;
  }
    if (ataque == 2 && player == 1){
  vida2 = vida2 - 2;
  }
    if (ataque == 1 && player == 2) {
  vida1 = vida1 - 5;
  }
    if (ataque == 2 && player == 2){
  vida1 = vida1 - 2;
  }
  break;
  case 1: //rectángulo
   if (ataque == 1 && player == 1){
  vida2 = vida2 - 2;
  }
    if (ataque == 2 && player == 1){
  vida2 = vida2 - 2;
  }
    if (ataque == 1 && player == 2) {
  vida1 = vida1 - 2;
  }
    if (ataque == 2 && player == 2){
  vida1 = vida1 - 2;
  }
  break;
  case 2: //cuadrado
   if (ataque == 1 && player == 1){
  vida2 = vida2 - 6;
  }
    if (ataque == 2 && player == 1){
  vida2 = vida2 - 3;
  }
    if (ataque == 1 && player == 2) {
  vida1 = vida1 - 6;
  }
    if (ataque == 2 && player == 2){
  vida1 = vida1 - 3;
  }
  break;
  case 3: //Triángulo
   if (ataque == 1 && player == 1){
  vida2 = vida2 - 3;
  }
    if (ataque == 2 && player == 1){
  vida2 = vida2 - 2;
  }
    if (ataque == 1 && player == 2) {
  vida1 = vida1 - 3;
  }
    if (ataque == 2 && player == 2){
  vida1 = vida1 - 2;
  }
  break;
  case 4: //Rombo
   if (ataque == 1 && player == 1){
  vida2 = vida2 - 4;
  }
    if (ataque == 2 && player == 1){
  vida2 = vida2 - 1;
  }
    if (ataque == 1 && player == 2) {
  vida1 = vida1 - 4;
  }
    if (ataque == 2 && player == 2){
  vida1 = vida1 - 1;
  }
  break;
  }
  
}

void ganaste (){
if(vida1>=vida2){
if (vida2<=0){
ganaste= 1;
}
}
else {
if(vida2>=vida1){
if(vida1<=0){
ganaste=2;
}
}
}


}
void display(){
switch (winni){

case 0: //circulo
pushMatrix ();
translate (x,y);
ellipseMode (CENTER);
fill (0,255,0);
noStroke(); 
ellipse (0,0,100,100);
popMatrix ();
break;

case 1: //rectangulo
pushMatrix ();
translate (x,y);
rectMode (CENTER);
fill (0,0,255);
noStroke(); 
rect(0,0,100,80);
popMatrix ();
break;

case 2: //cuadrado
pushMatrix ();
translate (x,y);
rectMode (CENTER);
fill (255,0,0);
noStroke(); 
rect(0,0,100,100);
popMatrix ();
break;

case 3: // triangulo
pushMatrix ();
translate (x,y);
fill (255,255,0);
noStroke(); 
triangle(0,-50,50,50,-50,50);
popMatrix ();
break;

case 4: //rombo
pushMatrix ();
translate (x,y);
rotate (-4);
rectMode (CENTER);
fill (239,127,26);
noStroke ();
rect (0,0,71,71);
popMatrix ();
break;
}

}










}

int sugus;
int vida1;
int vida2;
float turno;
int ataque;
int jugador; //solo el turno
int personaje1; //jugador 1
int personaje2; //jugador 
//Pantalla 2
Personaje circulo;
Personaje rectangulo;
Personaje cuadrado;
Personaje triangulo;
Personaje rombo;

//Pantalla 3 pesonaje 1
Personaje circulete;
Personaje rectangulete;
Personaje cuadradete;
Personaje triangulete;
Personaje rombete;

//Pantalla 3 personaje 2
Personaje circuletex;
Personaje rectanguletex;
Personaje cuadradetex;
Personaje trianguletex;
Personaje rombetex;

void setup(){
size (600,400);
background (255);
  sugus=1;
  jugador=1;
 //Pantalla 2
circulo = new Personaje(150,100, 20, 0, 1);
rectangulo = new Personaje(450,100,20,1,1);
cuadrado = new Personaje (150,300,20,2,1);
triangulo = new Personaje (450,300,20,3,1);
rombo = new Personaje (300,200,20,4,1);

//Pantalla 3 personaje 1
circulete = new Personaje (150,200,20,0,1);
rectangulete = new Personaje (150,200,20,1,1);
cuadradete = new Personaje (150,200,20,2,1);
triangulete = new Personaje (150,200,20,3,1);
rombete = new Personaje (150,200,20,4,1);

//Pantalla 3 personaje 2
circuletex = new Personaje (450,200,20,0,2);
rectanguletex = new Personaje (450,200,20,1,2);
cuadradetex = new Personaje (450,200,20,2,2);
trianguletex = new Personaje (450,200,20,3,2);
rombetex = new Personaje (450,200,20,4,2);


}
void draw (){
  background(255);
switch (sugus){
case 1: //pantalla de inicio, ¡NO PONGAS NADA AQUÍ!
fill (0);
textSize (80);
text ("¡LA PRIMERA",50,100);
fill (0);
textSize (80);
text ("FIGURA!",150,200);
fill (0);
textSize (45);
text ("Pulsa 'T' para empezar",50,350);
break;

case 2: //PANTALLA DOS
fill (0);
textSize (15);
text ("Elige a tu personaje, pulsando la letra que se indica",10,30);
circulo.display();
fill (0);
textSize (50);
text ("A",150,200);
rectangulo.display();
fill (0);
textSize (50);
text ("C",400,200);
cuadrado.display();
fill (0);
textSize (50);
text ("B",150,400);
triangulo.display();
fill (0);
textSize (50);
text ("D",400,400);
rombo.display();
fill (0);
textSize (50);
text ("E",300,300);

switch (personaje1){
case 1: //circulo
rectMode (CENTER);
fill (0,65);
rect(150,100,120,120);
break;
case 2: //cuadrado
rectMode (CENTER);
fill (0,65);
rect(150,300,120,120);
break;
case 3://rectangulo
rectMode (CENTER);
fill (0,65);
rect(450,100,120,120);
break;
case 4: //triangulo
rectMode (CENTER);
fill (0,65);
rect(450,300,120,120);
break;
case 5: //rombo
rectMode (CENTER);
fill (0,65);
rect(300,200,120,120);
break;
}
break;

case 3:
background (0);//PANTALLA 3
switch (personaje1){
case 1:
circulete.display ();
circulete.ganaste ();
break;
case 2:
cuadradete.display ();
cuadradete.ganaste ();
break;
case 3:
rectangulete.display ();
rectangulete.ganaste ();
break;
case 4:
triangulete.display();
triangulete.ganaste();
break;
case 5:
rombete.display ();
rombete.ganaste ();
break;

}
switch (personaje2){
case 1:
circuletex.display ();
circuletex.ganaste ();
 break;
case 2:
cuadradetex.display ();
cuadradetex.ganaste ();
break;
case 3:
rectanguletex.display ();
rectanguletex.ganaste();
break;
case 4:
trianguletex.display();
trianguletex.ganaste();
break;
case 5:
rombetex.display ();
rombetex.ganaste();
break;
}
}
}

void keyReleased(){
  if (sugus==1 && (key == 't' || key == 'T')){
sugus = 2;
  }
if (sugus==2){
switch (key){
case 'A': //circulo
case 'a':
if (jugador==1){
personaje1=1;
jugador=2;
println(personaje1);
}
else {
if (jugador==2 && personaje1!=1){
personaje2 = 1;
sugus=3;
println(personaje2);
}
}
break;
case 'B': //Cuadrado
case 'b':
if (jugador==1){
personaje1=2;
jugador=2;
println(personaje1);
}
else {
if (jugador==2 && personaje1!=2){
personaje2 = 2;
sugus=3;
println(personaje2);
}
}
break;
case 'C': //Rectangulo
case 'c':
if (jugador==1){
personaje1=3;
jugador=2;
println(personaje1);
}
else {
if (jugador==2 && personaje1!=3){
personaje2 = 3;
sugus=3;
println(personaje2);
}
}
break;
case 'D': //Triangulo
case 'd':
if (jugador==1){
personaje1=4;
jugador=2;
println(personaje1);

}
else {
if (jugador==2 && personaje1!=4){
personaje2 = 4;
println (personaje2);
sugus=3;
}
}
break;
case 'E': //Rombo
case 'e':
if (jugador==1){
personaje1=5;
jugador=2;
println(personaje1);

}
else {
if (jugador==2 && personaje1!=5){
personaje2 = 5;
println(personaje2);
sugus=3;
}
}
break;
}
}
 if(turno%2==0 && sugus==3){ //si el turno es par 
 if (key=='z' || key=='Z'){
   ataque=1;
   turno++;
 }
 else {
 if (key== 'x' || key=='X'){
 ataque=2;
 turno++;
 }
 }
 switch (personaje1) {
 case 1:
 circulete.ataque();
 break;
 case 2:
 cuadradete.ataque();
 break;
 case 3:
 rectangulete.ataque();
 break;
 case 4:
 triangulete.ataque();
 break;
 case 5:
 rombete.ataque();
 break;
 }
 }
  if(turno%2==1 && sugus==3){ //si el turno es par 
 if (key=='n' || key=='N'){
   ataque=1;
   turno++;
 }
 else {
 if (key== 'm' || key=='M'){
 ataque=2;
 turno++;
 }
 }
 switch (personaje2) {
 case 1:
 circuletex.ataque();
 break;
 case 2:
 cuadradetex.ataque();
 break;
 case 3:
 rectanguletex.ataque();
 break;
 case 4:
 trianguletex.ataque();
 break;
 case 5:
 rombetex.ataque();
 break;
 }
 }
}
