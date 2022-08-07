module models.salesmarketing.entities.hmim.class_;

@safe:
import models.salesmarketing;

class DHMIMClassEntity : DOOPEntity {
  mixin(EntityThis!("HMIMClassEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "ClassCode": StringAttribute,
        "Description": StringAttribute,
        "BackingTable_HMIMClassRelationshipId": StringAttribute,      
      ])
      .registerPath("addressbooks_logistics.locationroles");
  }
}
mixin(EntityCalls!("HMIMClassEntity"));

version(test_library) {
  unittest {
    assert(HMIMClassEntity);
  
    auto entity = HMIMClassEntity;
  }
}
