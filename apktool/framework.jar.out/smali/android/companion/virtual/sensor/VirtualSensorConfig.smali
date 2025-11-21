.class public final Landroid/companion/virtual/sensor/VirtualSensorConfig;
.super Ljava/lang/Object;
.source "VirtualSensorConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;,
        Landroid/companion/virtual/sensor/VirtualSensorConfig$ReportingMode;
    }
.end annotation


# static fields
.field static final blacklist ADDITIONAL_INFO_MASK:I = 0x40

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DIRECT_CHANNEL_SHIFT:I = 0xa

.field private static final blacklist DIRECT_REPORT_MASK:I = 0x380

.field private static final blacklist DIRECT_REPORT_SHIFT:I = 0x7

.field private static final blacklist FLAG_WAKE_UP_SENSOR:I = 0x1

.field private static final blacklist REPORTING_MODE_MASK:I = 0xe

.field private static final blacklist REPORTING_MODE_SHIFT:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "VirtualSensorConfig"


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mMaxDelay:I

.field private final blacklist mMaximumRange:F

.field private final blacklist mMinDelay:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPower:F

.field private final blacklist mResolution:F

.field private final blacklist mType:I

.field private final blacklist mVendor:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/companion/virtual/sensor/VirtualSensorConfig$1;

    invoke-direct {v0}, Landroid/companion/virtual/sensor/VirtualSensorConfig$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;FFFIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    iput-object p2, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    iput-object p3, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mVendor:Ljava/lang/String;

    iput p4, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaximumRange:F

    iput p5, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mResolution:F

    iput p6, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mPower:F

    iput p7, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMinDelay:I

    iput p8, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaxDelay:I

    iput p9, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;FFFIIILandroid/companion/virtual/sensor/VirtualSensorConfig-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/companion/virtual/sensor/VirtualSensorConfig;-><init>(ILjava/lang/String;Ljava/lang/String;FFFIII)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mVendor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaximumRange:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mResolution:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mPower:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMinDelay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaxDelay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/sensor/VirtualSensorConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/virtual/sensor/VirtualSensorConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getDirectChannelTypesSupported()I
    .locals 1

    iget p0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    and-int/lit16 v0, p0, 0x400

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit16 p0, p0, 0x800

    if-lez p0, :cond_1

    or-int/lit8 p0, v0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method public blacklist getFlags()I
    .locals 0

    iget p0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    return p0
.end method

.method public whitelist getHighestDirectReportRateLevel()I
    .locals 1

    iget p0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    and-int/lit16 p0, p0, 0x380

    shr-int/lit8 p0, p0, 0x7

    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public whitelist getMaxDelay()I
    .locals 0

    iget p0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaxDelay:I

    return p0
.end method

.method public whitelist getMaximumRange()F
    .locals 0

    iget p0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaximumRange:F

    return p0
.end method

.method public whitelist getMinDelay()I
    .locals 0

    iget p0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMinDelay:I

    return p0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getPower()F
    .locals 0

    iget p0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mPower:F

    return p0
.end method

.method public whitelist getReportingMode()I
    .locals 0

    iget p0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    and-int/lit8 p0, p0, 0xe

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public whitelist getResolution()F
    .locals 0

    iget p0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mResolution:F

    return p0
.end method

.method public whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    return p0
.end method

.method public whitelist getVendor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mVendor:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist isAdditionalInfoSupported()Z
    .locals 0

    iget p0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    and-int/lit8 p0, p0, 0x40

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isWakeUpSensor()Z
    .locals 1

    iget p0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VirtualSensorConfig{mType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mVendor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget p2, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaximumRange:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mResolution:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mPower:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMinDelay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaxDelay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
