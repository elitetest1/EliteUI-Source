.class public final Lcom/android/internal/os/RailStats;
.super Ljava/lang/Object;
.source "RailStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/RailStats$RailInfoData;
    }
.end annotation


# static fields
.field private static final blacklist CELLULAR_SUBSYSTEM:Ljava/lang/String; = "cellular"

.field private static final blacklist TAG:Ljava/lang/String; = "RailStats"

.field private static final blacklist WIFI_SUBSYSTEM:Ljava/lang/String; = "wifi"


# instance fields
.field private blacklist mCellularTotalEnergyUseduWs:J

.field private blacklist mRailInfoData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/os/RailStats$RailInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRailStatsAvailability:Z

.field private blacklist mWifiTotalEnergyUseduWs:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/RailStats;->mRailInfoData:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/RailStats;->mRailStatsAvailability:Z

    return-void
.end method


# virtual methods
.method public blacklist getCellularTotalEnergyUseduWs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    return-wide v0
.end method

.method public blacklist getRailStats()Lcom/android/internal/os/RailStats;
    .locals 0

    return-object p0
.end method

.method public blacklist getWifiTotalEnergyUseduWs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    return-wide v0
.end method

.method public blacklist isRailStatsAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/os/RailStats;->mRailStatsAvailability:Z

    return p0
.end method

.method public blacklist reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    return-void
.end method

.method public blacklist resetCellularTotalEnergyUsed()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    return-void
.end method

.method public blacklist resetWifiTotalEnergyUsed()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    return-void
.end method

.method public blacklist setRailStatsAvailability(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/os/RailStats;->mRailStatsAvailability:Z

    return-void
.end method

.method public blacklist updateRailData(JLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    const-string/jumbo v11, "wifi"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v12, "cellular"

    if-nez v1, :cond_0

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/internal/os/RailStats;->mRailInfoData:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/RailStats$RailInfoData;

    if-nez v1, :cond_2

    iget-object v13, v0, Lcom/android/internal/os/RailStats;->mRailInfoData:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    new-instance v1, Lcom/android/internal/os/RailStats$RailInfoData;

    const/4 v10, 0x0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/os/RailStats$RailInfoData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLcom/android/internal/os/RailStats-IA;)V

    invoke-interface {v13, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, v0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    return-void

    :cond_1
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v1, v0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    return-void

    :cond_2
    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    iget-wide v2, v1, Lcom/android/internal/os/RailStats$RailInfoData;->timestampSinceBootMs:J

    sub-long v2, v6, v2

    iget-wide v13, v1, Lcom/android/internal/os/RailStats$RailInfoData;->energyUsedSinceBootuWs:J

    sub-long v13, v8, v13

    const-wide/16 v15, 0x0

    cmp-long v2, v2, v15

    if-ltz v2, :cond_3

    cmp-long v2, v13, v15

    if-gez v2, :cond_4

    :cond_3
    iget-wide v13, v1, Lcom/android/internal/os/RailStats$RailInfoData;->energyUsedSinceBootuWs:J

    :cond_4
    iput-wide v6, v1, Lcom/android/internal/os/RailStats$RailInfoData;->timestampSinceBootMs:J

    iput-wide v8, v1, Lcom/android/internal/os/RailStats$RailInfoData;->energyUsedSinceBootuWs:J

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v1, v0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    add-long/2addr v1, v13

    iput-wide v1, v0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    return-void

    :cond_5
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v1, v0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    add-long/2addr v1, v13

    iput-wide v1, v0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    :cond_6
    :goto_0
    return-void
.end method
