module models.salesmarketing.entities.hmim.stowage;

import models.salesmarketing;

@safe:
class DHMIMStowageEntity : DEntity {
  mixin(EntityThis!("HMIMStowageEntity"));
  
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
