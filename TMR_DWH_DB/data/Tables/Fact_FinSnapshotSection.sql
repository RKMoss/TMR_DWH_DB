CREATE TABLE [data].[Fact_FinSnapshotSection] (
    [PK_FinSnapshotSection]               INT             IDENTITY (-2000000000, 1) NOT NULL,
    [FK_DateID]                           INT             NOT NULL,
    [FK_ContractID]                       INT             NOT NULL,
    [FK_CompanyID]                        INT             NOT NULL,
    [FK_LocationID]                       INT             NOT NULL,
    [FK_CedantLocationID]                 INT             NOT NULL,
    [FK_BrokerID]                         INT             NOT NULL,
    [FK_ReportingUnitID]                  INT             NOT NULL,
    [FK_ClassOfBusinessID]                INT             NOT NULL,
    [FK_LineOfBusinessID]                 INT             NOT NULL,
    [FK_BrokerContactID]                  INT             NOT NULL,
    [FK_CedantID]                         INT             NOT NULL,
    [FK_RITypeID]                         INT             NOT NULL,
    [FK_RIProgramID]                      INT             NOT NULL,
    [FK_DerivativeID]                     INT             NOT NULL,
    [FK_CurrencyID]                       INT             NOT NULL,
    [FK_Reporting_CurrencyID]             INT             NOT NULL,
    [FK_RetroContractID]                  INT             NOT NULL,
    [FK_Retro_ReportingUnit_ID]           INT             NOT NULL,
    [FK_UnderwriterNameID]                INT             NOT NULL,
    [FK_SubClassID]                       INT             NOT NULL,
    [FK_EarningMethodID]                  INT             NOT NULL,
    [FK_BasisOfCoverageID]                INT             NOT NULL,
    [FK_OriginalCurrencyID]               INT             NOT NULL,
    [FK_CounterPartyID]                   INT             NULL,
    [FK_CessionPrcntID]                   INT             NULL,
    [FK_AssetManagerID]                   INT             NULL,
    [GrossFinalPremiumAdjustment]         DECIMAL (38, 2) NOT NULL,
    [GrossEarnedFinalPremiumAdjustment]   DECIMAL (38, 2) NOT NULL,
    [CededFinalPremiumAdjustment]         DECIMAL (38, 2) NOT NULL,
    [CededEarnedFinalPremiumAdjustment]   DECIMAL (38, 2) NOT NULL,
    [GrossNoClaimsBonus]                  DECIMAL (38, 2) NOT NULL,
    [GrossEarnedNoClaimsBonus]            DECIMAL (38, 2) NOT NULL,
    [CededNoClaimsBonus]                  DECIMAL (38, 2) NOT NULL,
    [CededEarnedNoClaimsBonus]            DECIMAL (38, 2) NOT NULL,
    [GrossPremium]                        DECIMAL (38, 2) NOT NULL,
    [GrossEarnedPremium]                  DECIMAL (38, 2) NOT NULL,
    [CededPremium]                        DECIMAL (38, 2) NOT NULL,
    [CededEarnedPremium]                  DECIMAL (38, 2) NOT NULL,
    [GrossReinstatementPremium]           DECIMAL (38, 2) NOT NULL,
    [GrossEarnedReinstatementPremium]     DECIMAL (38, 2) NOT NULL,
    [CededReinstatementPremium]           DECIMAL (38, 2) NOT NULL,
    [CededEarnedReinstatementPremium]     DECIMAL (38, 2) NOT NULL,
    [GrossRoundingErrors]                 DECIMAL (38, 2) NOT NULL,
    [GrossEarnedRoundingErrors]           DECIMAL (38, 2) NOT NULL,
    [CededRoundingErrors]                 DECIMAL (38, 2) NOT NULL,
    [CededEarnedRoundingErrors]           DECIMAL (38, 2) NOT NULL,
    [GrossBrokerage]                      DECIMAL (38, 2) NOT NULL,
    [GrossEarnedBrokerage]                DECIMAL (38, 2) NOT NULL,
    [CededBrokerage]                      DECIMAL (38, 2) NOT NULL,
    [CededEarnedBrokerage]                DECIMAL (38, 2) NOT NULL,
    [GrossCedingCommission]               DECIMAL (38, 2) NOT NULL,
    [GrossEarnedCedingCommission]         DECIMAL (38, 2) NOT NULL,
    [CededCedingCommission]               DECIMAL (38, 2) NOT NULL,
    [CededEarnedCedingCommission]         DECIMAL (38, 2) NOT NULL,
    [GrossTSMFrontingFee]                 DECIMAL (38, 2) NOT NULL,
    [GrossEarnedTSMFrontingFee]           DECIMAL (38, 2) NOT NULL,
    [CededTSMFrontingFee]                 DECIMAL (38, 2) NOT NULL,
    [CededEarnedTSMFrontingFee]           DECIMAL (38, 2) NOT NULL,
    [GrossFET]                            DECIMAL (38, 2) NOT NULL,
    [GrossEarnedFET]                      DECIMAL (38, 2) NOT NULL,
    [CededFET]                            DECIMAL (38, 2) NOT NULL,
    [CededEarnedFET]                      DECIMAL (38, 2) NOT NULL,
    [GrossInterestonFundsHeld]            DECIMAL (38, 2) NOT NULL,
    [GrossEarnedInterestonFundsHeld]      DECIMAL (38, 2) NOT NULL,
    [CededInterestonFundsHeld]            DECIMAL (38, 2) NOT NULL,
    [CededEarnedInterestonFundsHeld]      DECIMAL (38, 2) NOT NULL,
    [GrossProfitCommission]               DECIMAL (38, 2) NOT NULL,
    [GrossEarnedProfitCommission]         DECIMAL (38, 2) NOT NULL,
    [CededProfitCommission]               DECIMAL (38, 2) NOT NULL,
    [CededEarnedProfitCommission]         DECIMAL (38, 2) NOT NULL,
    [GrossCollateralOffsetFee]            DECIMAL (38, 2) NOT NULL,
    [GrossEarnedCollateralOffsetFee]      DECIMAL (38, 2) NOT NULL,
    [CededCollateralOffsetFee]            DECIMAL (38, 2) NOT NULL,
    [CededEarnedCollateralOffsetFee]      DECIMAL (38, 2) NOT NULL,
    [GrossDueDiligence]                   DECIMAL (38, 2) NOT NULL,
    [GrossEarnedDueDiligence]             DECIMAL (38, 2) NOT NULL,
    [CededDueDiligence]                   DECIMAL (38, 2) NOT NULL,
    [CededEarnedDueDiligence]             DECIMAL (38, 2) NOT NULL,
    [GrossLeverageFees]                   DECIMAL (38, 2) NOT NULL,
    [GrossEarnedLeverageFees]             DECIMAL (38, 2) NOT NULL,
    [CededLeverageFees]                   DECIMAL (38, 2) NOT NULL,
    [CededEarnedLeverageFees]             DECIMAL (38, 2) NOT NULL,
    [GrossOverridingCommission]           DECIMAL (38, 2) NOT NULL,
    [GrossEarnedOverridingCommission]     DECIMAL (38, 2) NOT NULL,
    [CededOverridingCommission]           DECIMAL (38, 2) NOT NULL,
    [CededEarnedOverridingCommission]     DECIMAL (38, 2) NOT NULL,
    [GrossOtherExpenses]                  DECIMAL (38, 2) NOT NULL,
    [GrossEarnedOtherExpenses]            DECIMAL (38, 2) NOT NULL,
    [CededOtherExpenses]                  DECIMAL (38, 2) NOT NULL,
    [CededEarnedOtherExpenses]            DECIMAL (38, 2) NOT NULL,
    [GrossOtherIncome]                    DECIMAL (38, 2) NOT NULL,
    [GrossEarnedOtherIncome]              DECIMAL (38, 2) NOT NULL,
    [CededOtherIncome]                    DECIMAL (38, 2) NOT NULL,
    [CededEarnedOtherIncome]              DECIMAL (38, 2) NOT NULL,
    [GrossTSMManagementFee]               DECIMAL (38, 2) NOT NULL,
    [GrossEarnedTSMManagementFee]         DECIMAL (38, 2) NOT NULL,
    [CededTSMManagementFee]               DECIMAL (38, 2) NOT NULL,
    [CededEarnedTSMManagementFee]         DECIMAL (38, 2) NOT NULL,
    [GrossSPC]                            DECIMAL (38, 2) NOT NULL,
    [GrossEarnedSPC]                      DECIMAL (38, 2) NOT NULL,
    [CededSPC]                            DECIMAL (38, 2) NOT NULL,
    [CededEarnedSPC]                      DECIMAL (38, 2) NOT NULL,
    [GrossOtherTax]                       DECIMAL (38, 2) NOT NULL,
    [GrossEarnedOtherTax]                 DECIMAL (38, 2) NOT NULL,
    [CededOtherTax]                       DECIMAL (38, 2) NOT NULL,
    [CededEarnedOtherTax]                 DECIMAL (38, 2) NOT NULL,
    [GrossTaxExpenses]                    DECIMAL (38, 2) NOT NULL,
    [GrossEarnedTaxExpenses]              DECIMAL (38, 2) NOT NULL,
    [CededTaxExpenses]                    DECIMAL (38, 2) NOT NULL,
    [CededEarnedTaxExpenses]              DECIMAL (38, 2) NOT NULL,
    [GrossUnclassified]                   DECIMAL (38, 2) NOT NULL,
    [GrossEarnedUnclassified]             DECIMAL (38, 2) NOT NULL,
    [CededUnclassified]                   DECIMAL (38, 2) NOT NULL,
    [CededEarnedUnclassified]             DECIMAL (38, 2) NOT NULL,
    [GrossAustralianWitholdingTax]        DECIMAL (38, 2) NOT NULL,
    [GrossEarnedAustralianWitholdingTax]  DECIMAL (38, 2) NOT NULL,
    [CededAustralianWitholdingTax]        DECIMAL (38, 2) NOT NULL,
    [CededEarnedAustralianWitholdingTax]  DECIMAL (38, 2) NOT NULL,
    [GrossGSTBrokerage]                   DECIMAL (38, 2) NOT NULL,
    [GrossEarnedGSTBrokerage]             DECIMAL (38, 2) NOT NULL,
    [CededGSTBrokerage]                   DECIMAL (38, 2) NOT NULL,
    [CededEarnedGSTBrokerage]             DECIMAL (38, 2) NOT NULL,
    [GrossGSTPremium]                     DECIMAL (38, 2) NOT NULL,
    [GrossEarnedGSTPremium]               DECIMAL (38, 2) NOT NULL,
    [CededGSTPremium]                     DECIMAL (38, 2) NOT NULL,
    [CededEarnedGSTPremium]               DECIMAL (38, 2) NOT NULL,
    [GrossRetroFET]                       DECIMAL (38, 2) NOT NULL,
    [GrossEarnedRetroFET]                 DECIMAL (38, 2) NOT NULL,
    [CededRetroFET]                       DECIMAL (38, 2) NOT NULL,
    [CededEarnedRetroFET]                 DECIMAL (38, 2) NOT NULL,
    [GrossPaidLAE]                        DECIMAL (38, 2) NOT NULL,
    [GrossEarnedPaidLAE]                  DECIMAL (38, 2) NOT NULL,
    [CededPaidLAE]                        DECIMAL (38, 2) NOT NULL,
    [CededEarnedPaidLAE]                  DECIMAL (38, 2) NOT NULL,
    [AssuemdPrem]                         DECIMAL (38, 2) NOT NULL,
    [AssumedCedingCommission]             DECIMAL (38, 2) NOT NULL,
    [AssumedBrokerage]                    DECIMAL (38, 2) NOT NULL,
    [AssumedProfitCommission]             DECIMAL (38, 2) NOT NULL,
    [AssumedOtherExpenses]                DECIMAL (38, 2) NOT NULL,
    [AssumedNoClaimsBonus]                DECIMAL (38, 2) NOT NULL,
    [GrossPremiumDepositRetained]         DECIMAL (38, 2) NOT NULL,
    [GrossEarnedPremiumDepositRetained]   DECIMAL (38, 2) NOT NULL,
    [CededPremiumDepositRetained]         DECIMAL (38, 2) NOT NULL,
    [CededEarnedPremiumDepositRetained]   DECIMAL (38, 2) NOT NULL,
    [GrossPremiumDepositReleased]         DECIMAL (38, 2) NOT NULL,
    [GrossEarnedPremiumDepositReleased]   DECIMAL (38, 2) NOT NULL,
    [CededPremiumDepositReleased]         DECIMAL (38, 2) NOT NULL,
    [CededEarnedPremiumDepositReleased]   DECIMAL (38, 2) NOT NULL,
    [GrossLossDepositRetained]            DECIMAL (38, 2) NOT NULL,
    [GrossEarnedLossDepositRetained]      DECIMAL (38, 2) NOT NULL,
    [CededLossDepositRetained]            DECIMAL (38, 2) NOT NULL,
    [CededEarnedLossDepositRetained]      DECIMAL (38, 2) NOT NULL,
    [GrossLossDepositReleased]            DECIMAL (38, 2) NOT NULL,
    [GrossEarnedLossDepositReleased]      DECIMAL (38, 2) NOT NULL,
    [CededLossDepositReleased]            DECIMAL (38, 2) NOT NULL,
    [CededEarnedLossDepositReleased]      DECIMAL (38, 2) NOT NULL,
    [GrossInterestOnPremiumDeposit]       DECIMAL (38, 2) NOT NULL,
    [GrossEarnedInterestOnPremiumDeposit] DECIMAL (38, 2) NOT NULL,
    [CededInterestOnPremiumDeposit]       DECIMAL (38, 2) NOT NULL,
    [CededEarnedInterestOnPremiumDeposit] DECIMAL (38, 2) NOT NULL,
    [GrossInterestOnLossDeposit]          DECIMAL (38, 2) NOT NULL,
    [GrossEarnedInterestOnLossDeposit]    DECIMAL (38, 2) NOT NULL,
    [CededInterestOnLossDeposit]          DECIMAL (38, 2) NOT NULL,
    [CededEarnedInterestOnLossDeposit]    DECIMAL (38, 2) NOT NULL,
    [GrossPortfolioInAccrual]             DECIMAL (38, 2) NOT NULL,
    [GrossEarnedPortfolioInAccrual]       DECIMAL (38, 2) NOT NULL,
    [CededPortfolioInAccrual]             DECIMAL (38, 2) NOT NULL,
    [CededEarnedPortfolioInAccrual]       DECIMAL (38, 2) NOT NULL,
    [GrossPortfolioOutAccrual]            DECIMAL (38, 2) NOT NULL,
    [GrossEarnedPortfolioOutAccrual]      DECIMAL (38, 2) NOT NULL,
    [CededPortfolioOutAccrual]            DECIMAL (38, 2) NOT NULL,
    [CededEarnedPortfolioOutAccrual]      DECIMAL (38, 2) NOT NULL,
    [GrossExchangeDifferences]            DECIMAL (38, 2) NOT NULL,
    [GrossEarnedExchangeDifferences]      DECIMAL (38, 2) NOT NULL,
    [CededExchangeDifferences]            DECIMAL (38, 2) NOT NULL,
    [CededEarnedExchangeDifferences]      DECIMAL (38, 2) NOT NULL,
    [GrossInuringPremium]                 DECIMAL (38, 2) NOT NULL,
    [GrossEarnedInuringPremium]           DECIMAL (38, 2) NOT NULL,
    [CededInuringPremium]                 DECIMAL (38, 2) NOT NULL,
    [CededEarnedInuringPremium]           DECIMAL (38, 2) NOT NULL,
    [GrossProtectionFees]                 DECIMAL (38, 2) NOT NULL,
    [GrossEarnedProtectionFees]           DECIMAL (38, 2) NOT NULL,
    [CededProtectionFees]                 DECIMAL (38, 2) NOT NULL,
    [CededEarnedProtectionFees]           DECIMAL (38, 2) NOT NULL,
    [GrossLossesPaid]                     DECIMAL (38, 2) NOT NULL,
    [CededLossesPaid]                     DECIMAL (38, 2) NOT NULL,
    [NetLossesPaid]                       DECIMAL (38, 2) NOT NULL,
    [GrossALAEPaid]                       DECIMAL (38, 2) NOT NULL,
    [CededALAEPaid]                       DECIMAL (38, 2) NOT NULL,
    [NetALAEPaid]                         DECIMAL (38, 2) NOT NULL,
    [GrossSSPaid]                         DECIMAL (38, 2) NOT NULL,
    [CededSSPaid]                         DECIMAL (38, 2) NOT NULL,
    [NetSSPaid]                           DECIMAL (38, 2) NOT NULL,
    [GrossCaseReserve]                    DECIMAL (38, 2) NOT NULL,
    [CededCaseReserve]                    DECIMAL (38, 2) NOT NULL,
    [NetCaseReserve]                      DECIMAL (38, 2) NOT NULL,
    [GrossCaseALAEReserve]                DECIMAL (38, 2) NOT NULL,
    [CededCaseALAEReserve]                DECIMAL (38, 2) NOT NULL,
    [NetCaseALAEReserve]                  DECIMAL (38, 2) NOT NULL,
    [GrossIBNR]                           DECIMAL (38, 2) NOT NULL,
    [CededIBNR]                           DECIMAL (38, 2) NOT NULL,
    [NetIBNR]                             DECIMAL (38, 2) NOT NULL,
    [GrossACR]                            DECIMAL (38, 2) NOT NULL,
    [CededACR]                            DECIMAL (38, 2) NOT NULL,
    [NetACR]                              DECIMAL (38, 2) NOT NULL,
    [GrossUnclassedAmt]                   DECIMAL (38, 2) NOT NULL,
    [CededUnclassedAmt]                   DECIMAL (38, 2) NOT NULL,
    [NetUnclassedAmt]                     DECIMAL (38, 2) NOT NULL,
    [FK_LayerID]                          INT             NULL,
    CONSTRAINT [PK_FinSnapshotSectionID] PRIMARY KEY CLUSTERED ([PK_FinSnapshotSection] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_AssetManagerID]
    ON [data].[Fact_FinSnapshotSection]([FK_AssetManagerID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_BasisOfCoverageID]
    ON [data].[Fact_FinSnapshotSection]([FK_BasisOfCoverageID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_BrokerContactID]
    ON [data].[Fact_FinSnapshotSection]([FK_BrokerContactID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_BrokerID]
    ON [data].[Fact_FinSnapshotSection]([FK_BrokerID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_CedantID]
    ON [data].[Fact_FinSnapshotSection]([FK_CedantID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_CedantLocationID]
    ON [data].[Fact_FinSnapshotSection]([FK_CedantLocationID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_CessionPrcntID]
    ON [data].[Fact_FinSnapshotSection]([FK_CessionPrcntID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_ClassOfBusinessID]
    ON [data].[Fact_FinSnapshotSection]([FK_ClassOfBusinessID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_CompanyID]
    ON [data].[Fact_FinSnapshotSection]([FK_CompanyID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_ContractID]
    ON [data].[Fact_FinSnapshotSection]([FK_ContractID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_CounterPartyID]
    ON [data].[Fact_FinSnapshotSection]([FK_CounterPartyID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_CurrencyID]
    ON [data].[Fact_FinSnapshotSection]([FK_CurrencyID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_DateID]
    ON [data].[Fact_FinSnapshotSection]([FK_DateID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_DerivativeID]
    ON [data].[Fact_FinSnapshotSection]([FK_DerivativeID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_EarningMethodID]
    ON [data].[Fact_FinSnapshotSection]([FK_EarningMethodID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_LayerID]
    ON [data].[Fact_FinSnapshotSection]([FK_LayerID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_LineOfBusinessID]
    ON [data].[Fact_FinSnapshotSection]([FK_LineOfBusinessID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_LocationID]
    ON [data].[Fact_FinSnapshotSection]([FK_LocationID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_OriginalCurrencyID]
    ON [data].[Fact_FinSnapshotSection]([FK_OriginalCurrencyID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_Reporting_CurrencyID]
    ON [data].[Fact_FinSnapshotSection]([FK_Reporting_CurrencyID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_ReportingUnitID]
    ON [data].[Fact_FinSnapshotSection]([FK_ReportingUnitID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_Retro_ReportingUnit_ID]
    ON [data].[Fact_FinSnapshotSection]([FK_Retro_ReportingUnit_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_RetroContractID]
    ON [data].[Fact_FinSnapshotSection]([FK_RetroContractID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_RIProgramID]
    ON [data].[Fact_FinSnapshotSection]([FK_RIProgramID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_RITypeID]
    ON [data].[Fact_FinSnapshotSection]([FK_RITypeID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_SubClassID]
    ON [data].[Fact_FinSnapshotSection]([FK_SubClassID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCINDX_FactSnapshotSection_UnderwriterNameID]
    ON [data].[Fact_FinSnapshotSection]([FK_UnderwriterNameID] ASC);


GO
CREATE NONCLUSTERED INDEX [NCUINDX_SnapshotTest]
    ON [data].[Fact_FinSnapshotSection]([FK_ContractID] ASC, [FK_DateID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UINDX_FactFinSnapshotSection_NatKey]
    ON [data].[Fact_FinSnapshotSection]([FK_DateID] ASC, [FK_Reporting_CurrencyID] ASC, [FK_ContractID] ASC, [FK_RetroContractID] ASC, [FK_CurrencyID] ASC, [FK_DerivativeID] ASC, [FK_OriginalCurrencyID] ASC, [FK_SubClassID] ASC);

