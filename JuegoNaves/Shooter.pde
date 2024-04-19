class Shooter{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  
  // CONSTRUCTOR 
  public Shooter(){
    imagen = loadImage("shooterW.png");
    imagen = loadImage("shooterA.png");
    imagen = loadImage("shooterD.png");
    imagen = loadImage("shooterS.png");
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,60,60);
  }
  /**
  * Mueve la posicon hacia izquierda o derecha según lo 
  * que se indique en el atributo velocidad
  * direccion (0:izquierda; 1=derecha; 2 = arriba, 3= abajo)
  */
  public void mover(int direccion){
    if(direccion==0){
      imagen = loadImage("shooterA.png");
      this.posicion.x-=this.velocidad.x;
    }
    if(direccion==1){
      imagen = loadImage("shooterD.png");
      this.posicion.x+=this.velocidad.x;
    }
    if(direccion==2){
      imagen = loadImage("shooterW.png");
      this.posicion.y-=this.velocidad.y;
    }
    if(direccion==3){
      imagen = loadImage("shooterS.png");
      this.posicion.y+=this.velocidad.y;
    }
    
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
  public PVector getVelocidad(){
    return this.velocidad;
  }
  
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
  
}
