module models.salesmarketing.entities.hmim.identification;

import models.salesmarketing;

<<<<<<< HEAD
class DHMIMIdentificationEntity : DEntity {
=======
@safe:
class  DHMIMIdentificationEntity : DEntity {
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
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
