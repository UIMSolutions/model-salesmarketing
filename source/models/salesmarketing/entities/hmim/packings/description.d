module models.salesmarketing.entities.hmim.packing.description;

@safe:
import models.salesmarketing;

class DHMIMPackDescriptionEntity : DEntity {
  mixin(EntityThis!("HMIMPackDescriptionEntity"));
  
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
