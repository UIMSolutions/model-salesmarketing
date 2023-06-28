module models.salesmarketing.entities.pricediscs.multilinediscountcustomergroup;

import models.salesmarketing;

<<<<<<< HEAD:source/models/salesmarketing/entities/pricedisclines/multilinediscountcustomergroup.d
class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
=======
@safe:
class  DPriceDiscMultilineDiscountCustomerGroupEntity : DEntity {
  mixin(EntityThis!("PriceDiscMultilineDiscountCustomerGroupEntity"));
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb:source/models/salesmarketing/entities/pricediscs/multilinediscountcustomergroup.d
  
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
mixin(EntityCalls!("PriceDiscMultilineDiscountCustomerGroupEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(LogisticsLocationRoleEntity);
  
    auto entity = LogisticsLocationRoleEntity;
  }
}
