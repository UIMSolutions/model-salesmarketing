
module models.salesmarketing.entities.mcr.couponcatalog;

@safe:
import models.salesmarketing;

class DMCRCouponCatalogEntity : DOOPEntity {
  mixin(EntityThis!("MCRCouponCatalogEntity"));
  
  override void initialize() {
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

version(test_modul_salesmarketing) {
  unittest {
    assert(MCRCouponCatalogEntity);
  
    auto entity = MCRCouponCatalogEntity;
  }
}
