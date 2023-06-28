module source.models.salesmarketing.entities.pricediscs.tradeagreementjournalname;

import models.salesmarketing;

@safe:
class  DPriceDiscTradeAgreementJournalNameEntity : DEntity {
  mixin(EntityThis!("PriceDiscTradeAgreementJournalNameEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "groupCode": StringAttribute, //		SalesAndMarketing/PriceDiscTotalDiscountCustomerGroupEntity
        "groupName": StringAttribute, //		SalesAndMarketing/PriceDiscTotalDiscountCustomerGroupEntity
        "backingTable_PriceDiscGroupRelationshipId": StringAttribute, //		SalesAndMarketing/PriceDiscTotalDiscountCustomerGroupEntity
        "belationship_PrimaryCompanyContextRelationshipId": StringAttribute, //		SalesAndMarketing/PriceDiscTotalDiscountCustomerGroupEntity
      ])
      .registerPath("salesandmarketing.pricediscs.tradeagreementjournalname");
  }
}
mixin(EntityCalls!("PriceDiscTradeAgreementJournalNameEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(PriceDiscSalesTradeAgreementActivationEntity);
  
    auto entity = PriceDiscSalesTradeAgreementActivationEntity;
  }
}
