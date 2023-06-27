
module source.models.salesmarketing.entities.mcr.coupon.catalog;

import models.salesmarketing;

@safe:
class  DMCRCouponCatalogEntity : DEntity {
  mixin(EntityThis!("MCRCouponCatalogEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "catalogCode": StringAttribute,
        "couponId": UUIDAttribute,
        "catalogNumber": StringAttribute,
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute,
      ])
      .registerPath("salesmarketing_logistics.mcr.couponcatalogs");
  }
}
mixin(EntityCalls!("MCRCouponCatalogEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(MCRCouponCatalogEntity);
  
    auto entity = MCRCouponCatalogEntity;
  }
}
