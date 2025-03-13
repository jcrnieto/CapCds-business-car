using {SchoolSpace} from '../db/School';

@impl: 'srv/handlers/dateValidation.handler.js'

service dateValidation @(path:'/odata/v4/dateValidation') {
    entity School as projection on SchoolSpace.School;
}