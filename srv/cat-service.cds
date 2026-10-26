service CatalogService {
  @cds.persistence.skip
  entity Casesc4c {
    key id : UUID;
    displayId : String;
    subject : String;
    priority : String;
    status : String;
  }
}