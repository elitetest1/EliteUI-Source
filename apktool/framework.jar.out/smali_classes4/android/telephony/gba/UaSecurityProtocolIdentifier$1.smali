.class Landroid/telephony/gba/UaSecurityProtocolIdentifier$1;
.super Ljava/lang/Object;
.source "UaSecurityProtocolIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/gba/UaSecurityProtocolIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/gba/UaSecurityProtocolIdentifier;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x0

    if-ltz p0, :cond_4

    if-ltz v0, :cond_4

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;

    invoke-direct {v2}, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;-><init>()V

    if-lez p0, :cond_1

    :try_start_0
    invoke-virtual {v2, p0}, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->setOrg(I)Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;

    :cond_1
    if-lez v0, :cond_2

    invoke-virtual {v2, v0}, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->setProtocol(I)Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;

    :cond_2
    if-lez p1, :cond_3

    invoke-virtual {v2, p1}, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->setTlsCipherSuite(I)Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v1

    :cond_3
    :goto_0
    invoke-virtual {v2}, Landroid/telephony/gba/UaSecurityProtocolIdentifier$Builder;->build()Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object v1
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

    invoke-virtual {p0, p1}, Landroid/telephony/gba/UaSecurityProtocolIdentifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    .locals 0

    new-array p0, p1, [Landroid/telephony/gba/UaSecurityProtocolIdentifier;

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

    invoke-virtual {p0, p1}, Landroid/telephony/gba/UaSecurityProtocolIdentifier$1;->newArray(I)[Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    move-result-object p0

    return-object p0
.end method
