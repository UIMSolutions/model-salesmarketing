module models.salesmarketing.entities.hmim.technicalname;

import models.salesmarketing;

@safe:
class  DHMIMTechnicalNameEntityy : DEntity {
  mixin(EntityThis!("HMIMTechnicalNameEntity"));
  
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
