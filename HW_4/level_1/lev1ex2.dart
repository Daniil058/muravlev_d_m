import 'dart:math';

class Vector2D
{
  double vX = 0;
  double vY = 0;

  Vector2D(double X, double Y){
    this.vX = X;
    this.vY = Y;
  }

  Vector2D.unit(){
    this.vX = 1;
    this.vY = 1;
  }

  Vector2D.clone(Vector2D vector2d){
    this.vX = vector2d.vX;
    this.vY = vector2d.vY;
  }

  void display(){
    print("(${vX.toStringAsFixed(2)}, ${vY.toStringAsFixed(2)})");
  }

  double length(){
    return sqrt(this.vX*this.vX + this.vY*this.vY);
  }

  void add(Vector2D vector2d){
    this.vX += vector2d.vX;
    this.vY += vector2d.vY;
  }

  void sub(Vector2D vector2d){
    this.vX -= vector2d.vX;
    this.vY -= vector2d.vY;
  }

  void scale(double scaleFactor){
    this.vX *= scaleFactor;
    this.vY *= scaleFactor;
  }
}

main(){
  Vector2D vA = Vector2D.unit();
  Vector2D vB = Vector2D(1.0, 3.0);
  Vector2D vC = Vector2D.clone(vB);
  vA.add(vB);
  vA.display();
  vA.sub(vC);
  vA.display();
  print(vB.length());
  vC.scale(2);
  vC.display();
}