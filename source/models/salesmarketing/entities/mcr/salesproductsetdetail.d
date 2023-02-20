module models.salesmarketing.entities.mcr.salesproductsetdetail;

@safe:
import models.salesmarketing;

class DMCRSalesProductSetDetailEntity : DOOPEntity {
  mixin(EntityThis!("MCRSalesProductSetDetailEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "itemNumber": StringAttribute,
        "productConfigurationId": UUIDAttribute,
        "productSizeId": UUIDAttribute,
        "productColorId": UUIDAttribute,
        "productStyleId": UUIDAttribute,
        "productVersionId": UUIDAttribute,
        "orderedSalesQuantity": StringAttribute,
        "salesUnitSymbol": StringAttribute,
        "salesProductSetNumber": StringAttribute,
        "customerAccountNumber": StringAttribute,
        "backingTable_MCRItemListLineRelationshipId": UUIDAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,
      ])
      .registerPath("salesmarketing_mcr.salesproductsetdetails");
  }
}
mixin(EntityCalls!("MCRSalesProductSetDetailEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(MCRSalesProductSetDetailEntity);
  
    auto entity = MCRSalesProductSetDetailEntity;
  }
}
