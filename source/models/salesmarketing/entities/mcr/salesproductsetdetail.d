module models.salesmarketing.entities.mcr.salesproductsetdetail;

@safe:
import models.salesmarketing;

class DMCRSalesProductSetDetailEntity : DOOPEntity {
  mixin(EntityThis!("MCRSalesProductSetDetailEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "itemNumber": StringAttribute,
        "productConfigurationId": StringAttribute,
        "productSizeId": StringAttribute,
        "productColorId": StringAttribute,
        "productStyleId": StringAttribute,
        "productVersionId": StringAttribute,
        "orderedSalesQuantity": StringAttribute,
        "salesUnitSymbol": StringAttribute,
        "salesProductSetNumber": StringAttribute,
        "customerAccountNumber": StringAttribute,
        "backingTable_MCRItemListLineRelationshipId": StringAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute,
      ])
      .registerPath("salesmarketing_mcr.salesproductsetdetails");
  }
}
mixin(EntityCalls!("MCRSalesProductSetDetailEntity"));

version(test_modul_salesmarketing) {
  unittest {
    assert(MCRSalesProductSetDetailEntity);
  
    auto entity = MCRSalesProductSetDetailEntity;
  }
}
