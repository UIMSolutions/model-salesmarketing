module models.salesmarketing.entities.hmim.class_;

@safe:
import models.salesmarketing;

class DHMIMClassEntity : DOOPEntity {
  mixin(EntityThis!("HMIMClassEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "classCode": StringAttribute,
        "backingTable_HMIMClassRelationshipId": UUIDAttribute,      
      ])
      .registerPath("salesmarketing_hmim.classes");
  }
}
mixin(EntityCalls!("HMIMClassEntity"));

version(test_library) {
  unittest {
    assert(HMIMClassEntity);
  
    auto entity = HMIMClassEntity;
  }
}
