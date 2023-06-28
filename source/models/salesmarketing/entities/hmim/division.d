module models.salesmarketing.entities.hmim.division;

import models.salesmarketing;

<<<<<<< HEAD
class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
=======
@safe:
class  DHMIMDivisionEntity : DEntity {
  mixin(EntityThis!("HMIMDivisionEntity"));
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "divisionCode": StringAttribute, //		SalesAndMarketing/HMIMDivisionEntity
        "description": StringAttribute, //		SalesAndMarketing/HMIMDivisionEntity
        "classCode": StringAttribute, //		SalesAndMarketing/HMIMDivisionEntity
        "backingTable_HMIMDivisionRelationshipId": StringAttribute, //		SalesAndMarketing/HMIMDivisionEntity
      ])
      .registerPath("salesmarketing.hmim.division");
  }
}
mixin(EntityCalls!("HMIMDivisionEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMDivisionEntity);
  
    auto entity = HMIMDivisionEntity;
  }
}
