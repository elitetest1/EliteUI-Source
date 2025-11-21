.class public final Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;
.super Ljava/lang/Object;
.source "EuiccRulesAuthTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/euicc/EuiccRulesAuthTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

.field private greylist-max-o mPolicyRuleFlags:[I

.field private greylist-max-o mPolicyRules:[I

.field private greylist-max-o mPosition:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPolicyRules:[I

    new-array v0, p1, [[Landroid/service/carrier/CarrierIdentifier;

    iput-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPolicyRuleFlags:[I

    return-void
.end method


# virtual methods
.method public whitelist add(ILjava/util/List;I)Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;I)",
            "Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;"
        }
    .end annotation

    iget v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPosition:I

    iget-object v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPolicyRules:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aput p1, v1, v0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    iget v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPosition:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/service/carrier/CarrierIdentifier;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/service/carrier/CarrierIdentifier;

    aput-object p2, p1, v0

    :cond_0
    iget-object p1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPolicyRuleFlags:[I

    iget p2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPosition:I

    aput p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPosition:I

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget p0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPosition:I

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method

.method public whitelist build()Landroid/telephony/euicc/EuiccRulesAuthTable;
    .locals 4

    iget v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPosition:I

    iget-object v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPolicyRules:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/telephony/euicc/EuiccRulesAuthTable;

    iget-object v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPolicyRules:[I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    iget-object p0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPolicyRuleFlags:[I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/telephony/euicc/EuiccRulesAuthTable;-><init>([I[[Landroid/service/carrier/CarrierIdentifier;[ILandroid/telephony/euicc/EuiccRulesAuthTable-IA;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not enough rules are added, expected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPolicyRules:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPosition:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
