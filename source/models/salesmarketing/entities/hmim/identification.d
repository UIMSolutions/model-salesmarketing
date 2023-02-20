module models.salesmarketing.entities.hmim.identification;

@safe:
import models.salesmarketing;

class DHMIMIdentificationEntity : DOOPEntity {
  mixin(EntityThis!("HMIMIdentificationEntity"));
  
  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "IdentificationCode": StringAttribute, 
        "Description": StringAttribute, 
        "RestrictAir": StringAttribute, 
        "RestrictSea": StringAttribute, 
        "BackingTable_HMIMIdentificationRelationshipId": UUIDAttribute,       
      ])
      .registerPath("salesmarketing_logistics.locationroles");
  }
}
mixin(EntityCalls!("HMIMIdentificationEntity"));

version(test_modul_salesmarketing) {
  unittest {
    assert(HMIMIdentificationEntity);
  
    auto entity = HMIMIdentificationEntity;
  }
}
