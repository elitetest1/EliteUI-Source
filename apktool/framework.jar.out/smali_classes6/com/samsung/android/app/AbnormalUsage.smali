.class public Lcom/samsung/android/app/AbnormalUsage;
.super Ljava/lang/Object;
.source "AbnormalUsage.java"


# static fields
.field private static final blacklist RUNTIME_USED_LIMIT:J = 0x6ddd0L

.field private static final blacklist RUNTIME_USED_WARM_LIMIT:J = 0x5cc60L

.field private static final blacklist TAG:Ljava/lang/String; = "AbnormalUsage"

.field private static final blacklist VIEW_COUNT_LIMIT:J = 0x898L

.field private static final blacklist VIEW_COUNT_PERIOD:J = 0x8L

.field private static final blacklist VIEW_COUNT_WARM_LIMIT:J = 0x12cL


# instance fields
.field private blacklist mCurrStopCount:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/AbnormalUsage;->mCurrStopCount:I

    return-void
.end method

.method private blacklist checkViewUsage()V
    .locals 12

    const-string v0, "AbnormalUsage"

    iget v1, p0, Lcom/samsung/android/app/AbnormalUsage;->mCurrStopCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/app/AbnormalUsage;->mCurrStopCount:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    const-wide/32 v5, 0x5cc60

    cmp-long v1, v3, v5

    const-wide/32 v5, 0x6ddd0

    const/4 v7, 0x0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/AbnormalUsage;->mCurrStopCount:I

    int-to-long v8, v1

    const-wide/16 v10, 0x7

    and-long/2addr v8, v10

    const-wide/16 v10, 0x1

    cmp-long v1, v8, v10

    if-eqz v1, :cond_1

    :cond_0
    cmp-long v1, v3, v5

    if-ltz v1, :cond_2

    :cond_1
    const-class v1, Landroid/view/View;

    invoke-static {v1, v7}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v8

    const-wide/16 v10, 0x12c

    cmp-long v1, v8, v10

    if-lez v1, :cond_3

    move v7, v2

    goto :goto_0

    :cond_2
    const-wide/16 v8, 0x0

    :cond_3
    :goto_0
    const-wide/16 v10, 0x898

    cmp-long v1, v8, v10

    if-gtz v1, :cond_4

    if-eqz v7, :cond_5

    cmp-long v1, v3, v5

    if-lez v1, :cond_5

    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-interface {v1, v5, v2}, Landroid/app/IActivityManager;->reportAbnormalUsage(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "ViewCount: report abnormal resource usage: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "report abnormal resource usage: PID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " view count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " memory usage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " stop count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/app/AbnormalUsage;->mCurrStopCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method


# virtual methods
.method public blacklist checkAbnormalUsage()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/AbnormalUsage;->checkViewUsage()V

    return-void
.end method
