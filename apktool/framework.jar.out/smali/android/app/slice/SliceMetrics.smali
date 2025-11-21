.class public Landroid/app/slice/SliceMetrics;
.super Ljava/lang/Object;
.source "SliceMetrics.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SliceMetrics"


# instance fields
.field private greylist-max-o mLogMaker:Landroid/metrics/LogMaker;

.field private greylist-max-o mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p1, p0, Landroid/app/slice/SliceMetrics;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p1, Landroid/metrics/LogMaker;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    iput-object p1, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    const/16 v0, 0x57a

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object p0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    const/16 p1, 0x57b

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    return-void
.end method


# virtual methods
.method public whitelist logHidden()V
    .locals 3

    iget-object v0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    const/16 v2, 0x579

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget-object v1, p0, Landroid/app/slice/SliceMetrics;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object p0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {v1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist logTouch(ILandroid/net/Uri;)V
    .locals 3

    iget-object p1, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    const/16 v1, 0x579

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x57c

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x57d

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object p2, p0, Landroid/app/slice/SliceMetrics;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object p0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {p2, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist logVisible()V
    .locals 3

    iget-object v0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    const/16 v2, 0x579

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget-object v1, p0, Landroid/app/slice/SliceMetrics;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object p0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {v1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
