module source.models.salesmarketing.entities.pricediscs.salestradeagreementactivation;

import models.salesmarketing;

@safe:
class  DPriceDiscSalesTradeAgreementActivationEntity : DEntity {
  mixin(EntityThis!("PriceDiscSalesTradeAgreementActivationEntity"));
  
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
      .registerPath("salesmarketing.pricediscs.salestradeagreementactivation");
  }
}
mixin(EntityCalls!("PriceDiscSalesTradeAgreementActivationEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(PriceDiscSalesTradeAgreementActivationEntity);
  
    auto entity = PriceDiscSalesTradeAgreementActivationEntity;
  }
}
