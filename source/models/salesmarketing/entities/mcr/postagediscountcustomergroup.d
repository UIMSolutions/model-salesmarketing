
module models.salesmarketing.entities.mcr.postagediscountcustomergroup;

@safe:
import models.salesmarketing;

class DMCRPostageDiscountCustomerGroupEntity : DEntity {
  mixin(EntityThis!("MCRPostageDiscountCustomerGroupEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "groupCode": StringAttribute,
        "groupName": StringAttribute,
        "backingTable_PriceDiscGroupRelationshipId": UUIDAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,
      ])
      .registerPath("salesmarketing_mcr.postagediscountcustomergroups");
  }
}
mixin(EntityCalls!("MCRPostageDiscountCustomerGroupEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(MCRPostageDiscountCustomerGroupEntity);
  
    auto entity = MCRPostageDiscountCustomerGroupEntity;
  }
}
