.class public Lcom/android/internal/os/TimeoutRecord;
.super Ljava/lang/Object;
.source "TimeoutRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/TimeoutRecord$TimeoutKind;
    }
.end annotation


# instance fields
.field public final blacklist mEndTakenBeforeLocks:Z

.field public final blacklist mEndUptimeMillis:J

.field private blacklist mExpiredTimer:Ljava/lang/AutoCloseable;

.field public final blacklist mKind:I

.field public final blacklist mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

.field public final blacklist mReason:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(ILjava/lang/String;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/os/TimeoutRecord;->mKind:I

    iput-object p2, p0, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/internal/os/TimeoutRecord;->mEndUptimeMillis:J

    iput-boolean p5, p0, Lcom/android/internal/os/TimeoutRecord;->mEndTakenBeforeLocks:Z

    new-instance p2, Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-direct {p2, p1, p3, p4}, Lcom/android/internal/os/anr/AnrLatencyTracker;-><init>(IJ)V

    iput-object p2, p0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/os/TimeoutRecord;->mExpiredTimer:Ljava/lang/AutoCloseable;

    return-void
.end method

.method private static blacklist endingApproximatelyNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v0, Lcom/android/internal/os/TimeoutRecord;

    const/4 v5, 0x0

    move v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/TimeoutRecord;-><init>(ILjava/lang/String;JZ)V

    return-object v0
.end method

.method private static blacklist endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v0, Lcom/android/internal/os/TimeoutRecord;

    const/4 v5, 0x1

    move v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/TimeoutRecord;-><init>(ILjava/lang/String;JZ)V

    return-object v0
.end method

.method public static blacklist forApp(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingApproximatelyNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forAppStart(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forBroadcastReceiver(Landroid/content/Intent;)Lcom/android/internal/os/TimeoutRecord;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Broadcast of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toString(Ljava/lang/StringBuilder;)V

    const/4 p0, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forBroadcastReceiver(Landroid/content/Intent;J)Lcom/android/internal/os/TimeoutRecord;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Broadcast of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toString(Ljava/lang/StringBuilder;)V

    const-string p0, ", waited "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forBroadcastReceiver(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object p0, v0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object p0, p2

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/android/internal/os/TimeoutRecord;->forBroadcastReceiver(Landroid/content/Intent;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forContentProvider(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingApproximatelyNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forInputDispatchNoFocusedWindow(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forInputDispatchWindowUnresponsive(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forJobService(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .locals 1

    const/16 v0, 0x9

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forServiceExec(Ljava/lang/String;J)Lcom/android/internal/os/TimeoutRecord;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "executing service "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", waited "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p1, p0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forServiceStartWithEndTime(Ljava/lang/String;J)Lcom/android/internal/os/TimeoutRecord;
    .locals 6

    new-instance v0, Lcom/android/internal/os/TimeoutRecord;

    const/4 v1, 0x4

    const/4 v5, 0x1

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/TimeoutRecord;-><init>(ILjava/lang/String;JZ)V

    return-object v0
.end method

.method public static blacklist forShortFgsTimeout(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist closeExpiredTimer()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/os/TimeoutRecord;->mExpiredTimer:Ljava/lang/AutoCloseable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist setExpiredTimer(Ljava/lang/AutoCloseable;)Lcom/android/internal/os/TimeoutRecord;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/TimeoutRecord;->mExpiredTimer:Ljava/lang/AutoCloseable;

    return-object p0
.end method
