module models.salesmarketing.entities.hmim.packings.instruction;

import models.salesmarketing;

@safe:
class  DHMIMPackingInstructionEntity : DEntity {
  mixin(EntityThis!("HMIMPackingInstructionEntity"));
  
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
