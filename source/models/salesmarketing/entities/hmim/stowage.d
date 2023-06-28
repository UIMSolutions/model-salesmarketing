module models.salesmarketing.entities.hmim.stowage;

import models.salesmarketing;

<<<<<<< HEAD
class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
=======
@safe:
class DHMIMStowageEntity : DEntity {
  mixin(EntityThis!("HMIMStowageEntity"));
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "stowageCode": StringAttribute, //		SalesAndMarketing/HMIMStowageEntity
        "description": StringAttribute, //		SalesAndMarketing/HMIMStowageEntity
        "backingTable_HMIMStowageRelationshipId": StringAttribute, //		SalesAndMarketing/HMIMStowageEntity
      ])
      .registerPath("salesmarketing.hmim.stowage");
  }
}
mixin(EntityCalls!("HMIMStowageEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMStowageEntity);
  
    auto entity = HMIMStowageEntity;
  }
}
