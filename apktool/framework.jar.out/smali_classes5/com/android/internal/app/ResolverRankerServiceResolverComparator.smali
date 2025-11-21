.class Lcom/android/internal/app/ResolverRankerServiceResolverComparator;
.super Lcom/android/internal/app/AbstractResolverComparator;
.source "ResolverRankerServiceResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;,
        Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;
    }
.end annotation


# static fields
.field private static final blacklist CONNECTION_COST_TIMEOUT_MILLIS:I = 0xc8

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist RECENCY_MULTIPLIER:F = 2.0f

.field private static final blacklist RECENCY_TIME_PERIOD:J = 0x2932e00L

.field private static final blacklist TAG:Ljava/lang/String; = "RRSResolverComparator"

.field private static final blacklist USAGE_STATS_PERIOD:J = 0x240c8400L


# instance fields
.field private blacklist mAction:Ljava/lang/String;

.field private final blacklist mCollator:Ljava/text/Collator;

.field private blacklist mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

.field private blacklist mConnectSignal:Ljava/util/concurrent/CountDownLatch;

.field private blacklist mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mCurrentTime:J

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mRanker:Landroid/service/resolver/IResolverRankerService;

.field private blacklist mRankerServiceName:Landroid/content/ComponentName;

.field private final blacklist mReferrerPackage:Ljava/lang/String;

.field private blacklist mResolvedRankerName:Landroid/content/ComponentName;

.field private final blacklist mSinceTime:J

