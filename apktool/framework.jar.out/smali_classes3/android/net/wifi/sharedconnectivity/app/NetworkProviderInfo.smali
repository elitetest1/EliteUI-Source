.class public final Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;
.super Ljava/lang/Object;
.source "NetworkProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;,
        Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$DeviceType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVICE_TYPE_AUTO:I = 0x5

.field public static final whitelist DEVICE_TYPE_LAPTOP:I = 0x3

.field public static final whitelist DEVICE_TYPE_PHONE:I = 0x1

.field public static final whitelist DEVICE_TYPE_TABLET:I = 0x2

.field public static final whitelist DEVICE_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist DEVICE_TYPE_WATCH:I = 0x4


# instance fields
.field private final blacklist mBatteryPercentage:I

.field private final blacklist mConnectionStrength:I

.field private final blacklist mDeviceName:Ljava/lang/String;

.field private final blacklist mDeviceType:I

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mIsBatteryCharging:Z

.field private final blacklist mModelName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;IZILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3, p4, p6}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->validate(ILjava/lang/String;Ljava/lang/String;II)V

    iput p1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceType:I

    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceName:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mModelName:Ljava/lang/String;

    iput p4, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mBatteryPercentage:I

    iput-boolean p5, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mIsBatteryCharging:Z

    iput p6, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mConnectionStrength:I

    iput-object p7, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;IZILandroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IZILandroid/os/Bundle;)V

    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;
    .locals 8

    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IZILandroid/os/Bundle;)V

    return-object v0
.end method

.method private static blacklist validate(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    const/4 p1, 0x4

    if-eqz p0, :cond_1

    const/4 p2, 0x1

    if-eq p0, p2, :cond_1

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_1

    if-eq p0, p1, :cond_1

    const/4 p2, 0x5

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal device type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-ltz p3, :cond_3

    const/16 p0, 0x64

    if-gt p3, p0, :cond_3

    if-ltz p4, :cond_2

    if-gt p4, p1, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ConnectionStrength must be in range 0-4"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "BatteryPercentage must be in range 0-100"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceType:I

    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->getDeviceType()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceName:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceName:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mModelName:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mModelName:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mBatteryPercentage:I

    iget v2, p1, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mBatteryPercentage:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mIsBatteryCharging:Z

    iget-boolean v2, p1, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mIsBatteryCharging:Z

    if-ne v0, v2, :cond_1

    iget p0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mConnectionStrength:I

    iget p1, p1, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mConnectionStrength:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getBatteryPercentage()I
    .locals 0

    iget p0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mBatteryPercentage:I

    return p0
.end method

.method public whitelist getConnectionStrength()I
    .locals 0

    iget p0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mConnectionStrength:I

    return p0
.end method

.method public whitelist getDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getDeviceType()I
    .locals 0

    iget p0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceType:I

    return p0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist getModelName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mModelName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceName:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mModelName:Ljava/lang/String;

    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mBatteryPercentage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mIsBatteryCharging:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget p0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mConnectionStrength:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist isBatteryCharging()Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mIsBatteryCharging:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkProviderInfo[deviceType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modelName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mModelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", batteryPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mBatteryPercentage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isBatteryCharging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mIsBatteryCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connectionStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mConnectionStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mModelName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mBatteryPercentage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mIsBatteryCharging:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mConnectionStrength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
