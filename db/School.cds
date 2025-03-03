namespace SchoolSpace;

entity School {
  key ID: UUID;
  name: String(100);
  address: String(255);
  phone: String(20);
  inaugurationDate: Date;
  currentDate: Date;
}

