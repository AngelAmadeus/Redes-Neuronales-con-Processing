class Perceptron { //Esto la neurona
  float[] weights = new float[2]; //Los pesos, son las ponderaciones o los coeficientes de la recta que mi modelo indica que separa los puntos
  float lr = 0.1; //razón de aprendizaje de la red neuronal
  Perceptron() { //Constructor
    for (int i = 0; i < weights.length; i++) {weights[i] = random(-1,1);}} //Se inicializan los pesos de forma alaeatoria entre -1 y 1
  int guess(float[] inputs){ //Esta es la prediccion, puede tener decimales
    float sum = 0; //Se inicializa la suma de los pesos en 0
    for (int i = 0; i < weights.length; i++) {sum += inputs[i]*weights[i];} //Para cada peso, la suma es igual a inputs*pesos
    int output = sign(sum); //Esto hace que el output se a fuerzas 1 o -1
    return output;} //la función regresa un valor de 1 o -1
  void train(float[] inputs, int target){ //esta es una funcion que recibe las entradas y el objetivo
    int guess = guess(inputs); //se ingresan las entradas en la funcion 'guess', cuy respuesta es 1 o -1
    int error = target - guess; //se calcula el error que esta dado por el objetivo - la estimacion
    for (int i = 0; i < weights.length; i++) {weights[i] += error*inputs[i] * lr;}}} //Esto mejora el modelo, desplaza la linea que divide, de tal forma que modifica los pesos para cambiar la pendiente de la línea
//Función de activación
int sign(float n){ //esto recibe el valor de la suma de los inputs*pesos
  if (n >= 0) {return 1;} //Si el valor es mayor o igual a 0, el valor se vuelve 1
  else {return -1;}} //Si el valor es mayor o igual a 0, el valor se vuelve -1