.field private final blacklist mStatsPerUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTargetsDictPerUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/LinkedHashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/service/resolver/ResolverTarget;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmComparatorModel(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRanker(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Landroid/service/resolver/IResolverRankerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbuildUpdatedModel(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;)Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Landroid/os/UserHandle;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/UserHandle;

    const/4 v1, 0x0

    aput-object p6, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p6

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Ljava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;",
            "Lcom/android/internal/app/ChooserActivityLogger;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p6}, Lcom/android/internal/app/AbstractResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCollator:Ljava/text/Collator;

    iput-object p3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mReferrerPackage:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCurrentTime:J

    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mSinceTime:J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStatsPerUser:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserHandle;

    iget-object p6, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStatsPerUser:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mUsmMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iget-wide v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mSinceTime:J

    iget-wide v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCurrentTime:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p6, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p6, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p6, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    invoke-virtual {p0, p4}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->setCallBack(Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;)V

    invoke-virtual {p0, p5}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->setChooserActivityLogger(Lcom/android/internal/app/ChooserActivityLogger;)V

    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    return-void
.end method

.method private blacklist addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V
    .locals 4

    const p0, 0x402379a7    # 2.5543f

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    move-result v0

    mul-float/2addr v0, p0

    const p0, 0x4035d639

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    move-result v1

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    const p0, 0x3e89ba5e    # 0.269f

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    move-result v1

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    const p0, 0x40871c43    # 4.2222f

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v1

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    const p0, 0x3fd41206    # 1.6568f

    sub-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    div-double/2addr v2, v0

    double-to-float p0, v2

    invoke-virtual {p1, p0}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    return-void
.end method

.method private blacklist buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;
    .locals 9

    new-instance v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStatsPerUser:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCollator:Ljava/text/Collator;

    iget-object v5, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    iget-object v6, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iget-object v8, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mPmMap:Ljava/util/Map;

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/text/Collator;Landroid/service/resolver/IResolverRankerService;Landroid/content/ComponentName;ZLjava/util/Map;)V

    return-object v0
.end method

.method private blacklist initRanker(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->resolveRankerService()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    new-instance v1, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;-><init>(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    sget-object p0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static blacklist isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private blacklist predictSelectProbabilities(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    iget-object v2, v2, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->resolverRankerResult:Landroid/service/resolver/IResolverRankerResult;

    invoke-interface {v1, p1, v2}, Landroid/service/resolver/IResolverRankerService;->predict(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "RRSResolverComparator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in Predict: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p1, "RRSResolverComparator"

    const-string v0, "Error in Wait for Service Connection."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->afterCompute()V

    return-void
.end method

.method private blacklist resolveRankerService()Landroid/content/Intent;
    .locals 10

    const-string v0, "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

    const-string v1, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    const-string v2, "RRSResolverComparator"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.resolver.ResolverRankerService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    if-eqz v6, :cond_0

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v8, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "ResolverRankerService "

    if-nez v8, :cond_2

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " does not require permission "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - this service will not be queried for ResolverRankerServiceResolverComparator. add android:permission=\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\" to the <service> tag for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " in the manifest."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " does not hold permission "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - this service will not be queried for ResolverRankerServiceResolverComparator."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_3
    iput-object v7, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v3

    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Could not look up service "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "; component name not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    invoke-virtual {p1, p3}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    invoke-virtual {p1, p4}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    invoke-virtual {p1, p5}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    return-void
.end method


# virtual methods
.method blacklist beforeCompute()V
    .locals 4

    invoke-super {p0}, Lcom/android/internal/app/AbstractResolverComparator;->beforeCompute()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->initRanker(Landroid/content/Context;)V

    return-void
.end method

.method public blacklist compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->getComparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->destroy()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->afterCompute()V

    return-void
.end method

.method public blacklist doCompute(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCurrentTime:J

    const-wide/32 v3, 0x2932e00

    sub-long/2addr v1, v3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    move v6, v4

    move v7, v6

    move v8, v7

    move v9, v8

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    new-instance v5, Landroid/service/resolver/ResolverTarget;

    invoke-direct {v5}, Landroid/service/resolver/ResolverTarget;-><init>()V

    iget-object v10, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/LinkedHashMap;

    iget-object v12, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStatsPerUser:Ljava/util/Map;

    invoke-virtual {v4, v11}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    if-eqz v10, :cond_0

    if-eqz v12, :cond_0

    iget-object v13, v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v10, v13, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/UsageStats;

    if-eqz v10, :cond_0

    iget-object v12, v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mReferrerPackage:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static {v4}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v10}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v12

    sub-long/2addr v12, v1

    const-wide/16 v14, 0x0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    long-to-float v4, v12

    invoke-virtual {v5, v4}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    cmpl-float v12, v4, v6

    if-lez v12, :cond_1

    move v6, v4

    :cond_1
    invoke-virtual {v10}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v12

    long-to-float v4, v12

    invoke-virtual {v5, v4}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    cmpl-float v12, v4, v7

    if-lez v12, :cond_2

    move v7, v4

    :cond_2
    iget v4, v10, Landroid/app/usage/UsageStats;->mLaunchCount:I

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    cmpl-float v12, v4, v8

    if-lez v12, :cond_3

    move v8, v4

    :cond_3
    iget-object v4, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iget-object v12, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iget-object v12, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    iget-object v12, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContentType:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    iget-object v12, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    if-eqz v12, :cond_5

    iget-object v12, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    array-length v12, v12

    move v13, v11

    :goto_1
    if-ge v13, v12, :cond_5

    iget-object v14, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iget-object v15, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/ArrayMap;

    iget-object v15, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    aget-object v15, v15, v13

    move/from16 p1, v11

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v14, v15, v11}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v4, v11

    add-int/lit8 v13, v13, 0x1

    move/from16 v11, p1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :cond_5
    invoke-virtual {v5, v4}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    cmpl-float v5, v4, v9

    if-lez v5, :cond_0

    move v9, v4

    goto/16 :goto_0

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    iget-object v3, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_7
    iget-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v1}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    move-result v2

    div-float/2addr v2, v6

    mul-float/2addr v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    move-result v3

    div-float/2addr v3, v8

    invoke-virtual {v1}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    move-result v4

    div-float/2addr v4, v7

    invoke-virtual {v1}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v5

    div-float/2addr v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->predictSelectProbabilities(Ljava/util/List;)V

    invoke-direct {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    return-void
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/TargetInfo;)F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->getScore(Lcom/android/internal/app/chooser/TargetInfo;)F

    move-result p0

    return p0
.end method

.method public blacklist handleResultMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "RRSResolverComparator"

    if-nez v0, :cond_1

    const-string p0, "Receiving null prediction results."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v3}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v4}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v4

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v2, v3}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string p0, "Sizes of sent and received ResolverTargets diff."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->notifyOnTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
