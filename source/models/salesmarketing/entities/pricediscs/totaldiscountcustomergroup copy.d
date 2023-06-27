module source.models.salesmarketing.entities.pricediscs.totaldiscountcustomergroup;

@safe:
import models.salesmarketing;

class DPriceDiscTotalDiscountCustomerGroupEntity : DEntity {
  mixin(EntityThis!("PriceDiscTotalDiscountCustomerGroupEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "groupCode": StringAttribute, //		SalesAndMarketing/PriceDiscTotalDiscountCustomerGroupEntity
        "groupName": StringAttribute, //		SalesAndMarketing/PriceDiscTotalDiscountCustomerGroupEntity
        "backingTable_PriceDiscGroupRelationshipId": StringAttribute, //		SalesAndMarketing/PriceDiscTotalDiscountCustomerGroupEntity
        "belationship_PrimaryCompanyContextRelationshipId": StringAttribute, //		SalesAndMarketing/PriceDiscTotalDiscountCustomerGroupEntity
      ])
      .registerPath("salesmarketing.pricediscs.salestradeagreementactivation");
  }
}
mixin(EntityCalls!("PriceDiscTotalDiscountCustomerGroupEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(PriceDiscSalesTradeAgreementActivationEntity);
  
    auto entity = PriceDiscSalesTradeAgreementActivationEntity;
  }
}
