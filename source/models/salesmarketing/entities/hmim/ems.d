module models.salesmarketing.entities.hmim.ems;

import models.salesmarketing;

<<<<<<< HEAD
class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
=======
@safe:
class  DHMIMEMSEntity : DEntity {
  mixin(EntityThis!("HMIMEMSEntity"));
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  
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
