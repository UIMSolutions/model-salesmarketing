module models.salesmarketing.entities.hmim.packings.group;

@safe:
import models.salesmarketing;

class DHMIMPackingGroupEntity : DEntity {
  mixin(EntityThis!("HMIMPackingGroupEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "packGroupCode": StringAttribute, //		SalesAndMarketing/HMIMPackDescriptionEntity
        "description": StringAttribute, //		SalesAndMarketing/HMIMPackDescriptionEntity
        "backingTable_HMIMPackingGroupRelationshipId": StringAttribute, //		SalesAndMarketing/HMIMPackDescriptionEntity      
      ])
      .registerPath("salesmarketing.hmim.packings.group");
  }
}
mixin(EntityCalls!("HMIMPackingGroupEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMPackingGroupEntity);
  
    auto entity = HMIMPackingGroupEntity;
  }
}
