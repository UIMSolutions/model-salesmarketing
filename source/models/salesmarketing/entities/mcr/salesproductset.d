module models.salesmarketing.entities.mcr.salesproductset;

@safe:
import models.salesmarketing;

class DMCRSalesProductSetEntity : DOOPEntity {
  mixin(EntityThis!("MCRSalesProductSetEntity"));
  
  override void initialize() {
    super.initialize;

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

version(test_modul_salesmarketing) {
  unittest {
    assert(MCRSalesProductSetEntity);
  
    auto entity = MCRSalesProductSetEntity;
  }
}
