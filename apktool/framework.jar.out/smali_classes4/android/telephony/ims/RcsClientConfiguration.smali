.class public final Landroid/telephony/ims/RcsClientConfiguration;
.super Ljava/lang/Object;
.source "RcsClientConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsClientConfiguration$StringRcsProfile;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsClientConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RCS_PROFILE_1_0:Ljava/lang/String; = "UP_1.0"

.field public static final whitelist RCS_PROFILE_2_3:Ljava/lang/String; = "UP_2.3"

.field public static final whitelist RCS_PROFILE_2_4:Ljava/lang/String; = "UP_2.4"


# instance fields
.field private blacklist mClientVendor:Ljava/lang/String;

.field private blacklist mClientVersion:Ljava/lang/String;

.field private blacklist mRcsEnabledByUser:Z

.field private blacklist mRcsProfile:Ljava/lang/String;

.field private blacklist mRcsVersion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsClientConfiguration$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsClientConfiguration$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsClientConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/RcsClientConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsVersion:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsProfile:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVendor:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVersion:Ljava/lang/String;

    iput-boolean p5, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsEnabledByUser:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/telephony/ims/RcsClientConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/telephony/ims/RcsClientConfiguration;

    iget-object v0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsVersion:Ljava/lang/String;

    iget-object v2, p1, Landroid/telephony/ims/RcsClientConfiguration;->mRcsVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsProfile:Ljava/lang/String;

    iget-object v2, p1, Landroid/telephony/ims/RcsClientConfiguration;->mRcsProfile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVendor:Ljava/lang/String;

    iget-object v2, p1, Landroid/telephony/ims/RcsClientConfiguration;->mClientVendor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVersion:Ljava/lang/String;

    iget-object v2, p1, Landroid/telephony/ims/RcsClientConfiguration;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsEnabledByUser:Z

    iget-boolean p1, p1, Landroid/telephony/ims/RcsClientConfiguration;->mRcsEnabledByUser:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getClientVendor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVendor:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getClientVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVersion:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getRcsProfile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsProfile:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getRcsVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsVersion:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsVersion:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsProfile:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVendor:Ljava/lang/String;

    iget-object v3, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVersion:Ljava/lang/String;

    iget-boolean p0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsEnabledByUser:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist isRcsEnabledByUser()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsEnabledByUser:Z

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsProfile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVendor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/telephony/ims/RcsClientConfiguration;->mClientVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroid/telephony/ims/RcsClientConfiguration;->mRcsEnabledByUser:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
