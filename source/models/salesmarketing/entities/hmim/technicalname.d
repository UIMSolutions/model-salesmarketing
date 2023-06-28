module models.salesmarketing.entities.hmim.technicalname;

import models.salesmarketing;

<<<<<<< HEAD
class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
=======
@safe:
class  DHMIMTechnicalNameEntityy : DEntity {
  mixin(EntityThis!("HMIMTechnicalNameEntity"));
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "technicalNameCode": StringAttribute, //		SalesAndMarketing/HMIMTechnicalNameEntity
        "description": StringAttribute, //		SalesAndMarketing/HMIMTechnicalNameEntity
        "backingTable_HMIMTechnicalNameRelationshipId": StringAttribute, //		SalesAndMarketing/HMIMTechnicalNameEntity
      ])
      .registerPath("salesmarketing.hmim.technicalname");
  }
}
mixin(EntityCalls!("HMIMTechnicalNameEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMTechnicalNameEntity);
  
    auto entity = HMIMTechnicalNameEntity;
  }
}
