module models.salesmarketing.entities.deliveryreason;

import models.salesmarketing;

<<<<<<< HEAD
class DLogisticsLocationRoleEntity : DEntity {
  mixin(EntityThis!("LogisticsLocationRoleEntity"));
=======
@safe:
class  DDeliveryReasonEntity : DEntity {
  mixin(EntityThis!("DeliveryReasonEntity"));
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "reasonCode": StringAttribute, ///		SalesAndMarketing/DeliveryReasonEntity
        "reasonDescription": StringAttribute, ///		SalesAndMarketing/DeliveryReasonEntity
        "free_IT": StringAttribute, ///		SalesAndMarketing/DeliveryReasonEntity
        "invoiceAccount_IT": StringAttribute, ///		SalesAndMarketing/DeliveryReasonEntity
        "paymTermId_IT": StringAttribute, ///		SalesAndMarketing/DeliveryReasonEntity
        "backingTable_DlvReasonRelationshipId": StringAttribute, ///		SalesAndMarketing/DeliveryReasonEntity
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, ///		SalesAndMarketing/DeliveryReasonEntity
      ])
      .registerPath("salesmarketing.deliveryreason");
  }
}
mixin(EntityCalls!("DeliveryReasonEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(DeliveryReasonEntity);
  
    auto entity = DeliveryReasonEntity;
  }
}
