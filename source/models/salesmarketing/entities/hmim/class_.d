module models.salesmarketing.entities.hmim.class_;

@safe:
import models.salesmarketing;

class DLogisticsLocationRoleEntity : DOOPEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
purpose		GAB/LogisticsLocationRoleEntity
postalAddress		GAB/LogisticsLocationRoleEntity
contactInfo		GAB/LogisticsLocationRoleEntity
language		GAB/LogisticsLocationRoleEntity
type		GAB/LogisticsLocationRoleEntity
backingTable_LogisticsLocationRoleTranslationRelationshipId		GAB/LogisticsLocationRoleEntity
      ])
      .registerPath("addressbooks_logistics.locationroles");
  }
}
mixin(EntityCalls!("LogisticsLocationRoleEntity"));

version(test_library) {
  unittest {
    assert(LogisticsLocationRoleEntity);
  
    auto entity = LogisticsLocationRoleEntity;
  }
}
