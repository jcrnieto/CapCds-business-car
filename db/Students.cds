namespace StudentsSpace;

using { SchoolSpace as school} from './School';

entity Students {
  key ID: UUID;
  firstName: String(100);
  lastName: String(100);
  birthDate: Date;
  establishment: Association to school.School;

  addresses: Composition of many Addresses on addresses.student = $self;
}

entity Addresses {
  key ID: UUID;
  street: String(100);
  number: Integer;
  city: String(50);
  province: String(50);
  student: Association to Students;
}