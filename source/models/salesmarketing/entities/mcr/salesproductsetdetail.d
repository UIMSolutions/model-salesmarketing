module models.salesmarketing.entities.mcr.salesproductsetdetail;

import models.salesmarketing;

<<<<<<< HEAD
class DMCRSalesProductSetDetailEntity : DEntity {
=======
@safe:
class  DMCRSalesProductSetDetailEntity : DEntity {
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
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
