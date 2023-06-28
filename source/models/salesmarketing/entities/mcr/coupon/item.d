
module source.models.salesmarketing.entities.mcr.coupon.item;

import models.salesmarketing;

<<<<<<< HEAD:source/models/salesmarketing/entities/mcr/coupondiscount.d
class DLogisticsLocationRoleEntity : DEntity {
=======
@safe:
class  DLogisticsLocationRoleEntity : DEntity {
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb:source/models/salesmarketing/entities/mcr/coupon/item.d
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
  
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
mixin(EntityCalls!("LogisticsLocationRoleEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(LogisticsLocationRoleEntity);
  
    auto entity = LogisticsLocationRoleEntity;
  }
}
