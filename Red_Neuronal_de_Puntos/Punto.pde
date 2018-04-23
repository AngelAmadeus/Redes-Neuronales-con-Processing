class Point{
  float x; //la coordenada puede ser decimal
  float y; //la coordenada puede ser decimal
  int label; //Se declara una variable de tipo entero (esto indica si es 1=pertenece a los de arriba y si es iagual a -1 pertenece a los de abajo
  Point() {
    x = random(width); //Da un valor aleatorio de ancho, es decir la coordenada el eje x
    y = random(height); //Da un valor aleatorio de alto, es decir la coordenada el eje y
    if (x>y){label = 1;} //Da el valor de 1 si x>y (es de los de arriba)
    else {label = -1;}} //Da el valor de -1 si x<=y (es de los de abajo)
  void show() {
    if(label == 1) {fill(255);} //Si el label es uno lo rellena de color blanco
    else {fill (0);} //Si el label es uno lo rellena de color negro
    ellipse(x,y,16,16);}} //Crea una ellipse con ambos radios de 16 pixeles, es decir un circulo.