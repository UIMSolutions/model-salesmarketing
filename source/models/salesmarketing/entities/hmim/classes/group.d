module models.salesmarketing.entities.hmim.classgroup;

@safe:
import models.salesmarketing;

class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("HMIMClassGroupEntity"));
  
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
