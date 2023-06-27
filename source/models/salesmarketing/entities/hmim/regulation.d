module models.salesmarketing.entities.hmim.regulation;

@safe:
import models.salesmarketing;

class DHMIMRegulationEntity : DEntity {
  mixin(EntityThis!("HMIMRegulationEntity"));
  
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
