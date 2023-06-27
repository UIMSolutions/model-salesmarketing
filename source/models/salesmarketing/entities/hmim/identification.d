module models.salesmarketing.entities.hmim.identification;

@safe:
import models.salesmarketing;

class DHMIMIdentificationEntity : DEntity {
  mixin(EntityThis!("HMIMIdentificationEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "identificationCode": StringAttribute, 
        "description": StringAttribute, 
        "restrictAir": StringAttribute, 
        "restrictSea": StringAttribute, 
        "backingTable_HMIMIdentificationRelationshipId": UUIDAttribute,       
      ])
      .registerPath("salesmarketing.hmim.identification");
  }
}
mixin(EntityCalls!("HMIMIdentificationEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(HMIMIdentificationEntity);
  
    auto entity = HMIMIdentificationEntity;
  }
}
