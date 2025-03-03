using {SchoolSpace} from '../db/School';

service dateValidation @(path:'/odata/v4/dateValidation') {
    entity School as projection on SchoolSpace.School;
}