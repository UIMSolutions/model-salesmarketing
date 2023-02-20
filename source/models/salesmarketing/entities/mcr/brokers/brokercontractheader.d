module models.salesmarketing.entities.mcr.brokers.brokercontractheader;

module models.salesmarketing.entities.agreementexternalagreementclassificationcod;

@safe:
import models.salesmarketing;

class DLogisticsLocationRoleEntity : DOOPEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
  
  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
purpose		GAB/LogisticsLocationRoleEntity
postalAddress		GAB/LogisticsLocationRoleEntity
contactInfo		GAB/LogisticsLocationRoleEntity
language		GAB/LogisticsLocationRoleEntity
type		GAB/LogisticsLocationRoleEntity
backingTable_LogisticsLocationRoleTranslationRelationshipId		GAB/LogisticsLocationRoleEntity
      ])
      .registerPath("salesmarketing_logistics.locationroles");
  }
}
mixin(EntityCalls!("LogisticsLocationRoleEntity"));

version(test_modul_salesmarketing) {
  unittest {
    assert(LogisticsLocationRoleEntity);
  
    auto entity = LogisticsLocationRoleEntity;
  }
}
