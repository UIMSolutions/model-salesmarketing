
module models.salesmarketing.entities.mcr.postagediscountcustomergroup;

import models.salesmarketing;

<<<<<<< HEAD
class DMCRPostageDiscountCustomerGroupEntity : DEntity {
=======
@safe:
class  DMCRPostageDiscountCustomerGroupEntity : DEntity {
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
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
