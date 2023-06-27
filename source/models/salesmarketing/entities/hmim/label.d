module models.salesmarketing.entities.hmim.label;

import models.salesmarketing;
@safe:

class DHMIMLabelEntity : DEntity {
  mixin(EntityThis!("HMIMLabelEntity"));
  
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
