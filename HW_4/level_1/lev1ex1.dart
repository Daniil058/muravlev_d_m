class Vector2D
{
  double? vX;
  double? vY;

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
    print("(${vX!.toStringAsFixed(2)}, ${vY!.toStringAsFixed(2)})");
  }
}

main(){
    Vector2D v = Vector2D(1.2374, 2.2334);
    Vector2D v2 = Vector2D.unit();
    Vector2D v3 = Vector2D.clone(v);
    v.display();
    v2.display();
    v3.display();
}