.class public Landroid/telephony/ims/feature/ImsFeature$Capabilities;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/ImsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Capabilities"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected whitelist mCapabilities:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    return-void
.end method

.method protected constructor greylist-max-o <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    return-void
.end method


# virtual methods
.method public greylist-max-o addCapabilities(I)V
    .locals 1

    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    return-void
.end method

.method public greylist-max-o copy()Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 1

    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    iget p0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>(I)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    iget p0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    iget p1, p1, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public greylist-max-o getMask()I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    return p0
.end method

.method public greylist-max-o isCapable(I)Z
    .locals 0

    iget p0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o removeCapabilities(I)V
    .locals 1

    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Capabilities: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
