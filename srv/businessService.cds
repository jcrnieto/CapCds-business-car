using {businessSpace as business} from '../db/business';

@path: 'service/businessDB'
service BusinessService {
    entity Branches as projection on business.Branches;
    entity Cars as projection on business.Cars {
        *,
        status.name as statusName,
    };
    entity Customers as projection on business.Customers {
        *,
        customerType.name as customerName,
    };
    entity Sellers as projection on business.Sellers;
    entity Sales as projection on business.Sales {
        *,
        paymentMethod.name as paymentMethod
    };
    entity Financing as projection on business.Financing {
        *,
        status.name as statusName
    };
    entity InstallmentDetails as projection on business.InstallmentDetails {
        *,
        status.name as statusName
    };
    entity PostSaleServices as projection on business.PostSaleServices {
        *,
        serviceType.name as serviceType
    };
}