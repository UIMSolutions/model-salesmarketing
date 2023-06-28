module source.models.salesmarketing.entities.pricediscs.salestradeagreementactivation;

import models.salesmarketing;

<<<<<<< HEAD:source/models/salesmarketing/entities/mcr/couponsalesorder.d
class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
=======
@safe:
class  DPriceDiscSalesTradeAgreementActivationEntity : DEntity {
  mixin(EntityThis!("PriceDiscSalesTradeAgreementActivationEntity"));
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb:source/models/salesmarketing/entities/pricediscs/salestradeagreementactivation.d
  
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
