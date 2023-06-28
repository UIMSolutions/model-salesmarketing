module models.salesmarketing.entities.hmim.regulation;

import models.salesmarketing;

<<<<<<< HEAD
class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
=======
@safe:
class  DHMIMRegulationEntity : DEntity {
  mixin(EntityThis!("HMIMRegulationEntity"));
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "regCode": StringAttribute, //		SalesAndMarketing/HMIMRegulationEntity
        "description": StringAttribute, //		SalesAndMarketing/HMIMRegulationEntity
        "printAfter": StringAttribute, //		SalesAndMarketing/HMIMRegulationEntity
        "printBefore": StringAttribute, //		SalesAndMarketing/HMIMRegulationEntity
        "sequenceNumber": StringAttribute, //		SalesAndMarketing/HMIMRegulationEntity
        "printField": StringAttribute, //		SalesAndMarketing/HMIMRegulationEntity
        "printWithPrevious": StringAttribute, //		SalesAndMarketing/HMIMRegulationEntity
        "printCode": StringAttribute, //		SalesAndMarketing/HMIMRegulationEntity
        "backingTable_HMIMRegulationRelationshipId": StringAttribute, //		SalesAndMarketing/HMIMRegulationEntity
      ])
      .registerPath("salesmarketing.hmim.regulation");
  }
}
mixin(EntityCalls!("HMIMRegulationEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMRegulationEntity);
  
    auto entity = HMIMRegulationEntity;
  }
}
