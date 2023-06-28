module models.salesmarketing.entities.hmim.label;

import models.salesmarketing;
@safe:

<<<<<<< HEAD
class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
=======
class DHMIMLabelEntity : DEntity {
  mixin(EntityThis!("HMIMLabelEntity"));
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "labelCode": StringAttribute, // 		SalesAndMarketing/HMIMLabelEntity
        "description": StringAttribute, // 		SalesAndMarketing/HMIMLabelEntity
        "backingTable_HMIMLabelRelationshipId": StringAttribute, // 		SalesAndMarketing/HMIMLabelEntity
      ])
      .registerPath("salesmarketing.hmim.label");
  }
}
mixin(EntityCalls!("HMIMLabelEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMLabelEntity);
  
    auto entity = HMIMLabelEntity;
  }
}
