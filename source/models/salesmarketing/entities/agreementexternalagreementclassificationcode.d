module models.salesmarketing.entities.agreementexternalagreementclassificationcode;

@safe:
import models.salesmarketing;

class DAgreementExternalAgreementClassificationCodeEntity : DEntity {
  mixin(EntityThis!("AgreementExternalAgreementClassificationCodeEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "codeDefinition": StringAttribute, //		SalesAndMarketing/AgreementExternalAgreementClassificationCodeEntity
        "codeDescription": StringAttribute, //		SalesAndMarketing/AgreementExternalAgreementClassificationCodeEntity
        "codeId": StringAttribute, //		SalesAndMarketing/AgreementExternalAgreementClassificationCodeEntity
        "isStandardCode": StringAttribute, //		SalesAndMarketing/AgreementExternalAgreementClassificationCodeEntity
        "backingTable_ExtCodeTableRelationshipId": StringAttribute, //		SalesAndMarketing/AgreementExternalAgreementClassificationCodeEntity        
      ])
      .registerPath("salesmarketing.agreementexternalagreementclassificationcode");
  }
}
mixin(EntityCalls!("AgreementExternalAgreementClassificationCodeEntity"));

version(test_modul_salesmarketing) { unittest {
    assert(LogisticsLocationRoleEntity);
  
    auto entity = LogisticsLocationRoleEntity;
  }
}
