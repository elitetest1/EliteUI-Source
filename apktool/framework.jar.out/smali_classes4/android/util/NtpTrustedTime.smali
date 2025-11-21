.class public abstract Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;,
        Landroid/util/NtpTrustedTime$NtpConfig;,
        Landroid/util/NtpTrustedTime$TimeResult;
    }
.end annotation


# static fields
.field private static final blacklist FAIL_VISITED:I = 0x1

.field private static final greylist-max-o LOGD:Z = true

.field public static final blacklist NTP_SETTING_SERVER_NAME_DELIMITER:Ljava/lang/String; = "|"

.field private static final blacklist NTP_SETTING_SERVER_NAME_DELIMITER_REGEXP:Ljava/lang/String; = "\\|"

.field private static final blacklist SUC_VISITED:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static final blacklist URI_SCHEME_NTP:Ljava/lang/String; = "ntp"

.field private static greylist-max-o sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private final blacklist mConfigLock:Ljava/lang/Object;

.field private volatile blacklist mLastSuccessfulNtpServerUri:Ljava/net/URI;

.field private blacklist mNtpConfigForTests:Landroid/util/NtpTrustedTime$NtpConfig;

.field private volatile blacklist mOtherLastSuccessfulNtpServerUri:Ljava/net/URI;

.field private final blacklist mRefreshLock:Ljava/lang/Object;

.field private volatile blacklist mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

.field private final blacklist visitedUri:Landroid/util/SparseIntArray;


