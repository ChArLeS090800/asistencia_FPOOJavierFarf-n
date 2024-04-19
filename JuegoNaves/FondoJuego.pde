class FondoJuego{
  private PImage imagen;
  
  public FondoJuego(){
  imagen = loadImage("fondo.png");
  }
  
  public void dibujar(){
    image(imagen,200,300, 1200, 850);
  }
}
