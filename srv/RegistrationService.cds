using {RegistrationsSpace} from '../db/Registrations';

service RegistrationsService {
    entity Registrations as projection on RegistrationsSpace.Registrations;
}