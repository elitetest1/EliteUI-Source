.class public Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
.super Ljava/lang/Object;
.source "BaseTemplateData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mLayoutWeight:I

.field private blacklist mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private blacklist mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private blacklist mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private blacklist mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private blacklist mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private final blacklist mTemplateType:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mTemplateType:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mLayoutWeight:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
    .locals 8

    new-instance v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mTemplateType:I

    iget-object v2, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v4, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v5, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v6, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget v7, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mLayoutWeight:I

    invoke-direct/range {v0 .. v7}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;I)V

    return-object v0
.end method

.method blacklist getLayoutWeight()I
    .locals 0

    iget p0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mLayoutWeight:I

    return p0
.end method

.method blacklist getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object p0
.end method

.method blacklist getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object p0
.end method

.method blacklist getSubtitleSupplemtnalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object p0
.end method

.method blacklist getSupplementalAlarmItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object p0
.end method

.method blacklist getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object p0
.end method

.method blacklist getTemplateType()I
    .locals 0

    iget p0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mTemplateType:I

    return p0
.end method

.method public whitelist setLayoutWeight(I)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .locals 0

    iput p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mLayoutWeight:I

    return-object p0
.end method

.method public whitelist setPrimaryItem(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object p0
.end method

.method public whitelist setSubtitleItem(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object p0
.end method

.method public whitelist setSubtitleSupplementalItem(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object p0
.end method

.method public whitelist setSupplementalAlarmItem(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object p0
.end method

.method public whitelist setSupplementalLineItem(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object p0
.end method
