using { masterSpace as master} from '../db/master';

@path: 'service/masterDB'
service masterservice {
    entity StatusCards as projection on master.StatusCard;
    entity TypeClients as projection on master.TypeClient;
    entity PaymentMethods as projection on master.MethodOfPayment;
    entity QuotaStatuses as projection on master.QuotaStatus;
    entity ServiceTypes as projection on master.TypeService;
}