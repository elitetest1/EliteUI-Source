.class public Landroid/os/BatteryStats$HistoryPrinter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPrinter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;
    }
.end annotation


# static fields
.field private static final blacklist FORMAT_LEGACY:I = 0x1

.field private static final blacklist FORMAT_VERSION:I = 0x2


# instance fields
.field greylist-max-o lastTime:J

.field private final blacklist mCurrentTimeEventTimeFormat:Ljava/text/SimpleDateFormat;

.field private final blacklist mDate:Ljava/util/Date;

.field private final blacklist mFormatVersion:I

.field private final blacklist mHistoryItemTimestampFormat:Ljava/text/SimpleDateFormat;

.field private final blacklist mHistoryLogTimeFormatter:Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;

.field private final blacklist mPerformanceBaseline:Z

.field private final blacklist mStringBuilder:Ljava/lang/StringBuilder;

.field blacklist oldAp_temp:I

.field greylist-max-o oldChargeMAh:I

.field blacklist oldCurrent:I

.field greylist-max-o oldHealth:I

.field blacklist oldHighSpeakerVolume:I

.field greylist-max-o oldLevel:I

.field blacklist oldModemRailChargeMah:D

.field blacklist oldOtgOnline:I

.field blacklist oldPa_temp:I

.field greylist-max-o oldPlug:I

.field blacklist oldProtectBatteryMode:I

.field blacklist oldSecCurrentEvent:I

.field blacklist oldSecEvent:I

.field blacklist oldSecOnline:I

.field blacklist oldSecTxShareEvent:I

.field blacklist oldSkin_temp:I

.field greylist-max-o oldState:I

.field greylist-max-o oldState2:I

.field greylist-max-o oldStatus:I

.field blacklist oldSubScreenDoze:I

.field blacklist oldSubScreenOn:I

.field blacklist oldSub_batt_temp:I

.field greylist-max-o oldTemp:I

.field greylist-max-o oldVolt:I

.field blacklist oldWifiRailChargeMah:D

.field blacklist oldWifi_ap:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFormatVersion(Landroid/os/BatteryStats$HistoryPrinter;)I
    .locals 0

    iget p0, p0, Landroid/os/BatteryStats$HistoryPrinter;->mFormatVersion:I

    return p0
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/BatteryStats$HistoryPrinter;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/os/BatteryStats$HistoryPrinter;-><init>(Ljava/util/TimeZone;I)V

    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/TimeZone;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss-SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->mCurrentTimeEventTimeFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->mDate:Ljava/util/Date;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    const/4 v2, -0x1

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldProtectBatteryMode:I

    iput v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    iput-wide v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    iput p1, p0, Landroid/os/BatteryStats$HistoryPrinter;->mFormatVersion:I

    and-int/lit16 p1, p3, 0x80

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->mPerformanceBaseline:Z

    const/4 p1, 0x0

    if-eqz v1, :cond_1

    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p3, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->mHistoryItemTimestampFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iput-object p1, p0, Landroid/os/BatteryStats$HistoryPrinter;->mHistoryLogTimeFormatter:Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Landroid/os/BatteryStats$HistoryPrinter;->mHistoryItemTimestampFormat:Ljava/text/SimpleDateFormat;

    new-instance p3, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;

    invoke-direct {p3, p2, p1}, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;-><init>(Ljava/util/TimeZone;Landroid/os/BatteryStats-IA;)V

    iput-object p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->mHistoryLogTimeFormatter:Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;

    :goto_0
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/TimeZone;I)V
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->extendedBatteryHistoryContinuousCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1, p2}, Landroid/os/BatteryStats$HistoryPrinter;-><init>(ILjava/util/TimeZone;I)V

    return-void
.end method

