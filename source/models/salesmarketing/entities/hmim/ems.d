module models.salesmarketing.entities.hmim.ems;

import models.salesmarketing;

@safe:
class  DHMIMEMSEntity : DEntity {
  mixin(EntityThis!("HMIMEMSEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "emsSCode": StringAttribute, // SalesAndMarketing/HMIMEMSEntity
        "description": StringAttribute, // SalesAndMarketing/HMIMEMSEntity
        "backingTable_HMIMEMSRelationshipId": StringAttribute, // SalesAndMarketing/HMIMEMSEntity
      ])
      .registerPath("salesmarketing.hmim.ems");
  }
}
mixin(EntityCalls!("HMIMEMSEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMEMSEntity);
  
    auto entity = HMIMEMSEntity;
  }
}
