using my.bookshop as my from '../db/data-model';
using API_BUSINESS_PARTNER as BUPA_API from './external/API_BUSINESS_PARTNER.csn';

service CatalogService {
    entity Books as projection on my.Books;
    entity Authors as projection on my.Authors;
    entity Orders as projection on my.Orders;
}

service BusinessPartners {
    @cds.persistence.skip
    entity BusinessPartners as projection on BUPA_API.A_BusinessPartner {
        key BusinessPartner as ID,
        FirstName,   
        MiddleName,
        LastName
    };
}