# direct methods
.method public static synthetic blacklist $r8$lambda$17QIPXcAoMHgcCbhBpO5cTWPLdA(Landroid/util/NtpTrustedTime;Ljava/lang/Integer;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTime;->lambda$forceRefreshCN$1(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$3nPCYzNIEXLAEIZWgdA0alln6Rw(Landroid/util/NtpTrustedTime;ILjava/util/List;Landroid/net/Network;Landroid/util/NtpTrustedTime$NtpConfig;[Landroid/util/NtpTrustedTime$TimeResult;[Ljava/net/URI;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/util/NtpTrustedTime;->lambda$forceRefreshCN$0(ILjava/util/List;Landroid/net/Network;Landroid/util/NtpTrustedTime$NtpConfig;[Landroid/util/NtpTrustedTime$TimeResult;[Ljava/net/URI;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateNtpServerUri(Ljava/net/URI;)Ljava/net/URI;
    .locals 0

    invoke-static {p0}, Landroid/util/NtpTrustedTime;->validateNtpServerUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method protected constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mRefreshLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mConfigLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->visitedUri:Landroid/util/SparseIntArray;

    return-void
.end method

.method private blacklist forceRefreshCN(Landroid/net/Network;Landroid/util/NtpTrustedTime$NtpConfig;Ljava/util/List;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "Landroid/util/NtpTrustedTime$NtpConfig;",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v9, "NtpTrustedTime"

    iget-object v0, v1, Landroid/util/NtpTrustedTime;->visitedUri:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/util/NtpTrustedTime;->mLastSuccessfulNtpServerUri:Ljava/net/URI;

    iput-object v0, v1, Landroid/util/NtpTrustedTime;->mOtherLastSuccessfulNtpServerUri:Ljava/net/URI;

    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v10, 0x2

    invoke-direct {v8, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v6, v10, [Landroid/util/NtpTrustedTime$TimeResult;

    const/4 v11, 0x0

    aput-object v0, v6, v11

    const/4 v12, 0x1

    aput-object v0, v6, v12

    new-array v7, v10, [Ljava/net/URI;

    aput-object v0, v7, v11

    aput-object v0, v7, v12

    move v2, v11

    :goto_0
    if-ge v2, v10, :cond_0

    new-instance v13, Ljava/lang/Thread;

    new-instance v0, Landroid/util/NtpTrustedTime$$ExternalSyntheticLambda0;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/util/NtpTrustedTime$$ExternalSyntheticLambda0;-><init>(Landroid/util/NtpTrustedTime;ILjava/util/List;Landroid/net/Network;Landroid/util/NtpTrustedTime$NtpConfig;[Landroid/util/NtpTrustedTime$TimeResult;[Ljava/net/URI;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v13, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "[CN]forceRefreshLocked: wait thread result fail"

    invoke-static {v9, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    aget-object v0, v6, v11

    if-eqz v0, :cond_3

    aget-object v2, v6, v12

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v2

    aget-object v0, v6, v12

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v4

    aget-object v0, v6, v11

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v13

    aget-object v0, v6, v12

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v15

    sub-long/2addr v2, v13

    sub-long/2addr v4, v15

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v13, 0xea60

    cmp-long v0, v2, v13

    if-lez v0, :cond_2

    const-string v0, "[CN]forceRefreshLocked: need more ntp result to compare"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v11, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Landroid/util/NtpTrustedTime$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/util/NtpTrustedTime$$ExternalSyntheticLambda1;-><init>(Landroid/util/NtpTrustedTime;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/util/NtpTrustedTime$$ExternalSyntheticLambda2;

    move-object/from16 v3, p3

    invoke-direct {v2, v3}, Landroid/util/NtpTrustedTime$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    iget-object v3, v1, Landroid/util/NtpTrustedTime;->visitedUri:Landroid/util/SparseIntArray;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroid/util/NtpTrustedTime$$ExternalSyntheticLambda3;

    invoke-direct {v8, v3}, Landroid/util/NtpTrustedTime$$ExternalSyntheticLambda3;-><init>(Landroid/util/SparseIntArray;)V

    new-instance v3, Landroid/util/NtpTrustedTime$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Landroid/util/NtpTrustedTime$$ExternalSyntheticLambda4;-><init>()V

    new-instance v10, Landroid/util/NtpTrustedTime$$ExternalSyntheticLambda5;

    invoke-direct {v10}, Landroid/util/NtpTrustedTime$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v2, v8, v3, v10}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/Map$Entry;->comparingByValue()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Landroid/util/NtpTrustedTime$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Landroid/util/NtpTrustedTime$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v2, v11

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URI;

    invoke-virtual/range {p2 .. p2}, Landroid/util/NtpTrustedTime$NtpConfig;->getTimeout()Ljava/time/Duration;

    move-result-object v8

    move-object/from16 v10, p1

    invoke-virtual {v1, v10, v3, v8}, Landroid/util/NtpTrustedTime;->queryNtpServer(Landroid/net/Network;Ljava/net/URI;Ljava/time/Duration;)Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[CN]forceRefreshLocked: get ntp result="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v15

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v2

    sub-long/2addr v15, v2

    sub-long/2addr v4, v15

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v0, v2, v13

    if-gtz v0, :cond_2

    const-string v0, "[CN]forceRefreshLocked: return the second success url"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v0, v7, v12

    iput-object v0, v1, Landroid/util/NtpTrustedTime;->mLastSuccessfulNtpServerUri:Ljava/net/URI;

    aget-object v0, v7, v11

    iput-object v0, v1, Landroid/util/NtpTrustedTime;->mOtherLastSuccessfulNtpServerUri:Ljava/net/URI;

    aget-object v0, v6, v12

    iput-object v0, v1, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    return v12

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-string v0, "[CN]forceRefreshLocked: return the first success url"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v0, v7, v11

    iput-object v0, v1, Landroid/util/NtpTrustedTime;->mLastSuccessfulNtpServerUri:Ljava/net/URI;

    aget-object v0, v7, v12

    iput-object v0, v1, Landroid/util/NtpTrustedTime;->mOtherLastSuccessfulNtpServerUri:Ljava/net/URI;

    aget-object v0, v6, v11

    iput-object v0, v1, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    return v12

    :cond_3
    const-string v0, "[CN]forceRefreshLocked: back to original logic"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v0, v6, v11

    if-eqz v0, :cond_4

    aget-object v0, v7, v11

    iput-object v0, v1, Landroid/util/NtpTrustedTime;->mLastSuccessfulNtpServerUri:Ljava/net/URI;

    aget-object v0, v6, v11

    iput-object v0, v1, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    return v12

    :cond_4
    aget-object v0, v6, v12

    if-eqz v0, :cond_5

    aget-object v0, v7, v12

    iput-object v0, v1, Landroid/util/NtpTrustedTime;->mLastSuccessfulNtpServerUri:Ljava/net/URI;

    aget-object v0, v6, v12

    iput-object v0, v1, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    return v12

    :cond_5
    return v11
.end method

.method private blacklist forceRefreshLocked(Landroid/net/Network;)Z
    .locals 9

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/util/NtpTrustedTime;->isNetworkConnected(Landroid/net/Network;)Z

    move-result v0

    const-string v1, "NtpTrustedTime"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "forceRefreshLocked: network="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not connected"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string/jumbo v0, "persist.ril.ntptrustedtime"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "forceRefresh: persist.ril.ntptrustedtime ("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getNtpConfig()Landroid/util/NtpTrustedTime$NtpConfig;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "forceRefreshLocked: invalid server config"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "forceRefreshLocked: NTP request network="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ntpConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$NtpConfig;->getServerUris()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v3, "ro.csc.countryiso_code"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const-string v7, "CN"

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URI;

    iget-object v8, p0, Landroid/util/NtpTrustedTime;->mLastSuccessfulNtpServerUri:Ljava/net/URI;

    invoke-virtual {v5, v8}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Landroid/util/NtpTrustedTime;->mOtherLastSuccessfulNtpServerUri:Ljava/net/URI;

    invoke-virtual {v5, v7}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, v0, v4}, Landroid/util/NtpTrustedTime;->forceRefreshCN(Landroid/net/Network;Landroid/util/NtpTrustedTime$NtpConfig;Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URI;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$NtpConfig;->getTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Landroid/util/NtpTrustedTime;->queryNtpServer(Landroid/net/Network;Ljava/net/URI;Ljava/time/Duration;)Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v4

    if-eqz v4, :cond_7

    iput-object v3, p0, Landroid/util/NtpTrustedTime;->mLastSuccessfulNtpServerUri:Ljava/net/URI;

    iput-object v4, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    return v6

    :cond_8
    return v2
.end method

.method public static declared-synchronized greylist getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 3

    const-class v0, Landroid/util/NtpTrustedTime;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;-><init>(Landroid/content/Context;Landroid/util/NtpTrustedTime-IA;)V

    sput-object v1, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    :cond_0
    sget-object p0, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist getNtpConfig()Landroid/util/NtpTrustedTime$NtpConfig;
    .locals 2

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mNtpConfigForTests:Landroid/util/NtpTrustedTime$NtpConfig;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getNtpConfigInternal()Landroid/util/NtpTrustedTime$NtpConfig;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic blacklist lambda$forceRefreshCN$0(ILjava/util/List;Landroid/net/Network;Landroid/util/NtpTrustedTime$NtpConfig;[Landroid/util/NtpTrustedTime$TimeResult;[Ljava/net/URI;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    move v0, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    invoke-virtual {p4}, Landroid/util/NtpTrustedTime$NtpConfig;->getTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {p0, p3, v1, v2}, Landroid/util/NtpTrustedTime;->queryNtpServer(Landroid/net/Network;Ljava/net/URI;Ljava/time/Duration;)Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "[CN]forceRefreshLocked: ["

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "] get ntp result="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "NtpTrustedTime"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/util/NtpTrustedTime;->visitedUri:Landroid/util/SparseIntArray;

    const/4 p3, 0x2

    invoke-virtual {p0, v0, p3}, Landroid/util/SparseIntArray;->put(II)V

    aput-object v1, p5, p1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/URI;

    aput-object p0, p6, p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/util/NtpTrustedTime;->visitedUri:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic blacklist lambda$forceRefreshCN$1(Ljava/lang/Integer;)Z
    .locals 0

    iget-object p0, p0, Landroid/util/NtpTrustedTime;->visitedUri:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$forceRefreshCN$2(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    return-object p0
.end method

.method public static blacklist parseNtpServerSetting(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    const-string/jumbo v6, "ntp:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "NtpTrustedTime"

    if-eqz v6, :cond_2

    :try_start_0
    invoke-static {v5}, Landroid/util/NtpTrustedTime;->parseNtpUriStrict(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rejected NTP uri setting="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_2
    :try_start_1
    new-instance v6, Ljava/net/URI;

    const-string/jumbo v8, "ntp"

    invoke-direct {v6, v8, v5, v1, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/util/NtpTrustedTime;->validateNtpServerUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rejected NTP legacy setting="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_3
    return-object v2
.end method

.method public static blacklist parseNtpUriStrict(Ljava/lang/String;)Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/NtpTrustedTime;->validateNtpServerUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist validateNtpServerUri(Ljava/net/URI;)Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ntp"

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/net/URISyntaxException;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Missing host"

    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/net/URISyntaxException;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unrecognized scheme"

    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/net/URISyntaxException;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Relative URI not supported"

    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist clearCachedTimeResult()V
    .locals 2

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mRefreshLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public greylist-max-r currentTimeMillis()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-eqz p0, :cond_0

    const-string v0, "NtpTrustedTime"

    const-string v1, "currentTimeMillis() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing authoritative time source"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string/jumbo v0, "mNtpConfigForTests="

    const-string v1, "getNtpConfig()="

    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mConfigLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getNtpConfig()Landroid/util/NtpTrustedTime$NtpConfig;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mNtpConfigForTests:Landroid/util/NtpTrustedTime$NtpConfig;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLastSuccessfulNtpServerUri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mLastSuccessfulNtpServerUri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mOtherLastSuccessfulNtpServerUri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mOtherLastSuccessfulNtpServerUri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mTimeResult="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mTimeResult.getAgeMillis()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public greylist-max-r forceRefresh()Z
    .locals 2

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mRefreshLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getDefaultNetwork()Landroid/net/Network;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "NtpTrustedTime"

    const-string v1, "forceRefresh: no network available"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    invoke-direct {p0, v1}, Landroid/util/NtpTrustedTime;->forceRefreshLocked(Landroid/net/Network;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public greylist-max-o forceRefresh(Landroid/net/Network;)Z
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mRefreshLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTime;->forceRefreshLocked(Landroid/net/Network;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public greylist-max-o getCacheAge()J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public greylist-max-r getCachedNtpTime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "NtpTrustedTime"

    const-string v1, "getCachedNtpTime() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-r getCachedNtpTimeReference()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;
    .locals 0

    iget-object p0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    return-object p0
.end method

.method public abstract blacklist getDefaultNetwork()Landroid/net/Network;
.end method

.method public abstract blacklist getNtpConfigInternal()Landroid/util/NtpTrustedTime$NtpConfig;
.end method

.method public greylist-max-r hasCache()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract blacklist isNetworkConnected(Landroid/net/Network;)Z
.end method

.method public abstract blacklist queryNtpServer(Landroid/net/Network;Ljava/net/URI;Ljava/time/Duration;)Landroid/util/NtpTrustedTime$TimeResult;
.end method

.method public blacklist setCachedTimeResult(Landroid/util/NtpTrustedTime$TimeResult;)V
    .locals 1

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mRefreshLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist setServerConfigForTests(Landroid/util/NtpTrustedTime$NtpConfig;)V
    .locals 1

    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mNtpConfigForTests:Landroid/util/NtpTrustedTime$NtpConfig;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
