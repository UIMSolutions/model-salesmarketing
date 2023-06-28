module models.salesmarketing.entities.hmim.class_;

import models.salesmarketing;

<<<<<<< HEAD
class DHMIMClassEntity : DEntity {
=======
@safe:
class  DHMIMClassEntity : DEntity {
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  mixin(EntityThis!("HMIMClassEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "classCode": StringAttribute,
        "backingTable_HMIMClassRelationshipId": UUIDAttribute,      
      ])
      .registerPath("salesmarketing.hmim.class");
  }
}
mixin(EntityCalls!("HMIMClassEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMClassEntity);
  
    auto entity = HMIMClassEntity;
  }
}
