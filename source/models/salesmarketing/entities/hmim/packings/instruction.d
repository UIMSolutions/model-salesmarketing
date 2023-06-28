module models.salesmarketing.entities.hmim.packings.instruction;

import models.salesmarketing;

<<<<<<< HEAD
class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
=======
@safe:
class  DHMIMPackingInstructionEntity : DEntity {
  mixin(EntityThis!("HMIMPackingInstructionEntity"));
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "pacbkInstCode": StringAttribute, 		// SalesAndMarketing/HMIMPackingInstructionEntity
        "description": StringAttribute, 		// SalesAndMarketing/HMIMPackingInstructionEntity
        "backingTable_HMIMPackingInstructionRelationshipId": StringAttribute, 		// SalesAndMarketing/HMIMPackingInstructionEntity
      ])
      .registerPath("salesmarketing.hmim.packings.instruction");
  }
}
mixin(EntityCalls!("HMIMPackingInstructionEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMPackingInstructionEntity);
  
    auto entity = HMIMPackingInstructionEntity;
  }
}
