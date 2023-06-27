module models.salesmarketing.entities.mcr.salesproductset;

import models.salesmarketing;

@safe:
class  DMCRSalesProductSetEntity : DEntity {
  mixin(EntityThis!("MCRSalesProductSetEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "productSetNumber": StringAttribute,
        "productSetDescription": StringAttribute,
        "customerAccountNumber": StringAttribute,
        "backingTable_MCRItemListTableRelationshipId": UUIDAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,
      ])
      .registerPath("salesmarketing_mcr.salesproductsets");
  }
}
mixin(EntityCalls!("MCRSalesProductSetEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(MCRSalesProductSetEntity);
  
    auto entity = MCRSalesProductSetEntity;
  }
}
