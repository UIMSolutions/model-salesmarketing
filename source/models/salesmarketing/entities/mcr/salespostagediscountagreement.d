
module models.salesmarketing.entities.mcr.salespostagediscountagreement;

@safe:
import models.salesmarketing;

class DMCRSalesPostageDiscountAgreementEntity : DOOPEntity {
  mixin(EntityThis!("MCRSalesPostageDiscountAgreementEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "accountCode": StringAttribute,
        "accountRelation": StringAttribute,
        "discountAmount": StringAttribute,
        "discountCurrencyCode": StringAttribute,
        "discountApplicableFromDate": StringAttribute,
        "inventDimId": UUIDAttribute,
        "itemCode": StringAttribute,
        "itemRelation": StringAttribute,
        "discountPercentage1": StringAttribute,
        "discountPercentage2": StringAttribute,
        "fromQuantity": StringAttribute,
        "toQuantity": StringAttribute,
        "willSearchContinue": StringAttribute,
        "discountApplicableToDate": StringAttribute,
        "quantityUnitSymbol": StringAttribute,
        "recordId": UUIDAttribute,
        "customerAccountNumber": StringAttribute,
        "postageDiscountCustomerGroupCode": StringAttribute,
        "itemNumber": StringAttribute,
        "productConfigurationId": UUIDAttribute,
        "productColorId": UUIDAttribute,
        "productSizeId": UUIDAttribute,
        "productStyleId": UUIDAttribute,
        "productVersionId": UUIDAttribute,
        "piscountSiteId": UUIDAttribute,
        "piscountWarehouseId": UUIDAttribute,
        "productNumber": StringAttribute,
        "backingTable_PriceDiscTableRelationshipId": UUIDAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,
      ])
      .registerPath("salesmarketing_mcr.salespostagediscountagreement");
  }
}
mixin(EntityCalls!("MCRSalesPostageDiscountAgreementEntity"));

version(test_modul_salesmarketing) {
  unittest {
    assert(MCRSalesPostageDiscountAgreementEntity);
  
    auto entity = MCRSalesPostageDiscountAgreementEntity;
  }
}
