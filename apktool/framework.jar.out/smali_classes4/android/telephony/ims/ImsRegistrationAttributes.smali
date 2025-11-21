.class public final Landroid/telephony/ims/ImsRegistrationAttributes;
.super Ljava/lang/Object;
.source "ImsRegistrationAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsRegistrationAttributes$Builder;,
        Landroid/telephony/ims/ImsRegistrationAttributes$ImsAttributeFlag;
    }
.end annotation


# static fields
.field public static final whitelist ATTR_EPDG_OVER_CELL_INTERNET:I = 0x1

.field public static final blacklist ATTR_REGISTRATION_TYPE_EMERGENCY:I = 0x2

.field public static final blacklist ATTR_VIRTUAL_FOR_ANONYMOUS_EMERGENCY_CALL:I = 0x4

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsRegistrationAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFeatureTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsAttributeFlags:I

.field private final blacklist mRegistrationTech:I

.field private final blacklist mSipDetails:Landroid/telephony/ims/SipDetails;

.field private final blacklist mTransportType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsRegistrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    iput p2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    iput p3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    return-void
.end method

.method public constructor blacklist <init>(IIILjava/util/Set;Landroid/telephony/ims/SipDetails;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/SipDetails;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    iput p2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    iput p3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    const-class v0, Landroid/telephony/ims/SipDetails;

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/SipDetails;

    iput-object p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/telephony/ims/ImsRegistrationAttributes;

    iget v2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    iget v3, p1, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    iget v3, p1, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    iget v3, p1, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    iget-object p1, p1, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getAttributeFlags()I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    return p0
.end method

.method public whitelist getFeatureTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getFlagRegistrationTypeEmergency()Z
    .locals 0

    iget p0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getFlagVirtualRegistrationForEmergencyCall()Z
    .locals 0

    iget p0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getRegistrationTechnology()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget p0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    return p0
.end method

.method public whitelist getSipDetails()Landroid/telephony/ims/SipDetails;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    return-object p0
.end method

.method public whitelist getTransportType()I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsRegistrationAttributes { transportType= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", attributeFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", featureTags=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "],SipDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mRegistrationTech:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mImsAttributeFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mFeatureTags:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object p0, p0, Landroid/telephony/ims/ImsRegistrationAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
