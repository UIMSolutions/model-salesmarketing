module models.salesmarketing.entities.pricedisc.linediscountcustomergroup;

@safe:
import models.salesmarketing;

class DPriceDiscLineDiscountCustomerGroupEntity : DOOPEntity {
  mixin(EntityThis!("PriceDiscLineDiscountCustomerGroupEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "groupCode": StringAttribute, //		SalesAndMarketing/PriceDiscLineDiscountCustomerGroupEntity
        "groupName": StringAttribute, //		SalesAndMarketing/PriceDiscLineDiscountCustomerGroupEntity
        "backingTable_PriceDiscGroupRelationshipId": StringAttribute, //		SalesAndMarketing/PriceDiscLineDiscountCustomerGroupEntity
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute //		SalesAndMarketing/PriceDiscLineDiscountCustomerGroupEntity
      ])
      .registerPath("salesmarketing.pricedisclines.discountcustomergroupentity");
  }
}
mixin(EntityCalls!("PriceDiscLineDiscountCustomerGroupEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(LogisticsLocationRoleEntity);
  
    auto entity = LogisticsLocationRoleEntity;
  }
}
