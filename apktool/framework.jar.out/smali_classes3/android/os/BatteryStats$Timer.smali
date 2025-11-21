.class public abstract Landroid/os/BatteryStats$Timer;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Timer"
.end annotation


# direct methods
.method public constructor greylist-max-p <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist getCountLocked(I)I
.end method

.method public greylist-max-o getCurrentDurationMsLocked(J)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public greylist-max-o getMaxDurationMsLocked(J)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public greylist-max-o getSubTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract greylist-max-o getTimeSinceMarkLocked(J)J
.end method

.method public greylist-max-o getTotalDurationMsLocked(J)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public abstract greylist getTotalTimeLocked(JI)J
.end method

.method public greylist-max-o isRunningLocked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract greylist-max-o logState(Landroid/util/Printer;Ljava/lang/String;)V
.end method
