
module source.models.salesmarketing.entities.mcr.coupon.catalog;

import models.salesmarketing;

<<<<<<< HEAD:source/models/salesmarketing/entities/mcr/couponcatalog.d
class DMCRCouponCatalogEntity : DEntity {
=======
@safe:
class  DMCRCouponCatalogEntity : DEntity {
>>>>>>> 8b27b7190cf4fd33dee4f46a1a44092c61660deb:source/models/salesmarketing/entities/mcr/coupon/catalog.d
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
