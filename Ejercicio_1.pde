void setup() {
  size(800, 600);
  background(255);
  noLoop(); // Detiene el dibujo después de una iteración
}

void draw() {
  for (int i = 0; i < 100; i++) {
    float x = random(width); // Coordenada X aleatoria
    float y = random(height); // Coordenada Y aleatoria
    float size = random(10, 100); // Tamaño aleatorio
    
    // Genera un valor entre 0 y 2 para seleccionar la forma
    int shapeType = int(random(3));
    
    // Color aleatorio
    fill(random(255), random(255), random(255), 150);
    
    // Dibuja la forma basada en el valor de shapeType
    if (shapeType == 0) {
      ellipse(x, y, size, size); // Círculo
    } else if (shapeType == 1) {
      rect(x, y, size, size); // Rectángulo
    } else {
      triangle(x, y, x + size, y, x + size / 2, y + size); // Triángulo
    }
  }
}
