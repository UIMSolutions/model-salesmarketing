module models.salesmarketing.entities.hmim.stowage;

import models.salesmarketing;

@safe:
class DHMIMStowageEntity : DEntity {
  mixin(EntityThis!("HMIMStowageEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "purpose": StringAttribute, //
        "postalAddress": StringAttribute, //
        "contactInfo": StringAttribute, //
        "language": StringAttribute, //
        "type": StringAttribute, //
        "backingTable_LogisticsLocationRoleTranslationRelationshipId": StringAttribute, //
      ])
      .registerPath("salesmarketing_logistics.locationroles");
  }
}
mixin(EntityCalls!("HMIMStowageEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMStowageEntity);
  
    auto entity = HMIMStowageEntity;
  }
}
