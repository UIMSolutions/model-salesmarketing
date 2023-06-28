module models.salesmarketing.entities.customers.priorityclassifications.group;

import models.salesmarketing;

<<<<<<< HEAD
class DCustomerPriorityClassificationGroupEntity : DEntity {
=======
@safe:
class  DCustomerPriorityClassificationGroupEntity : DEntity {
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  mixin(EntityThis!("CustomerPriorityClassificationGroupEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "CustomerPriorityClassificationGroupCode": StringAttribute,
        "Description": StringAttribute,
        "BackingTable_CustClassificationGroupRelationshipId": UUIDAttribute,
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,
      ])
      .registerPath("salesmarketing_logistics.locationroles");
  }
}
mixin(EntityCalls!("CustomerPriorityClassificationGroupEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(CustomerPriorityClassificationGroupEntity);
  
    auto entity = CustomerPriorityClassificationGroupEntity;
  }
}
