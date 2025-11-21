.class public final Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualSensorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/sensor/VirtualSensorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist FLAG_MEMORY_FILE_DIRECT_CHANNEL_SUPPORTED:I = 0x400


# instance fields
.field private blacklist mFlags:I

.field blacklist mHighestDirectReportRateLevel:I

.field private blacklist mMaxDelay:I

.field private blacklist mMaximumRange:F

.field private blacklist mMinDelay:I

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mPower:F

.field private blacklist mResolution:F

.field private final blacklist mType:I

.field private blacklist mVendor:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mType:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Virtual sensor type must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist build()Landroid/companion/virtual/sensor/VirtualSensorConfig;
    .locals 12

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mHighestDirectReportRateLevel:I

    if-lez v0, :cond_1

    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_0

    shl-int/lit8 v2, v0, 0x7

    or-int/2addr v1, v2

    iput v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Setting direct channel type is required for sensors with direct channel support."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit16 v1, v1, 0x400

    if-lez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Highest direct report rate level is required for sensors with direct channel support."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    new-instance v1, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    iget v2, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mType:I

    iget-object v3, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mName:Ljava/lang/String;

    iget-object v4, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mVendor:Ljava/lang/String;

    iget v5, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaximumRange:F

    iget v6, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mResolution:F

    iget v7, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mPower:F

    iget v8, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMinDelay:I

    iget v9, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaxDelay:I

    iget v10, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Landroid/companion/virtual/sensor/VirtualSensorConfig;-><init>(ILjava/lang/String;Ljava/lang/String;FFFIIILandroid/companion/virtual/sensor/VirtualSensorConfig-IA;)V

    return-object v1
.end method

.method public blacklist setAdditionalInfoSupported(Z)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    return-object p0

    :cond_0
    iget p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    return-object p0
.end method

.method public whitelist setDirectChannelTypesSupported(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    :goto_0
    and-int/lit8 p1, p1, -0x2

    if-gtz p1, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only TYPE_MEMORY_FILE direct channels can be supported for virtual sensors."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setHighestDirectReportRateLevel(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mHighestDirectReportRateLevel:I

    return-object p0
.end method

.method public whitelist setMaxDelay(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaxDelay:I

    return-object p0
.end method

.method public whitelist setMaximumRange(F)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaximumRange:F

    return-object p0
.end method

.method public whitelist setMinDelay(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMinDelay:I

    return-object p0
.end method

.method public whitelist setPower(F)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mPower:F

    return-object p0
.end method

.method public whitelist setReportingMode(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid reporting mode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    shl-int/2addr p1, v0

    or-int/2addr p1, v1

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    return-object p0
.end method

.method public whitelist setResolution(F)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mResolution:F

    return-object p0
.end method

.method public whitelist setVendor(Ljava/lang/String;)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mVendor:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setWakeUpSensor(Z)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    return-object p0

    :cond_0
    iget p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    return-object p0
.end method
