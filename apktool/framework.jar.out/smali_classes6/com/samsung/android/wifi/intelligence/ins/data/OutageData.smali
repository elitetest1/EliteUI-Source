.class public final Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;
.super Ljava/lang/Object;
.source "OutageData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REGEX_ONEUI_6_0_OUTAGE_LOG:Ljava/util/regex/Pattern;

.field public static final blacklist REGEX_ONEUI_6_1_OUTAGE_LOG:Ljava/util/regex/Pattern;

.field private static final blacklist TAG:Ljava/lang/String; = "OutageData"


# instance fields
.field private blacklist L2TransitMode:Ljava/lang/String;

.field private blacklist RSSI:Ljava/lang/String;

.field private blacklist TxSpeed:Ljava/lang/String;

.field private blacklist ccaBusyTimeDiffMs:Ljava/lang/String;

.field private blacklist defaultUsed:Ljava/lang/String;

.field private blacklist latency:Ljava/lang/String;

.field private blacklist lqCallbackTriggered:Ljava/lang/String;

.field private blacklist lqComebackTriggered:Ljava/lang/String;

.field private blacklist outageCnt:Ljava/lang/String;

.field private blacklist radioOnTimeDiffMs:Ljava/lang/String;

.field private blacklist recoveryCnt:Ljava/lang/String;

.field private blacklist throughput:Ljava/lang/String;

.field private final blacklist timestamp:Ljava/lang/String;

.field private blacklist txCntDiff:Ljava/lang/String;

.field private blacklist txRatio:Ljava/lang/String;

.field private blacklist voiceCall:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "(Link stat: )?(?<radioOnTimeDiffMs>\\d+) / (?<ccaBusyTimeDiffMs>\\d+) / (?<txRatio>[\\d.]+) \\((?<txCntDiff>\\d+)\\) / (?<TxSpeed>\\d+) / (?<RSSI>-[\\d.]+) \\|\\| (linkSpeedMbps )?(?<TreeNode1Value>[\\d.]+) : (?<Node1Variable>[\\d.]+) / ((successRate )?(?<TreeNode2Value>[\\d.]+) : (?<Node2Variable>[\\d.]+) / )?((ccaRo )?(?<TreeNode3Value>[\\d.]+) : (?<Node3Variable>[\\d.]+) / )?((RT QoS: )?(?<prediction>(false|true))) \\((?<decision>(false|true))\\) \\|\\| QoS: (?<latency>[\\d.]+) ms / (?<throughput>[\\d.]+) Mbps (\\((?<defaultUsed>[YN])\\) )?(/ (?<L2TransitMode>[Y]) / (?<voiceCall>[YN]) / )?/ (?<outageCnt>\\d) \\((?<lqCallbackTriggered>[YN01])\\)( / (?<recoveryCnt>\\d) (?<lqComebackTriggered>[YN]))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->REGEX_ONEUI_6_0_OUTAGE_LOG:Ljava/util/regex/Pattern;

    const-string v0, "Link stat: (?<radioOnTimeDiffMs>\\d+) / (?<ccaBusyTimeDiffMs>\\d+) / (?<txRatio>[\\d.]+) \\((?<txCntDiff>\\d+)\\) / (?<TxSpeed>\\d+) / (?<RSSI>-[\\d.]+) \\|\\| ((?<TreeNode1Value>[\\d.]+) : (?<Node1Variable>[\\d.]+) / )?((?<TreeNode2Value>[\\d.]+) : (?<Node2Variable>[\\d.]+) / )?((?<TreeNode3Value>[\\d.]+) : (?<Node3Variable>[\\d.]+) / )?(?<prediction>[GB]) \\((?<decision>[GB])\\) \\|\\| (?<latency>[\\d.]+) ms / (?<throughput>[\\d.]+) Mbps / (?<defaultUsed>[YN]) \\|\\| (?<L2TransitMode>\\d) / (?<voiceCall>[YN]) / (?<outageCnt>\\d) (?<lqCallbackTriggered>[YN]) / (?<recoveryCnt>\\d) (?<lqComebackTriggered>[YN])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->REGEX_ONEUI_6_1_OUTAGE_LOG:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-1"

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->radioOnTimeDiffMs:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->ccaBusyTimeDiffMs:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->txRatio:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->txCntDiff:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->TxSpeed:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->RSSI:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->latency:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->throughput:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->defaultUsed:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->L2TransitMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->voiceCall:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->outageCnt:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->lqCallbackTriggered:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->recoveryCnt:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->lqComebackTriggered:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->timestamp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->radioOnTimeDiffMs:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->ccaBusyTimeDiffMs:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->txRatio:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->txCntDiff:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->TxSpeed:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->RSSI:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->latency:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->throughput:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->defaultUsed:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->L2TransitMode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->voiceCall:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->outageCnt:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->lqCallbackTriggered:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->recoveryCnt:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->lqComebackTriggered:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/wifi/intelligence/ins/data/OutageData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-1"

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->radioOnTimeDiffMs:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->ccaBusyTimeDiffMs:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->txRatio:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->txCntDiff:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->TxSpeed:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->RSSI:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->latency:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->throughput:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->defaultUsed:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->L2TransitMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->voiceCall:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->outageCnt:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->lqCallbackTriggered:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->recoveryCnt:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->lqComebackTriggered:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->timestamp:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->ccaBusyTimeDiffMs:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->defaultUsed:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->L2TransitMode:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->latency:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->lqCallbackTriggered:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->lqComebackTriggered:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->outageCnt:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->radioOnTimeDiffMs:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->recoveryCnt:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->RSSI:Ljava/lang/String;

    iput-object p12, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->throughput:Ljava/lang/String;

    iput-object p13, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->txCntDiff:Ljava/lang/String;

    iput-object p14, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->txRatio:Ljava/lang/String;

    iput-object p15, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->TxSpeed:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->voiceCall:Ljava/lang/String;

    return-void
