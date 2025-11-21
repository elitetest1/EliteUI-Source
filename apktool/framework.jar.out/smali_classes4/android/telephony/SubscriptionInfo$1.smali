.class Landroid/telephony/SubscriptionInfo$1;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    new-instance p0, Landroid/telephony/SubscriptionInfo$Builder;

    invoke-direct {p0}, Landroid/telephony/SubscriptionInfo$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setId(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setSimSlotIndex(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setCarrierName(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setDisplayNameSource(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setIconTint(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setNumber(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setDataRoaming(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setMcc(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setMnc(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setCountryIso(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setEmbedded(Z)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    sget-object v0, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/UiccAccessRule;

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setNativeAccessRules([Landroid/telephony/UiccAccessRule;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setCardString(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setCardId(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setPortIndex(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setOpportunistic(Z)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setGroupUuid(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setGroupDisabled(Z)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setCarrierId(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setProfileClass(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setType(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setEhplmns([Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setHplmns([Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setGroupOwner(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    sget-object v0, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/UiccAccessRule;

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setCarrierConfigAccessRules([Landroid/telephony/UiccAccessRule;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setUiccApplicationsEnabled(Z)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setUsageSetting(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setOnlyNonTerrestrialNetwork(Z)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getServiceCapabilitiesSet(I)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setServiceCapabilities(Ljava/util/Set;)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionInfo$Builder;->setTransferStatus(I)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionInfo$Builder;->setSatelliteESOSSupported(Z)Landroid/telephony/SubscriptionInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo$Builder;->build()Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/telephony/SubscriptionInfo;
    .locals 0

    new-array p0, p1, [Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionInfo$1;->newArray(I)[Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method
