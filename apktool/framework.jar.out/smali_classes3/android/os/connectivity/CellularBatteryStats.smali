.class public final Landroid/os/connectivity/CellularBatteryStats;
.super Ljava/lang/Object;
.source "CellularBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/connectivity/CellularBatteryStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEnergyConsumedMaMs:J

.field private final blacklist mIdleTimeMs:J

.field private final blacklist mKernelActiveTimeMs:J

.field private final blacklist mLoggingDurationMs:J

.field private final blacklist mMonitoredRailChargeConsumedMaMs:J

.field private final blacklist mNumBytesRx:J

.field private final blacklist mNumBytesTx:J

.field private final blacklist mNumPacketsRx:J

.field private final blacklist mNumPacketsTx:J

.field private final blacklist mRxTimeMs:J

.field private final blacklist mSleepTimeMs:J

.field private final blacklist mTimeInRatMs:[J

.field private final blacklist mTimeInRxSignalStrengthLevelMs:[J

.field private final blacklist mTxTimeMs:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/connectivity/CellularBatteryStats$1;

    invoke-direct {v0}, Landroid/os/connectivity/CellularBatteryStats$1;-><init>()V

    sput-object v0, Landroid/os/connectivity/CellularBatteryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJJJJJJJJJ[J[J[JJ)V
    .locals 3

    move-object/from16 v0, p21

    move-object/from16 v1, p22

    move-object/from16 v2, p23

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    iput-wide p3, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    iput-wide p5, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    iput-wide p7, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    iput-wide p9, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    iput-wide p11, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    move-wide/from16 p1, p13

    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    move-wide/from16 p1, p15

    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    move-wide/from16 p1, p17

    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    move-wide/from16 p1, p19

    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    array-length p1, v0

    sget p2, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {v0, p2, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    array-length p1, v1

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p2, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    array-length p1, v2

    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p2, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    move-wide/from16 p1, p24

    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Landroid/os/connectivity/CellularBatteryStats;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Landroid/os/connectivity/CellularBatteryStats;

    iget-wide v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    iget-wide v4, p1, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    iget-wide v4, p1, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    iget-wide v4, p1, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    iget-wide v4, p1, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    iget-wide v4, p1, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    iget-wide v4, p1, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    iget-wide v4, p1, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    iget-wide v4, p1, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    iget-wide v4, p1, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    iget-wide v4, p1, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    iget-object v3, p1, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    iget-object v3, p1, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    iget-object v3, p1, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    iget-wide p0, p1, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public whitelist getEnergyConsumedMaMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    return-wide v0
.end method

.method public whitelist getIdleTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    return-wide v0
.end method

.method public whitelist getKernelActiveTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    return-wide v0
.end method

.method public whitelist getLoggingDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    return-wide v0
.end method

.method public whitelist getMonitoredRailChargeConsumedMaMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    return-wide v0
.end method

.method public whitelist getNumBytesRx()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    return-wide v0
.end method

.method public whitelist getNumBytesTx()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    return-wide v0
.end method

.method public whitelist getNumPacketsRx()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    return-wide v0
.end method

.method public whitelist getNumPacketsTx()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    return-wide v0
.end method

.method public whitelist getRxTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    return-wide v0
.end method

.method public whitelist getSleepTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    return-wide v0
.end method

.method public whitelist getTimeInRatMicros(I)J
    .locals 1

    iget-object p0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    array-length v0, p0

    if-lt p1, v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public whitelist getTimeInRxSignalStrengthLevelMicros(I)J
    .locals 1

    iget-object p0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    array-length v0, p0

    if-lt p1, v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public whitelist getTxTimeMillis(I)J
    .locals 1

    iget-object p0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    array-length v0, p0

    if-lt p1, v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public whitelist test-api hashCode()I
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-wide v0, v0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    filled-new-array/range {v3 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object p2, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object p2, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