.end method

.method public static blacklist fromLog(Ljava/lang/String;)Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->REGEX_ONEUI_6_0_OUTAGE_LOG:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->REGEX_ONEUI_6_1_OUTAGE_LOG:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd-HHmmss_SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string/jumbo v3, "voiceCall"

    const-string v4, "TxSpeed"

    const-string/jumbo v6, "txRatio"

    const-string/jumbo v7, "txCntDiff"

    const-string/jumbo v8, "throughput"

    const-string v9, "RSSI"

    const-string/jumbo v10, "recoveryCnt"

    const-string/jumbo v11, "radioOnTimeDiffMs"

    const-string/jumbo v12, "outageCnt"

    const-string v13, "lqComebackTriggered"

    const-string v14, "lqCallbackTriggered"

    const-string v15, "latency"

    move/from16 p0, v2

    const-string v2, "L2TransitMode"

    move-object/from16 v16, v5

    const-string v5, "defaultUsed"

    move-object/from16 v17, v0

    const-string v0, "ccaBusyTimeDiffMs"

    move-object/from16 v18, v3

    const-string v3, "OutageData"

    move-object/from16 v19, v4

    const-string v4, "-1"

    if-eqz p0, :cond_0

    move-object/from16 p0, v6

    const-string v6, "The Log string matches ONEUI_6_0_OUTAGE_LOG"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Ljava/lang/String;

    move-object/from16 v7, p0

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v9, v19

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v19, v9

    check-cast v19, Ljava/lang/String;

    move-object/from16 v9, v18

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Ljava/lang/String;

    move-object v4, v14

    move-object v14, v10

    move-object v10, v4

    move-object v4, v13

    move-object v13, v11

    move-object v11, v4

    move-object v4, v3

    move-object v9, v5

    move-object/from16 v18, v7

    move-object/from16 v5, v16

    move-object v7, v0

    move-object/from16 v16, v8

    move-object v8, v2

    invoke-direct/range {v4 .. v20}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    move-object v1, v6

    move-object/from16 v6, v19

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->matches()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v19, v6

    const-string v6, "The Log string matches ONEUI_6_1_OUTAGE_LOG"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;

    move-object/from16 v6, v17

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v7, v19

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v19, v7

    check-cast v19, Ljava/lang/String;

    move-object/from16 v7, v18

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Ljava/lang/String;

    move-object v4, v15

    move-object v15, v9

    move-object v9, v4

    move-object v4, v14

    move-object v14, v10

    move-object v10, v4

    move-object v4, v13

    move-object v13, v11

    move-object v11, v4

    move-object v6, v0

    move-object/from16 v18, v1

    move-object v4, v3

    move-object v7, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v8

    move-object v8, v2

    invoke-direct/range {v4 .. v20}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1
    move-object/from16 v5, v16

    const-string v0, "The Log string does not match any regex!"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;

    invoke-direct {v0, v5}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getCsvHeader()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "outageTimestamp,radioOnTimeDiffMs,ccaBusyTimeDiffMs,txRatio,txCntDiff,TxSpeed,RSSI,latency,throughput,defaultUsed,L2TransitMode,voiceCall,outageCnt,lqCallbackTriggered,recoveryCnt,lqComebackTriggered\n"

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getLatency()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->latency:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getLqCallbackTriggered()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->lqCallbackTriggered:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getOutageCnt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->outageCnt:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getTimestamp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->timestamp:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setLatency(D)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->latency:Ljava/lang/String;

    return-void
.end method

.method public blacklist setLqCallbackTriggered(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "Y"

    goto :goto_0

    :cond_0
    const-string p1, "N"

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->lqCallbackTriggered:Ljava/lang/String;

    return-void
.end method

.method public blacklist setOutageCnt(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->outageCnt:Ljava/lang/String;

    return-void
.end method

.method public blacklist toCsvString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->radioOnTimeDiffMs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->ccaBusyTimeDiffMs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->txRatio:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->txCntDiff:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->TxSpeed:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->RSSI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->latency:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->throughput:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->defaultUsed:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->L2TransitMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->voiceCall:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->outageCnt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->lqCallbackTriggered:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->recoveryCnt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->lqComebackTriggered:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->radioOnTimeDiffMs:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->ccaBusyTimeDiffMs:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->txRatio:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->txCntDiff:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->TxSpeed:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->RSSI:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->latency:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->throughput:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->defaultUsed:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->L2TransitMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->voiceCall:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->outageCnt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->lqCallbackTriggered:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->recoveryCnt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->lqComebackTriggered:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
