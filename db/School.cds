namespace school;

entity Establecimiento {
  key ID: UUID;
  nombre: String(100);
  direccion: String(255);
  telefono: String(20);
}