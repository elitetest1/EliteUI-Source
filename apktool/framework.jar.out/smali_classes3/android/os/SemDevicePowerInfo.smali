.class public Landroid/os/SemDevicePowerInfo;
.super Ljava/lang/Object;
.source "SemDevicePowerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SemDevicePowerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist actualGpsTime:J

.field public blacklist aodPower:D

.field public blacklist aodTime:J

.field public blacklist batteryPerc:I

.field public blacklist btOnTime:J

.field public blacklist btScanCount:I

.field public blacklist btScanTime:J

.field public blacklist btTotalBytes:J

.field public blacklist cpIdleTime:J

.field public blacklist cpSleepTime:J

.field public blacklist gpsTime:J

.field public blacklist hrrAlwaysTime:J

.field public blacklist idlePower:D

.field public blacklist idleTime:J

.field public blacklist lcRxByte:J

.field public blacklist lcRxTime:J

.field public blacklist lcTxByte:J

.field public blacklist lcTxLevel:D

.field public blacklist lcTxTime:J

.field public blacklist mKernelCpuSpeedTime:[[J

.field public blacklist mScreenOffKernelCpuSpeedTime:[[J

.field public blacklist mobileActiveCount:I

.field public blacklist mobileActiveTime:J

.field public blacklist mobileActiveTime5G:J

.field public blacklist mobileTotalBytes:J

.field public blacklist mobileTotalPackets:J

.field public blacklist nrRxByte:J

.field public blacklist nrRxTime:J

.field public blacklist nrTxByte:J

.field public blacklist nrTxLevel:D

.field public blacklist nrTxTime:J

.field public blacklist phoneOnTime:J

.field public blacklist phonePower:D

.field public blacklist powersharePower:J

.field public blacklist powershareTime:J

.field public blacklist psmTime:J

.field public blacklist pwlTime:J

.field public blacklist radioPower:D

.field public blacklist screenAutoBrightnessTime:[J

.field public blacklist screenBrightnessTime:[J

.field public blacklist screenDozeDischarge:I

.field public blacklist screenHighBrightnessTime:J

.field public blacklist screenOffCoulombCounter:I

.field public blacklist screenOffDischarge:I

.field public blacklist screenOffTime:J

.field public blacklist screenOffUptime:J

.field public blacklist screenOnCoulombCounter:I

.field public blacklist screenOnCount:I

.field public blacklist screenOnDischarge:I

.field public blacklist screenOnGpsTime:J

.field public blacklist screenOnTime:J

.field public blacklist screenPower:D

.field public blacklist signalStrengthTime:[J

.field public blacklist silentOnScreenOffDischarge:I

.field public blacklist silentOnScreenOffTime:J

.field public blacklist silentOnScreenOnDischarge:I

.field public blacklist silentOnScreenOnTime:J

.field public blacklist spkCallLevel:J

.field public blacklist spkCallTime:J

.field public blacklist spkMediaLevel:J

.field public blacklist spkMediaTime:J

.field public blacklist subAodTime:J

.field public blacklist subHrrAlwaysTime:J

.field public blacklist subScreenAutoBrightnessTime:[J

.field public blacklist subScreenBrightnessTime:[J

.field public blacklist subScreenDozeDischarge:I

.field public blacklist subScreenHighBrightnessTime:J

.field public blacklist subScreenOnDischarge:I

.field public blacklist subScreenOnTime:J

.field public blacklist totalPower:D

.field public blacklist uptime:J

.field public blacklist wifiOnTime:J

.field public blacklist wifiPower:D

.field public blacklist wifiScanCount:I

.field public blacklist wifiScanTime:J

.field public blacklist wifiTotalBytes:J

.field public blacklist wifiTotalPackets:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/SemDevicePowerInfo$1;

    invoke-direct {v0}, Landroid/os/SemDevicePowerInfo$1;-><init>()V

    sput-object v0, Landroid/os/SemDevicePowerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    invoke-virtual {p0}, Landroid/os/SemDevicePowerInfo;->reset()V

    return-void
.end method

.method public constructor blacklist <init>(D)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    invoke-virtual {p0}, Landroid/os/SemDevicePowerInfo;->reset()V

    iput-wide p1, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    return-void
.end method

.method public constructor blacklist <init>(D[[I)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/os/SemDevicePowerInfo;-><init>(D)V

    array-length p1, p3

    new-array p1, p1, [[J

    iput-object p1, p0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    array-length v0, p3

    const-wide/16 v1, 0x0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    aget-object v3, p3, p2

    array-length v3, v3

    new-array v3, v3, [J

    aput-object v3, v0, p2

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    array-length p2, p3

    new-array p2, p2, [[J

    iput-object p2, p0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    :goto_1
    array-length p2, p3

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    aget-object v0, p3, p1

    array-length v0, v0

    new-array v0, v0, [J

    aput-object v0, p2, p1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnDischarge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffDischarge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->uptime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    move v0, v1

    :goto_4
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_5

    new-array v0, v2, [I

    aput v1, v0, v3

    aput v1, v0, v1

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    goto :goto_8

    :cond_5
    new-array v4, v0, [[J

    iput-object v4, p0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    move v4, v1

    :goto_5
    if-ge v4, v0, :cond_8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    new-array v6, v1, [J

    aput-object v6, v5, v4

    goto :goto_7

    :cond_6
    iget-object v6, p0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    new-array v7, v5, [J

    aput-object v7, v6, v4

    move v6, v1

    :goto_6
    if-ge v6, v5, :cond_7

    iget-object v7, p0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    aget-object v7, v7, v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    aput-wide v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_9

    new-array p1, v2, [I

    aput v1, p1, v3

    aput v1, p1, v1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[J

    iput-object p1, p0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    return-void

    :cond_9
    new-array v2, v0, [[J

    iput-object v2, p0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    new-array v4, v1, [J

    aput-object v4, v3, v2

    goto :goto_b

    :cond_a
    iget-object v4, p0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    new-array v5, v3, [J

    aput-object v5, v4, v2

    move v4, v1

    :goto_a
    if-ge v4, v3, :cond_b

    iget-object v5, p0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    aget-object v5, v5, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_b
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    return-void
.end method

.method public constructor blacklist <init>([[I)V
    .locals 6

    invoke-direct {p0}, Landroid/os/SemDevicePowerInfo;-><init>()V

    array-length v0, p1

    new-array v0, v0, [[J

    iput-object v0, p0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    const-wide/16 v3, 0x0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    aget-object v5, p1, v1

    array-length v5, v5

    new-array v5, v5, [J

    aput-object v5, v2, v1

    invoke-static {v5, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v1, p1

    new-array v1, v1, [[J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    aget-object v2, p1, v0

    array-length v2, v2

    new-array v2, v2, [J

    aput-object v2, v1, v0

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist addDelta(Landroid/os/SemDevicePowerInfo;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->totalPower:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->screenPower:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->aodPower:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->phonePower:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->idlePower:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->idleTime:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->radioPower:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    iget v2, v0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    iget v3, v1, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    iget v2, v0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    iget v3, v1, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    iget v2, v0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    iget v3, v1, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    iget v2, v0, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    iget v3, v1, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    iget v2, v0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    iget v3, v1, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    iget v2, v0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    iget v3, v1, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    iget v2, v0, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    iget v3, v1, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    iget v2, v0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    iget v3, v1, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    iget v2, v0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    iget v3, v1, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnTime:J

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnTime:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnTime:J

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffTime:J

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffTime:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffTime:J

    iget v2, v0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnDischarge:I

    iget v3, v1, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnDischarge:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnDischarge:I

    iget v2, v0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffDischarge:I

    iget v3, v1, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffDischarge:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffDischarge:I

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->uptime:J

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->uptime:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->uptime:J

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->aodTime:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->psmTime:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    iget-wide v2, v0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    iget-wide v4, v1, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    iget-object v4, v0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    aget-wide v5, v4, v3

    iget-object v7, v1, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    aget-wide v7, v7, v3

    add-long/2addr v5, v7

    aput-wide v5, v4, v3

    iget-object v4, v0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    aget-wide v5, v4, v3

    iget-object v7, v1, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    aget-wide v7, v7, v3

    add-long/2addr v5, v7

    aput-wide v5, v4, v3

    iget-object v4, v0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    aget-wide v5, v4, v3

    iget-object v7, v1, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    aget-wide v7, v7, v3

    add-long/2addr v5, v7

    aput-wide v5, v4, v3

    iget-object v4, v0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    aget-wide v5, v4, v3

    iget-object v7, v1, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    aget-wide v7, v7, v3

    add-long/2addr v5, v7

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    move v3, v2

    :goto_1
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aget-wide v5, v4, v3

    iget-object v7, v1, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aget-wide v7, v7, v3

    add-long/2addr v5, v7

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    iget v3, v0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    iget v4, v1, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    iget v3, v0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    iget v4, v1, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    iget v3, v0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    iget v4, v1, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    add-long v7, v3, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    const-wide/16 v11, 0x0

    if-eqz v7, :cond_2

    iget-wide v7, v0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    long-to-double v13, v3

    mul-double/2addr v7, v13

    iget-wide v13, v1, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    move-wide v15, v9

    long-to-double v9, v5

    mul-double/2addr v13, v9

    add-double/2addr v7, v13

    add-long/2addr v3, v5

    long-to-double v3, v3

    div-double/2addr v7, v3

    iput-wide v7, v0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    goto :goto_2

    :cond_2
    move-wide v15, v9

    iput-wide v11, v0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    :goto_2
    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    add-long v7, v3, v5

    cmp-long v7, v7, v15

    if-eqz v7, :cond_3

    iget-wide v7, v0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    long-to-double v9, v3

    mul-double/2addr v7, v9

    iget-wide v9, v1, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    long-to-double v11, v5

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    add-long/2addr v3, v5

    long-to-double v3, v3

    div-double/2addr v7, v3

    iput-wide v7, v0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    goto :goto_3

    :cond_3
    iput-wide v11, v0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    :goto_3
    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    iget-wide v3, v0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    iget-wide v5, v1, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    iget-object v3, v0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    if-eqz v3, :cond_8

    array-length v3, v3

    iget-object v4, v1, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    array-length v4, v4

    if-eq v3, v4, :cond_4

    goto :goto_7

    :cond_4
    move v3, v2

    :goto_4
    iget-object v4, v1, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    array-length v5, v4

    if-ge v3, v5, :cond_9

    iget-object v5, v0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    aget-object v6, v5, v3

    if-eqz v6, :cond_6

    array-length v6, v6

    aget-object v7, v4, v3

    array-length v7, v7

    if-eq v6, v7, :cond_5

    goto :goto_6

    :cond_5
    move v4, v2

    :goto_5
    iget-object v5, v1, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    aget-object v5, v5, v3

    array-length v6, v5

    if-ge v4, v6, :cond_7

    iget-object v6, v0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    aget-object v6, v6, v3

    aget-wide v7, v6, v4

    aget-wide v9, v5, v4

    add-long/2addr v7, v9

    aput-wide v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    aget-object v6, v4, v3

    array-length v6, v6

    new-array v6, v6, [J

    aput-object v6, v5, v3

    aget-object v4, v4, v3

    array-length v5, v6

    invoke-static {v4, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    :goto_7
    iget-object v3, v1, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    array-length v3, v3

    new-array v3, v3, [[J

    iput-object v3, v0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    move v3, v2

    :goto_8
    iget-object v4, v1, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    array-length v5, v4

    if-ge v3, v5, :cond_9

    iget-object v5, v0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    aget-object v6, v4, v3

    array-length v6, v6

    new-array v6, v6, [J

    aput-object v6, v5, v3

    aget-object v4, v4, v3

    array-length v5, v6

    invoke-static {v4, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    iget-object v3, v0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    if-eqz v3, :cond_e

    array-length v3, v3

    iget-object v4, v1, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    array-length v4, v4

    if-eq v3, v4, :cond_a

    goto :goto_c

    :cond_a
    move v3, v2

    :goto_9
    iget-object v4, v1, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    array-length v5, v4

    if-ge v3, v5, :cond_f

    iget-object v5, v0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    aget-object v6, v5, v3

    if-eqz v6, :cond_c

    array-length v6, v6

    aget-object v7, v4, v3

    array-length v7, v7

    if-eq v6, v7, :cond_b

    goto :goto_b

    :cond_b
    move v4, v2

    :goto_a
    iget-object v5, v1, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    aget-object v5, v5, v3

    array-length v6, v5

    if-ge v4, v6, :cond_d

    iget-object v6, v0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    aget-object v6, v6, v3

    aget-wide v7, v6, v4

    aget-wide v9, v5, v4

    add-long/2addr v7, v9

    aput-wide v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_c
    :goto_b
    aget-object v6, v4, v3

    array-length v6, v6

    new-array v6, v6, [J

    aput-object v6, v5, v3

    aget-object v4, v4, v3

    array-length v5, v6

    invoke-static {v4, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    :goto_c
    iget-object v3, v1, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    array-length v3, v3

    new-array v3, v3, [[J

    iput-object v3, v0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    move v3, v2

    :goto_d
    iget-object v4, v1, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    array-length v5, v4

    if-ge v3, v5, :cond_f

    iget-object v5, v0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    aget-object v6, v4, v3

    array-length v6, v6

    new-array v6, v6, [J

    aput-object v6, v5, v3

    aget-object v4, v4, v3

    array-length v5, v6

    invoke-static {v4, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_f
    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist reset()V
    .locals 7

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    const/4 v4, 0x0

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffTime:J

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnDischarge:I

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffDischarge:I

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->uptime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    move v5, v4

    :goto_0
    const/4 v6, 0x5

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    aput-wide v2, v6, v5

    iget-object v6, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    aput-wide v2, v6, v5

    iget-object v6, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    aput-wide v2, v6, v5

    iget-object v6, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    aput-wide v2, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    move v5, v4

    :goto_1
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aput-wide v2, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    aput v4, v1, v2

    aput v4, v1, v4

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    new-array v0, v0, [I

    aput v4, v0, v2

    aput v4, v0, v4

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "power = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", screenPower = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", idlePower = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", percent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenOnTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", screenOffTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uptime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", screenOffUptime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", AOD = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", powerSave = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", wakelock time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist update(Landroid/os/SemDevicePowerInfo;)V
    .locals 6

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->totalPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->screenPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->aodPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->phonePower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->idlePower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->idleTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->radioPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffTime:J

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnDischarge:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnDischarge:I

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffDischarge:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffDischarge:I

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->uptime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->uptime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->aodTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->psmTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    iget-object v3, p1, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    aget-wide v3, v3, v1

    aput-wide v3, v2, v1

    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    iget-object v3, p1, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    aget-wide v3, v3, v1

    aput-wide v3, v2, v1

    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    iget-object v3, p1, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    aget-wide v3, v3, v1

    aput-wide v3, v2, v1

    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    iget-object v3, p1, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    aget-wide v3, v3, v1

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    move v1, v0

    :goto_1
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    iget-object v3, p1, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aget-wide v3, v3, v1

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    iget-wide v1, p1, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    if-eqz v1, :cond_2

    array-length v1, v1

    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    array-length v2, v2

    if-eq v1, v2, :cond_3

    :cond_2
    iget-object v1, p1, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    array-length v1, v1

    new-array v1, v1, [[J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    move v1, v0

    :goto_2
    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    array-length v3, v2

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    aget-object v2, v2, v1

    array-length v2, v2

    new-array v2, v2, [J

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_3
    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    array-length v3, v2

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    aget-object v4, v3, v1

    if-eqz v4, :cond_4

    array-length v4, v4

    aget-object v5, v2, v1

    array-length v5, v5

    if-eq v4, v5, :cond_5

    :cond_4
    aget-object v4, v2, v1

    array-length v4, v4

    new-array v4, v4, [J

    aput-object v4, v3, v1

    :cond_5
    aget-object v2, v2, v1

    aget-object v3, v3, v1

    array-length v4, v3

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    if-eqz v1, :cond_7

    array-length v1, v1

    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    array-length v2, v2

    if-eq v1, v2, :cond_8

    :cond_7
    iget-object v1, p1, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    array-length v1, v1

    new-array v1, v1, [[J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    move v1, v0

    :goto_4
    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    array-length v3, v2

    if-ge v1, v3, :cond_8

    iget-object v3, p0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    aget-object v2, v2, v1

    array-length v2, v2

    new-array v2, v2, [J

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    move v1, v0

    :goto_5
    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    array-length v3, v2

    if-ge v1, v3, :cond_b

    iget-object v3, p0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    aget-object v4, v3, v1

    if-eqz v4, :cond_9

    array-length v4, v4

    aget-object v5, v2, v1

    array-length v5, v5

    if-eq v4, v5, :cond_a

    :cond_9
    aget-object v4, v2, v1

    array-length v4, v4

    new-array v4, v4, [J

    aput-object v4, v3, v1

    :cond_a
    aget-object v2, v2, v1

    aget-object v3, v3, v1

    array-length v4, v3

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOnDischarge:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/os/SemDevicePowerInfo;->silentOnScreenOffDischarge:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->uptime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    aget-wide v1, v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v0, p2

    :goto_2
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, p2

    :goto_3
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v0, p2

    :goto_4
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aget-wide v1, v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    if-nez v0, :cond_5

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_5
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p2

    :goto_5
    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    array-length v2, v1

    if-ge v0, v2, :cond_8

    aget-object v1, v1, v0

    if-nez v1, :cond_6

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :cond_6
    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v1, p2

    :goto_6
    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->mKernelCpuSpeedTime:[[J

    aget-object v2, v2, v0

    array-length v3, v2

    if-ge v1, v3, :cond_7

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    :goto_8
    iget-object v0, p0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    if-nez v0, :cond_9

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_9
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p2

    :goto_9
    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    array-length v2, v1

    if-ge v0, v2, :cond_c

    aget-object v1, v1, v0

    if-nez v1, :cond_a

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    :cond_a
    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v1, p2

    :goto_a
    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->mScreenOffKernelCpuSpeedTime:[[J

    aget-object v2, v2, v0

    array-length v3, v2

    if-ge v1, v3, :cond_b

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_b
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_c
    return-void
.end method
