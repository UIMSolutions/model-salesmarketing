module models.salesmarketing.entities.hmim.classgroup;

import models.salesmarketing;

<<<<<<< HEAD
class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
=======
@safe:
class  DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("HMIMClassGroupEntity"));
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "classGroupCode": StringAttribute, //		SalesAndMarketing/HMIMClassGroupEntity
        "description": StringAttribute, //		SalesAndMarketing/HMIMClassGroupEntity
        "classCode": StringAttribute, //		SalesAndMarketing/HMIMClassGroupEntity
        "divisionCode": StringAttribute, //		SalesAndMarketing/HMIMClassGroupEntity
        "packingGroupCode": StringAttribute, //		SalesAndMarketing/HMIMClassGroupEntity
        "transportCategoryCode": StringAttribute, //		SalesAndMarketing/HMIMClassGroupEntity
        "multiplier": StringAttribute, //		SalesAndMarketing/HMIMClassGroupEntity
        "backingTable_HMIMClassGroupRelationshipId": StringAttribute, //		SalesAndMarketing/HMIMClassGroupEntity
      ])
      .registerPath("salesmarketing.hmim.classgroup");
  }
}
mixin(EntityCalls!("HMIMClassGroupEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMClassGroupEntity);
  
    auto entity = HMIMClassGroupEntity;
  }
}
