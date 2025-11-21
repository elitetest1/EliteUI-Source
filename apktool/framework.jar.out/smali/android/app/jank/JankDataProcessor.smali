.class public Landroid/app/jank/JankDataProcessor;
.super Ljava/lang/Object;
.source "JankDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/jank/JankDataProcessor$PendingJankStat;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_LOGGING:Z = false

.field private static final blacklist LOG_BATCH_FREQUENCY:I = 0x32

.field private static final blacklist MAX_IN_MEMORY_STATS:I = 0x19

.field private static final blacklist TAG:Ljava/lang/String; = "JankDataProcessor"


# instance fields
.field private blacklist mCurrentBatchCount:I

.field private blacklist mPendingJankStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/app/jank/JankDataProcessor$PendingJankStat;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingJankStatsPool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Landroid/app/jank/JankDataProcessor$PendingJankStat;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStateTracker:Landroid/app/jank/StateTracker;


# direct methods
.method public static synthetic blacklist $r8$lambda$FFZk-evpWDaWxTXpMFQcJeDVL_4(Landroid/app/jank/JankDataProcessor;Landroid/app/jank/JankDataProcessor$PendingJankStat;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/jank/JankDataProcessor;->lambda$logMetricCounts$0(Landroid/app/jank/JankDataProcessor$PendingJankStat;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/jank/StateTracker;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/jank/JankDataProcessor;->mCurrentBatchCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/jank/JankDataProcessor;->mStateTracker:Landroid/app/jank/StateTracker;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingStates:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStatsPool:Landroid/util/Pools$SimplePool;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/app/jank/JankDataProcessor;->mStateTracker:Landroid/app/jank/StateTracker;

    return-void
.end method

.method private blacklist incrementBatchCountAndMaybeLogStats()V
    .locals 2

    iget v0, p0, Landroid/app/jank/JankDataProcessor;->mCurrentBatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/jank/JankDataProcessor;->mCurrentBatchCount:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/jank/JankDataProcessor;->logMetricCounts()V

    :cond_0
    return-void
.end method

.method private blacklist jankDataProcessingComplete()V
    .locals 1

    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mStateTracker:Landroid/app/jank/StateTracker;

    invoke-virtual {v0}, Landroid/app/jank/StateTracker;->stateProcessingComplete()V

    iget-object p0, p0, Landroid/app/jank/JankDataProcessor;->mPendingStates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private synthetic blacklist lambda$logMetricCounts$0(Landroid/app/jank/JankDataProcessor$PendingJankStat;)V
    .locals 12

    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getWidgetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getRefreshRate()I

    move-result v4

    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getWidgetCategory()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/jank/JankDataProcessor;->widgetCategoryToInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getWidgetState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/jank/JankDataProcessor;->widgetStateToInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getTotalFrames()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getJankyFrames()J

    move-result-wide v9

    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getFrameOverrunBuckets()[I

    move-result-object v11

    const/16 v0, 0x3b6

    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IIIJJ[I)V

    invoke-static {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fgetmActivityName(Landroid/app/jank/JankDataProcessor$PendingJankStat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStatsPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {p0, p1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist mergeExistingStat(Ljava/lang/String;Landroid/app/jank/AppJankStats;)V
    .locals 4

    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/jank/JankDataProcessor$PendingJankStat;

    invoke-static {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fgetmJankyFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;)J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/app/jank/AppJankStats;->getJankyFrameCount()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmJankyFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V

    invoke-static {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fgetmTotalFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;)J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/app/jank/AppJankStats;->getTotalFrameCount()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmTotalFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V

    invoke-static {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fgetmFrameOverrunBuckets(Landroid/app/jank/JankDataProcessor$PendingJankStat;)[I

    move-result-object p1

    invoke-virtual {p2}, Landroid/app/jank/AppJankStats;->getRelativeFrameTimeHistogram()Landroid/app/jank/RelativeFrameTimeHistogram;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/jank/RelativeFrameTimeHistogram;->getBucketCounters()[I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/app/jank/JankDataProcessor;->mergeOverrunHistograms([I[I)V

    return-void
.end method

.method private blacklist mergeNewStat(Ljava/lang/String;Ljava/lang/String;Landroid/app/jank/AppJankStats;)V
    .locals 3

    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStatsPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;

    invoke-direct {v0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;-><init>()V

    :cond_1
    invoke-virtual {v0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->clearStats()V

    invoke-static {v0, p2}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmActivityName(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/jank/AppJankStats;->getUid()I

    move-result p2

    invoke-static {v0, p2}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmUid(Landroid/app/jank/JankDataProcessor$PendingJankStat;I)V

    invoke-virtual {p3}, Landroid/app/jank/AppJankStats;->getWidgetId()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmWidgetId(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/jank/AppJankStats;->getWidgetCategory()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmWidgetCategory(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/jank/AppJankStats;->getWidgetState()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmWidgetState(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/jank/AppJankStats;->getTotalFrameCount()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmTotalFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V

    invoke-virtual {p3}, Landroid/app/jank/AppJankStats;->getJankyFrameCount()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmJankyFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V

    invoke-static {v0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fgetmFrameOverrunBuckets(Landroid/app/jank/JankDataProcessor$PendingJankStat;)[I

    move-result-object p2

    invoke-virtual {p3}, Landroid/app/jank/AppJankStats;->getRelativeFrameTimeHistogram()Landroid/app/jank/RelativeFrameTimeHistogram;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/jank/RelativeFrameTimeHistogram;->getBucketCounters()[I

    move-result-object p3

    invoke-direct {p0, p2, p3}, Landroid/app/jank/JankDataProcessor;->mergeOverrunHistograms([I[I)V

    iget-object p0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist mergeOverrunHistograms([I[I)V
    .locals 2

    array-length p0, p1

    array-length v0, p2

    if-eq p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget v0, p1, p0

    aget v1, p2, p0

    add-int/2addr v0, v1

    aput v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist recordFrameCount(Landroid/view/SurfaceControl$JankData;Landroid/app/jank/StateTracker$StateData;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/app/jank/StateTracker$StateData;->mStateDataKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStatsPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;

    invoke-direct {v0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;-><init>()V

    :cond_1
    invoke-virtual {v0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->clearStats()V

    invoke-static {v0, p3}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmActivityName(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V

    invoke-static {v0, p4}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmUid(Landroid/app/jank/JankDataProcessor$PendingJankStat;I)V

    iget-object p0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    iget-object p2, p2, Landroid/app/jank/StateTracker$StateData;->mStateDataKey:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-wide p2, v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->processedVsyncId:J

    invoke-virtual {p1}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v1

    cmp-long p0, p2, v1

    if-nez p0, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-static {v0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fgetmTotalFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;)J

    move-result-wide p2

    const-wide/16 v1, 0x1

    add-long/2addr p2, v1

    invoke-static {v0, p2, p3}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmTotalFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$JankData;->getJankType()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    invoke-static {v0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fgetmJankyFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;)J

    move-result-wide p2

    add-long/2addr p2, v1

    invoke-static {v0, p2, p3}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmJankyFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/SurfaceControl$JankData;->getActualAppFrameTimeNanos()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->recordFrameOverrun(J)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide p0

    iput-wide p0, v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->processedVsyncId:J

    return-void
.end method

.method private blacklist widgetCategoryToInt(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo p0, "navigation"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v0

    goto :goto_0

    :sswitch_1
    const-string p0, "animation"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_0

    :sswitch_2
    const-string p0, "keyboard"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_0

    :sswitch_3
    const-string/jumbo p0, "other"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_0

    :sswitch_4
    const-string/jumbo p0, "media"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_5
    const-string/jumbo p0, "scroll"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v5, v3

    :goto_0
    packed-switch v5, :pswitch_data_0

    return v3

    :pswitch_0
    return v1

    :pswitch_1
    return v4

    :pswitch_2
    return v0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    return v2

    :pswitch_5
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x361a1933 -> :sswitch_5
        0x62f6fe4 -> :sswitch_4
        0x6527f10 -> :sswitch_3
        0x1e0673e7 -> :sswitch_2
        0x42ab1b84 -> :sswitch_1
        0x6f060a14 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist widgetStateToInt(Ljava/lang/String;)I
    .locals 11

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/16 v0, 0x9

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo p0, "playback"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    move v10, v0

    goto/16 :goto_0

    :sswitch_1
    const-string p0, "flinging"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    move v10, v1

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo p0, "predictive_back"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    move v10, v2

    goto :goto_0

    :sswitch_3
    const-string p0, "animating"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v10, v3

    goto :goto_0

    :sswitch_4
    const-string/jumbo p0, "scrolling"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v10, v4

    goto :goto_0

    :sswitch_5
    const-string/jumbo p0, "none"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v10, v5

    goto :goto_0

    :sswitch_6
    const-string/jumbo p0, "zooming"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v10, v6

    goto :goto_0

    :sswitch_7
    const-string p0, "dragging"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move v10, v7

    goto :goto_0

    :sswitch_8
    const-string/jumbo p0, "tapping"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    move v10, v8

    goto :goto_0

    :sswitch_9
    const-string/jumbo p0, "swiping"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    move v10, v9

    :goto_0
    packed-switch v10, :pswitch_data_0

    return v9

    :pswitch_0
    return v1

    :pswitch_1
    return v6

    :pswitch_2
    const/16 p0, 0xa

    return p0

    :pswitch_3
    return v2

    :pswitch_4
    return v7

    :pswitch_5
    return v8

    :pswitch_6
    return v3

    :pswitch_7
    return v4

    :pswitch_8
    return v0

    :pswitch_9
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x6b868a89 -> :sswitch_9
        -0x5bc8486b -> :sswitch_8
        -0x322222b1 -> :sswitch_7
        -0x68e80d1 -> :sswitch_6
        0x33af38 -> :sswitch_5
        0x18e721f5 -> :sswitch_4
        0x42ab1b5e -> :sswitch_3
        0x684bb7c7 -> :sswitch_2
        0x6e443d06 -> :sswitch_1
        0x7001d61b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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


# virtual methods
.method public blacklist getPendingJankStats()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/app/jank/JankDataProcessor$PendingJankStat;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    return-object p0
.end method

.method public blacklist logMetricCounts()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Landroid/app/jank/JankDataProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/jank/JankDataProcessor$$ExternalSyntheticLambda0;-><init>(Landroid/app/jank/JankDataProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/jank/JankDataProcessor;->mCurrentBatchCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public blacklist mergeJankStats(Landroid/app/jank/AppJankStats;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mStateTracker:Landroid/app/jank/StateTracker;

    invoke-virtual {p1}, Landroid/app/jank/AppJankStats;->getWidgetCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/jank/AppJankStats;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/jank/AppJankStats;->getWidgetState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/jank/StateTracker;->getStateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Landroid/app/jank/JankDataProcessor;->mergeExistingStat(Ljava/lang/String;Landroid/app/jank/AppJankStats;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p2, p1}, Landroid/app/jank/JankDataProcessor;->mergeNewStat(Ljava/lang/String;Ljava/lang/String;Landroid/app/jank/AppJankStats;)V

    :goto_0
    invoke-direct {p0}, Landroid/app/jank/JankDataProcessor;->incrementBatchCountAndMaybeLogStats()V

    return-void
.end method

.method public blacklist processJankData(Ljava/util/List;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/SurfaceControl$JankData;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mStateTracker:Landroid/app/jank/StateTracker;

    iget-object v1, p0, Landroid/app/jank/JankDataProcessor;->mPendingStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/app/jank/StateTracker;->retrieveAllStates(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$JankData;

    move v3, v0

    :goto_1
    iget-object v4, p0, Landroid/app/jank/JankDataProcessor;->mPendingStates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Landroid/app/jank/JankDataProcessor;->mPendingStates:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/jank/StateTracker$StateData;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v5

    iget-wide v7, v4, Landroid/app/jank/StateTracker$StateData;->mVsyncIdStart:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v5

    iget-wide v7, v4, Landroid/app/jank/StateTracker$StateData;->mVsyncIdEnd:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    invoke-direct {p0, v2, v4, p2, p3}, Landroid/app/jank/JankDataProcessor;->recordFrameCount(Landroid/view/SurfaceControl$JankData;Landroid/app/jank/StateTracker$StateData;Ljava/lang/String;I)V

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/app/jank/StateTracker$StateData;->mProcessed:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/app/jank/JankDataProcessor;->incrementBatchCountAndMaybeLogStats()V

    invoke-direct {p0}, Landroid/app/jank/JankDataProcessor;->jankDataProcessingComplete()V

    return-void
.end method
