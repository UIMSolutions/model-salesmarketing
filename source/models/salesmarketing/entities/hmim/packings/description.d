module models.salesmarketing.entities.hmim.packing.description;

import models.salesmarketing;

<<<<<<< HEAD
class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
=======
@safe:
class  DHMIMPackDescriptionEntity : DEntity {
  mixin(EntityThis!("HMIMPackDescriptionEntity"));
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "packCode": StringAttribute, //		SalesAndMarketing/HMIMPackDescriptionEntity
        "description": StringAttribute, //		SalesAndMarketing/HMIMPackDescriptionEntity
        "backingTable_HMIMPackDescriptionRelationshipId": StringAttribute, //		SalesAndMarketing/HMIMPackDescriptionEntity      
      ])
      .registerPath("salesmarketing.hmim.packdescription");
  }
}
mixin(EntityCalls!("HMIMPackDescriptionEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMPackDescriptionEntity);
  
    auto entity = HMIMPackDescriptionEntity;
  }
}
