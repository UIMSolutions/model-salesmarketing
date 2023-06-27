module models.salesmarketing.entities.hmim.class_;

import models.salesmarketing;

@safe:
class  DHMIMClassEntity : DEntity {
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
