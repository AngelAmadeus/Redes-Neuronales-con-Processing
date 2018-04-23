Perceptron brain;
Point[] points = new Point[100]; //Esto indica que serán 100 puntitos
void setup() {
  size(600,600); //Tamaño de la ventana
  brain = new Perceptron(); //Crea una nueva neurona
  for(int i = 0; i < points.length; i++){points[i] = new Point();}  //Ciclo que crea los puntos
  for(Point pt: points){float[] inputs = {pt.x, pt.y}; brain.train(inputs, pt.label);} //Se toman las coordenadas de cada punto y los va a entrenar (ver Nueurona)
  //Se observa que utiliza las entradas del modelo y el objetivo real para cada punto
  float[] inputs = {-1,0.5}; //las entradas son -1 y 0.5
  int guess = brain.guess(inputs); //esto muestra la prediccion del modelo
  println(guess);} //Esto muestra las predicciones
void draw() {
  background(255); //Fondo de color blanco
  stroke(0); //Grosor minimo
  line(0,0,width,height); //Linea que va desde la esquina superior izquierda hasta la esquina inferior derecha
  for (Point p : points){p.show(); } //Dibuja todos los puntos 
  for(Point pt: points){ //Para cada punto:
    float[] inputs = {pt.x, pt.y}; //Las entradas son sus coordenadas
    int target = pt.label; //  Esto indica su clasificacion
    int guess = brain.guess(inputs); //De acuerdo a las entradas se calcula la prediccion
    if (guess == target) {fill(0,255,0);}  //Color verde correcto (en caso de que la predicción sea igual a la realidad)
    else {fill(255,0,0);}  //Color rojo incorreto (en caso de que la predicción no sea igual a la realidad)
    noStroke(); ellipse(pt.x, pt.y, 8, 8);}} //Sin contorno dibuja u circulo de 8 pixeles en las coordenadas del punto
void mousePressed() { //Esto hace que cada iteracion se muestre en cada click
  for(Point pt: points){ //para cada punto:
    float[] inputs = {pt.x, pt.y}; //las entradas son las coordendas
    int target = pt.label; //el objetivo es su clasificación
    brain.train(inputs, target);}} //vuelve a entrenar la neurona con los dato recibidos