module models.salesmarketing.entities.pricediscmultilinediscountcustomergroupentity;

@safe:
import models.salesmarketing;

class DPriceDiscMultilineDiscountCustomerGroupEntity : DEntity {
  mixin(EntityThis!("PriceDiscMultilineDiscountCustomerGroupEntity"));
  
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
