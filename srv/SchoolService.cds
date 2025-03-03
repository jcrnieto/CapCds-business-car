using {SchoolSpace} from '../db/School';

service SchoolService {
    entity School as projection on SchoolSpace.School;
}

// service dateValidation @(path:'/dateValidation') {
//     entity ValidatedSchool as projection on SchoolSpace.School;
// }