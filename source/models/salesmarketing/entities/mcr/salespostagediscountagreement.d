
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
        "inventDimId": StringAttribute,
        "itemCode": StringAttribute,
        "itemRelation": StringAttribute,
        "discountPercentage1": StringAttribute,
        "discountPercentage2": StringAttribute,
        "fromQuantity": StringAttribute,
        "toQuantity": StringAttribute,
        "willSearchContinue": StringAttribute,
        "discountApplicableToDate": StringAttribute,
        "quantityUnitSymbol": StringAttribute,
        "recordId": StringAttribute,
        "customerAccountNumber": StringAttribute,
        "postageDiscountCustomerGroupCode": StringAttribute,
        "itemNumber": StringAttribute,
        "productConfigurationId": StringAttribute,
        "productColorId": StringAttribute,
        "productSizeId": StringAttribute,
        "productStyleId": StringAttribute,
        "productVersionId": StringAttribute,
        "piscountSiteId": StringAttribute,
        "piscountWarehouseId": StringAttribute,
        "productNumber": StringAttribute,
        "backingTable_PriceDiscTableRelationshipId": StringAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute,
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