.method private greylist-max-o printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v8, " ("

    const/16 v9, 0x9

    const-string v10, "h"

    const/16 v11, 0x2c

    const/4 v4, 0x1

    if-nez p4, :cond_2

    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->mFormatVersion:I

    if-ne v5, v4, :cond_0

    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v5, v5, p2

    const/16 v7, 0x13

    invoke-static {v5, v6, v2, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-boolean v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->mPerformanceBaseline:Z

    const/16 v6, 0x20

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->mDate:Ljava/util/Date;

    iget-wide v12, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v5, v12, v13}, Ljava/util/Date;->setTime(J)V

    iget-object v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->mHistoryItemTimestampFormat:Ljava/text/SimpleDateFormat;

    iget-object v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->mDate:Ljava/util/Date;

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->mHistoryLogTimeFormatter:Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;

    iget-wide v12, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v5, v2, v12, v13}, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->append(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    const-wide/16 v12, 0x0

    cmp-long v5, v5, v12

    if-gez v5, :cond_3

    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v5, v5, p2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v12, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    sub-long/2addr v5, v12

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    :goto_1
    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x4

    const-string v12, ":"

    if-ne v5, v6, :cond_5

    if-eqz p4, :cond_4

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "START\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    goto/16 :goto_37

    :cond_5
    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x7

    const/4 v13, 0x5

    const-string v14, " "

    const-string v15, "\n"

    if-eq v5, v13, :cond_77

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v5, v7, :cond_6

    goto/16 :goto_36

    :cond_6
    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v7, 0x8

    if-ne v5, v7, :cond_8

    if-eqz p4, :cond_7

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v0, "SHUTDOWN\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_37

    :cond_8
    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x6

    if-ne v5, v7, :cond_a

    if-eqz p4, :cond_9

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v0, "*OVERFLOW*\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_37

    :cond_a
    const/16 v5, 0xa

    if-nez p4, :cond_15

    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const-string v3, "0"

    const-string v11, "00"

    if-ge v7, v5, :cond_b

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_b
    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v5, 0x64

    if-ge v7, v5, :cond_c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    :goto_2
    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_16

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-gez v5, :cond_d

    goto :goto_3

    :cond_d
    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v7, 0x10

    if-ge v5, v7, :cond_e

    const-string v3, "0000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_e
    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v7, 0x100

    if-ge v5, v7, :cond_f

    const-string v3, "000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_f
    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v7, 0x1000

    if-ge v5, v7, :cond_10

    const-string v3, "00000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_10
    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v7, 0x10000

    if-ge v5, v7, :cond_11

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_11
    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v7, 0x100000

    if-ge v5, v7, :cond_12

    const-string v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_12
    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v7, 0x1000000

    if-ge v5, v7, :cond_13

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_13
    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v7, 0x10000000

    if-ge v5, v7, :cond_14

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    :goto_3
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_15
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v3, v5, :cond_16

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    const-string v3, ",Bl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_16
    :goto_4
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-eq v3, v5, :cond_22

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    if-eqz p4, :cond_17

    const-string v3, ",Bs="

    goto :goto_5

    :cond_17
    const-string v3, " status="

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    if-eq v3, v4, :cond_20

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1e

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1c

    if-eq v3, v6, :cond_1a

    if-eq v3, v13, :cond_18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_18
    if-eqz p4, :cond_19

    const-string v3, "f"

    goto :goto_6

    :cond_19
    const-string v3, "full"

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_1a
    if-eqz p4, :cond_1b

    const-string/jumbo v3, "n"

    goto :goto_7

    :cond_1b
    const-string/jumbo v3, "not-charging"

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_1c
    if-eqz p4, :cond_1d

    const-string v3, "d"

    goto :goto_8

    :cond_1d
    const-string v3, "discharging"

    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_1e
    if-eqz p4, :cond_1f

    const-string v3, "c"

    goto :goto_9

    :cond_1f
    const-string v3, "charging"

    :goto_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_20
    if-eqz p4, :cond_21

    const-string v3, "?"

    goto :goto_a

    :cond_21
    const-string/jumbo v3, "unknown"

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    :goto_b
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq v3, v5, :cond_2d

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    if-eqz p4, :cond_23

    const-string v3, ",Bh="

    goto :goto_c

    :cond_23
    const-string v3, " health="

    :goto_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch v3, :pswitch_data_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_16

    :pswitch_0
    if-eqz p4, :cond_24

    const-string/jumbo v3, "u"

    goto :goto_d

    :cond_24
    const-string/jumbo v3, "under-voltage"

    :goto_d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_16

    :pswitch_1
    if-eqz p4, :cond_25

    const-string v3, "l"

    goto :goto_e

    :cond_25
    const-string/jumbo v3, "over-limit"

    :goto_e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_2
    if-eqz p4, :cond_26

    const-string v3, "c"

    goto :goto_f

    :cond_26
    const-string v3, "cold"

    :goto_f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_3
    if-eqz p4, :cond_27

    const-string v3, "f"

    goto :goto_10

    :cond_27
    const-string v3, "failure"

    :goto_10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_4
    if-eqz p4, :cond_28

    const-string/jumbo v3, "v"

    goto :goto_11

    :cond_28
    const-string/jumbo v3, "over-voltage"

    :goto_11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_5
    if-eqz p4, :cond_29

    const-string v3, "d"

    goto :goto_12

    :cond_29
    const-string v3, "dead"

    :goto_12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_6
    if-eqz p4, :cond_2a

    move-object v3, v10

    goto :goto_13

    :cond_2a
    const-string/jumbo v3, "overheat"

    :goto_13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_7
    if-eqz p4, :cond_2b

    const-string v3, "g"

    goto :goto_14

    :cond_2b
    const-string v3, "good"

    :goto_14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_8
    if-eqz p4, :cond_2c

    const-string v3, "?"

    goto :goto_15

    :cond_2c
    const-string/jumbo v3, "unknown"

    :goto_15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    :goto_16
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq v3, v5, :cond_37

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    if-eqz p4, :cond_2e

    const-string v3, ",Bp="

    goto :goto_17

    :cond_2e
    const-string v3, " plug="

    :goto_17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    if-eqz v3, :cond_35

    if-eq v3, v4, :cond_33

    const/4 v5, 0x2

    if-eq v3, v5, :cond_31

    if-eq v3, v6, :cond_2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_2f
    if-eqz p4, :cond_30

    const-string/jumbo v3, "w"

    goto :goto_18

    :cond_30
    const-string/jumbo v3, "wireless"

    :goto_18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_31
    if-eqz p4, :cond_32

    const-string/jumbo v3, "u"

    goto :goto_19

    :cond_32
    const-string/jumbo v3, "usb"

    :goto_19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_33
    if-eqz p4, :cond_34

    const-string v3, "a"

    goto :goto_1a

    :cond_34
    const-string v3, "ac"

    :goto_1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_35
    if-eqz p4, :cond_36

    const-string/jumbo v3, "n"

    goto :goto_1b

    :cond_36
    const-string/jumbo v3, "none"

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    :goto_1c
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iget-short v5, v1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-eq v3, v5, :cond_39

    iget-short v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    if-eqz p4, :cond_38

    const-string v3, ",Bt="

    goto :goto_1d

    :cond_38
    const-string v3, " temp="

    :goto_1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_39
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iget-short v5, v1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    if-eq v3, v5, :cond_3b

    iget-short v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    if-eqz p4, :cond_3a

    const-string v3, ",Bv="

    goto :goto_1e

    :cond_3a
    const-string v3, " volt="

    :goto_1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3b
    if-nez p4, :cond_48

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    const/16 v5, -0x80

    if-eq v3, v5, :cond_3c

    move v3, v4

    goto :goto_1f

    :cond_3c
    const/4 v3, 0x0

    :goto_1f
    iget-byte v6, v1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    if-eq v6, v5, :cond_3d

    move v6, v4

    goto :goto_20

    :cond_3d
    const/4 v6, 0x0

    :goto_20
    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    if-eq v7, v5, :cond_3e

    move v7, v4

    goto :goto_21

    :cond_3e
    const/4 v7, 0x0

    :goto_21
    iget-byte v11, v1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    if-eq v11, v5, :cond_3f

    move v5, v4

    goto :goto_22

    :cond_3f
    const/4 v5, 0x0

    :goto_22
    iget v11, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    iget-short v13, v1, Landroid/os/BatteryStats$HistoryItem;->current:S

    if-eq v11, v13, :cond_40

    iget-short v11, v1, Landroid/os/BatteryStats$HistoryItem;->current:S

    iput v11, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    move v11, v4

    goto :goto_23

    :cond_40
    const/4 v11, 0x0

    :goto_23
    iget v13, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    iget-byte v9, v1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    if-eq v13, v9, :cond_41

    iget-byte v9, v1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    iput v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    move v11, v4

    :cond_41
    iget v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    iget-byte v13, v1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    if-eq v9, v13, :cond_42

    iget-byte v9, v1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    iput v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    move v11, v4

    :cond_42
    iget v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    iget-byte v13, v1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    if-eq v9, v13, :cond_43

    iget-byte v9, v1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    iput v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    move v11, v4

    :cond_43
    iget v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    iget-byte v13, v1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    if-eq v9, v13, :cond_44

    iget-byte v9, v1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    iput v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    move v11, v4

    :cond_44
    if-eqz v11, :cond_48

    const-string v9, " current="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_45

    const-string v3, " ap_temp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_45
    if-eqz v6, :cond_46

    const-string v3, " pa_temp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_46
    if-eqz v7, :cond_47

    const-string v3, " skin_temp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_47
    if-eqz v5, :cond_48

    const-string v3, " sub_batt_temp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_48
    const-string v3, " +"

    const-string v5, " -"

    if-nez p4, :cond_4a

    iget v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    if-eq v6, v7, :cond_4a

    iget-byte v6, v1, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    iput v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    if-ne v6, v4, :cond_49

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_49
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_24
    const-string/jumbo v6, "wifi_ap"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4a
    if-nez p4, :cond_4c

    iget v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    if-eq v6, v7, :cond_4c

    iget-byte v6, v1, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    iput v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    if-ne v6, v4, :cond_4b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_4b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_25
    const-string/jumbo v6, "otg"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    if-nez p4, :cond_4e

    iget v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    if-eq v6, v7, :cond_4e

    iget-byte v6, v1, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    iput v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    if-ne v6, v4, :cond_4d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_4d
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_26
    const-string v6, "high_speaker_volume"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    if-nez p4, :cond_50

    iget v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    if-eq v6, v7, :cond_50

    iget-byte v6, v1, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    iput v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    if-ne v6, v4, :cond_4f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_4f
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    const-string/jumbo v6, "sub_screen"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    if-nez p4, :cond_52

    iget v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    if-eq v6, v7, :cond_52

    iget-byte v6, v1, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    iput v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    if-ne v6, v4, :cond_51

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_51
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_28
    const-string/jumbo v3, "sub_screen_doze"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_52
    if-nez p4, :cond_57

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    if-eq v3, v5, :cond_53

    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    move v3, v4

    goto :goto_29

    :cond_53
    const/4 v3, 0x0

    :goto_29
    iget v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    iget-byte v6, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    if-eq v5, v6, :cond_54

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    move v3, v4

    :cond_54
    iget v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    if-eq v5, v6, :cond_55

    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    move v3, v4

    :cond_55
    iget v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    if-eq v5, v6, :cond_56

    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    goto :goto_2a

    :cond_56
    move v4, v3

    :goto_2a
    if-eqz v4, :cond_57

    const-string v3, " txshare_event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "0x%x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " online="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " current_event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " misc_event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_57
    if-nez p4, :cond_58

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldProtectBatteryMode:I

    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->protectBatteryMode:I

    if-eq v3, v4, :cond_58

    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->protectBatteryMode:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldProtectBatteryMode:I

    if-ltz v3, :cond_58

    invoke-static {}, Landroid/os/BatteryStats;->-$$Nest$sfgetPROTECT_BATTERY_MODE_TYPES()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_58

    const-string v3, " pbm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/BatteryStats;->-$$Nest$sfgetPROTECT_BATTERY_MODE_TYPES()[Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldProtectBatteryMode:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_58
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    div-int/lit16 v3, v3, 0x3e8

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eq v4, v3, :cond_5a

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eqz p4, :cond_59

    const-string v3, ",Bcc="

    goto :goto_2b

    :cond_59
    const-string v3, " charge="

    :goto_2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5a
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_5c

    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    iput-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    if-eqz p4, :cond_5b

    const-string v3, ",Mrc="

    goto :goto_2c

    :cond_5b
    const-string v3, " modemRailChargemAh="

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_5e

    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    iput-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    if-eqz p4, :cond_5d

    const-string v3, ",Wrc="

    goto :goto_2d

    :cond_5d
    const-string v3, " wifiRailChargemAh="

    :goto_2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    sget-object v6, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v7, p4, 0x1

    const/16 v9, 0xa

    invoke-static/range {v2 .. v7}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    sget-object v6, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v7, p4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const-string v4, ":\""

    const-string v5, "\""

    if-eqz v3, :cond_61

    if-eqz p4, :cond_60

    const-string v3, ",wr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_5f

    invoke-static {}, Landroid/os/BatteryStats;->-$$Nest$sfgetsUidToString()Landroid/os/BatteryStats$IntToString;

    move-result-object v3

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v6, v6, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-interface {v3, v6}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const-string v6, "\"\""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    :cond_5f
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2e

    :cond_60
    const-string v3, " wake_reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    :goto_2e
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_6a

    if-eqz p4, :cond_62

    const-string v14, ","

    :cond_62
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v6, 0x8000

    and-int/2addr v3, v6

    if-eqz v3, :cond_63

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    :cond_63
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_64

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_64
    :goto_2f
    if-eqz p4, :cond_65

    sget-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    goto :goto_30

    :cond_65
    sget-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    :goto_30
    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v7, -0xc001

    and-int/2addr v6, v7

    if-ltz v6, :cond_66

    array-length v7, v3

    if-ge v6, v7, :cond_66

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_66
    if-eqz p4, :cond_67

    const-string v3, "Ev"

    goto :goto_31

    :cond_67
    const-string v3, "event"

    :goto_31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_32
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_69

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    const/4 v7, -0x1

    if-ne v3, v7, :cond_68

    sget-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    aget-object v3, v3, v6

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v6, v6, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-interface {v3, v6}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const-string v4, "\"\""

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_68
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_69
    sget-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    aget-object v3, v3, v6

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v6, v6, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-interface {v3, v6}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6a
    :goto_33
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v3, :cond_6b

    if-eqz p5, :cond_6b

    if-nez p4, :cond_6b

    const-string v3, "\n                 Stats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    const-string v4, "\n                    "

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerStats;->formatForBatteryHistory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6b
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-eqz v3, :cond_6c

    if-eqz p5, :cond_6c

    if-nez p4, :cond_6c

    const-string v3, " procstate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    invoke-virtual {v3}, Landroid/os/BatteryStats$ProcessStateChange;->formatForBatteryHistory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6c
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v3, :cond_76

    if-nez p4, :cond_72

    const-string v3, "                 Details: cpu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "u+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v3, :cond_6f

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v3, :cond_6d

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    :cond_6d
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v3, :cond_6e

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    :cond_6e
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6f
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "                          /proc/stat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " usr, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sys, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " io, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " irq, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sirq, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " idle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    add-int/2addr v4, v3

    if-lez v4, :cond_70

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v3, v3

    int-to-float v5, v4

    div-float/2addr v3, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%.1f%%"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    mul-int/2addr v4, v9

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_70
    const-string v3, ", SubsystemPowerState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz v3, :cond_71

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    goto :goto_34

    :cond_71
    const-string v3, "Empty"

    :goto_34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_35

    :cond_72
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",0,Dcpu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v3, :cond_74

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v3, :cond_73

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    :cond_73
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v3, :cond_74

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    :cond_74
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",0,Dpst="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz v3, :cond_75

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_75
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_76
    :goto_35
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iget v0, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v3, 0x80000

    and-int/2addr v0, v3

    if-eqz v0, :cond_7b

    iget v0, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v3, -0x80001

    and-int/2addr v0, v3

    iput v0, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_37

    :cond_77
    :goto_36
    if-eqz p4, :cond_78

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_78
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v3, v7, :cond_79

    const-string v3, "RESET:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    :cond_79
    const-string v3, "TIME:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_7a

    iget-wide v0, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_7a
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->mDate:Ljava/util/Date;

    iget-wide v4, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    iget-object v1, v0, Landroid/os/BatteryStats$HistoryPrinter;->mCurrentTimeEventTimeFormat:Ljava/text/SimpleDateFormat;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryPrinter;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7b
    :goto_37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

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

.method private greylist-max-o printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V
    .locals 0

    const/16 p0, 0x2f

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private greylist-max-o printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V
    .locals 0

    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string p0, "="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "u+"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "s"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public greylist-max-o printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object p0

    const-string p2, "\n"

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p2, p0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object p4, p0, p3

    const-wide v0, 0x20900000006L

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public greylist-max-o printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method greylist-max-o reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldProtectBatteryMode:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    return-void
.end method
