.class public abstract Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BatteryHistoryFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;",
        ">;"
    }
.end annotation


# instance fields
.field public final blacklist monotonicTimeMs:J


# direct methods
.method public constructor blacklist <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    return-void
.end method


# virtual methods
.method public blacklist compareTo(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)I
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    iget-wide p0, p1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->compareTo(Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    check-cast p1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    iget-wide p0, p1, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method
