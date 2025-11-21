.class public final Landroid/telephony/SignalThresholdInfo;
.super Ljava/lang/Object;
.source "SignalThresholdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SignalThresholdInfo$Builder;,
        Landroid/telephony/SignalThresholdInfo$SignalMeasurementType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist HYSTERESIS_DB_DEFAULT:I = 0x2

.field public static final blacklist HYSTERESIS_DB_MINIMUM:I = 0x0

.field public static final blacklist HYSTERESIS_MS_DISABLED:I = 0x0

.field public static final blacklist MAXIMUM_NUMBER_OF_THRESHOLDS_ALLOWED:I = 0x4

.field public static final blacklist MINIMUM_NUMBER_OF_THRESHOLDS_ALLOWED:I = 0x1

.field public static final blacklist SIGNAL_ECNO_MAX_VALUE:I = 0x1

.field public static final blacklist SIGNAL_ECNO_MIN_VALUE:I = -0x18

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_ECNO:I = 0x9

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_RSCP:I = 0x2

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_RSRP:I = 0x3

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_RSRQ:I = 0x4

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_RSSI:I = 0x1

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_RSSNR:I = 0x5

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_SSRSRP:I = 0x6

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_SSRSRQ:I = 0x7

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_SSSINR:I = 0x8

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist SIGNAL_RSCP_MAX_VALUE:I = -0x19

.field public static final blacklist SIGNAL_RSCP_MIN_VALUE:I = -0x78

.field public static final blacklist SIGNAL_RSRP_MAX_VALUE:I = -0x2c

.field public static final blacklist SIGNAL_RSRP_MIN_VALUE:I = -0x8c

.field public static final blacklist SIGNAL_RSRQ_MAX_VALUE:I = 0x3

.field public static final blacklist SIGNAL_RSRQ_MIN_VALUE:I = -0x22

.field public static final blacklist SIGNAL_RSSI_MAX_VALUE:I = -0x33

.field public static final blacklist SIGNAL_RSSI_MIN_VALUE:I = -0x71

.field public static final blacklist SIGNAL_RSSNR_MAX_VALUE:I = 0x1e

.field public static final blacklist SIGNAL_RSSNR_MIN_VALUE:I = -0x14

.field public static final blacklist SIGNAL_SSRSRP_MAX_VALUE:I = -0x2c

.field public static final blacklist SIGNAL_SSRSRP_MIN_VALUE:I = -0x8c

.field public static final blacklist SIGNAL_SSRSRQ_MAX_VALUE:I = 0x14

.field public static final blacklist SIGNAL_SSRSRQ_MIN_VALUE:I = -0x2b

.field public static final blacklist SIGNAL_SSSINR_MAX_VALUE:I = 0x28

.field public static final blacklist SIGNAL_SSSINR_MIN_VALUE:I = -0x17


# instance fields
.field private final blacklist mHysteresisDb:I

.field private final blacklist mHysteresisMs:I

.field private final blacklist mIsEnabled:Z

.field private final blacklist mRan:I

.field private final blacklist mSignalMeasurementType:I

.field private final blacklist mThresholds:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/SignalThresholdInfo$1;

    invoke-direct {v0}, Landroid/telephony/SignalThresholdInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalThresholdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIII[IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "thresholds must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Landroid/telephony/SignalThresholdInfo;->validateRanWithMeasurementType(II)V

    invoke-direct {p0, p2, p5}, Landroid/telephony/SignalThresholdInfo;->validateThresholdRange(I[I)V

    iput p1, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    iput p2, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    if-gez p3, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput p3, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    iput p4, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    iput-object p5, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    iput-boolean p6, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(IIII[IZLandroid/telephony/SignalThresholdInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/telephony/SignalThresholdInfo;-><init>(IIII[IZ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/SignalThresholdInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/SignalThresholdInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist getMaximumNumberOfThresholdsAllowed()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static whitelist getMinimumNumberOfThresholdsAllowed()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist isValidRanWithMeasurementType(II)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p1, 0x6

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    return v0

    :pswitch_1
    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    return v0

    :pswitch_2
    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    return v0

    :pswitch_3
    if-eq p0, v1, :cond_4

    const/4 p1, 0x4

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static blacklist isValidThreshold(II)Z
    .locals 4

    const/16 v0, -0x2c

    const/16 v1, -0x8c

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    return v3

    :pswitch_0
    const/16 p0, -0x18

    if-lt p1, p0, :cond_0

    if-gt p1, v2, :cond_0

    return v2

    :cond_0
    return v3

    :pswitch_1
    const/16 p0, -0x17

    if-lt p1, p0, :cond_1

    const/16 p0, 0x28

    if-gt p1, p0, :cond_1

    return v2

    :cond_1
    return v3

    :pswitch_2
    const/16 p0, -0x2b

    if-lt p1, p0, :cond_2

    const/16 p0, 0x14

    if-gt p1, p0, :cond_2

    return v2

    :cond_2
    return v3

    :pswitch_3
    if-lt p1, v1, :cond_3

    if-gt p1, v0, :cond_3

    return v2

    :cond_3
    return v3

    :pswitch_4
    const/16 p0, -0x14

    if-lt p1, p0, :cond_4

    const/16 p0, 0x1e

    if-gt p1, p0, :cond_4

    return v2

    :cond_4
    return v3

    :pswitch_5
    const/16 p0, -0x22

    if-lt p1, p0, :cond_5

    const/4 p0, 0x3

    if-gt p1, p0, :cond_5

    return v2

    :cond_5
    return v3

    :pswitch_6
    if-lt p1, v1, :cond_6

    if-gt p1, v0, :cond_6

    return v2

    :cond_6
    return v3

    :pswitch_7
    const/16 p0, -0x78

    if-lt p1, p0, :cond_7

    const/16 p0, -0x19

    if-gt p1, p0, :cond_7

    return v2

    :cond_7
    return v3

    :pswitch_8
    const/16 p0, -0x71

    if-lt p1, p0, :cond_8

    const/16 p0, -0x33

    if-gt p1, p0, :cond_8

    return v2

    :cond_8
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist validateRanWithMeasurementType(II)V
    .locals 2

    invoke-static {p1, p2}, Landroid/telephony/SignalThresholdInfo;->isValidRanWithMeasurementType(II)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid RAN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with signal measurement type: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist validateThresholdRange(I[I)V
    .locals 3

    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget v1, p2, v0

    invoke-static {p1, v1}, Landroid/telephony/SignalThresholdInfo;->isValidThreshold(II)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invalid signal measurement type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with threshold: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
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
    instance-of v1, p1, Landroid/telephony/SignalThresholdInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/telephony/SignalThresholdInfo;

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    iget v3, p1, Landroid/telephony/SignalThresholdInfo;->mRan:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    iget v3, p1, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    iget v3, p1, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    iget v3, p1, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    iget-object v3, p1, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    iget-boolean p1, p1, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist getHysteresisDb()I
    .locals 0

    iget p0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    return p0
.end method

.method public blacklist getHysteresisMs()I
    .locals 0

    iget p0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    return p0
.end method

.method public whitelist getRadioAccessNetworkType()I
    .locals 0

    iget p0, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    return p0
.end method

.method public whitelist getSignalMeasurementType()I
    .locals 0

    iget p0, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    return p0
.end method

.method public whitelist getThresholds()[I
    .locals 0

    iget-object p0, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean p0, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SignalThresholdInfo{mRan="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSignalMeasurementType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mHysteresisMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mHysteresisDb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-boolean p0, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
