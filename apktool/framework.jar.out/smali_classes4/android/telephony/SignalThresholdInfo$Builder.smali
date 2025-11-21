.class public final Landroid/telephony/SignalThresholdInfo$Builder;
.super Ljava/lang/Object;
.source "SignalThresholdInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SignalThresholdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHysteresisDb:I

.field private blacklist mHysteresisMs:I

.field private blacklist mIsEnabled:Z

.field private blacklist mRan:I

.field private blacklist mSignalMeasurementType:I

.field private blacklist mThresholds:[I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mRan:I

    iput v0, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mSignalMeasurementType:I

    iput v0, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisMs:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisDb:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mThresholds:[I

    iput-boolean v0, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mIsEnabled:Z

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/SignalThresholdInfo;
    .locals 8

    new-instance v0, Landroid/telephony/SignalThresholdInfo;

    iget v1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mRan:I

    iget v2, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mSignalMeasurementType:I

    iget v3, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisMs:I

    iget v4, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisDb:I

    iget-object v5, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mThresholds:[I

    iget-boolean v6, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mIsEnabled:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/telephony/SignalThresholdInfo;-><init>(IIII[IZLandroid/telephony/SignalThresholdInfo-IA;)V

    return-object v0
.end method

.method public whitelist setHysteresisDb(I)Landroid/telephony/SignalThresholdInfo$Builder;
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisDb:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hysteresis db value should not be less than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setHysteresisMs(I)Landroid/telephony/SignalThresholdInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mHysteresisMs:I

    return-object p0
.end method

.method public blacklist setIsEnabled(Z)Landroid/telephony/SignalThresholdInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mIsEnabled:Z

    return-object p0
.end method

.method public whitelist setRadioAccessNetworkType(I)Landroid/telephony/SignalThresholdInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mRan:I

    return-object p0
.end method

.method public whitelist setSignalMeasurementType(I)Landroid/telephony/SignalThresholdInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mSignalMeasurementType:I

    return-object p0
.end method

.method public whitelist setThresholds([I)Landroid/telephony/SignalThresholdInfo$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/SignalThresholdInfo$Builder;->setThresholds([IZ)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setThresholds([IZ)Landroid/telephony/SignalThresholdInfo$Builder;
    .locals 1

    const-string/jumbo v0, "thresholds must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_1

    array-length p2, p1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    array-length p2, p1

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "thresholds length must between 1 and 4"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/telephony/SignalThresholdInfo$Builder;->mThresholds:[I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    return-object p0
.end method
