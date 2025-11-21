.class public Lcom/android/internal/protolog/ProtoLogDataSource$Instance;
.super Landroid/tracing/perfetto/DataSourceInstance;
.source "ProtoLogDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/ProtoLogDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Instance"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;,
        Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;
    }
.end annotation


# instance fields
.field private final blacklist mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

.field private final blacklist mInstanceIndex:I

.field private final blacklist mOnFlush:Ljava/lang/Runnable;

.field private final blacklist mOnStart:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;

.field private final blacklist mOnStop:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfig(Lcom/android/internal/protolog/ProtoLogDataSource$Instance;)Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/tracing/perfetto/DataSource;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;Ljava/lang/Runnable;Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/DataSource<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;I",
            "Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;",
            "Ljava/lang/Runnable;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/tracing/perfetto/DataSourceInstance;-><init>(Landroid/tracing/perfetto/DataSource;I)V

    iput p2, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mInstanceIndex:I

    iput-object p4, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnStart:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;

    iput-object p5, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnFlush:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnStop:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;

    iput-object p3, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    return-void
.end method


# virtual methods
.method public blacklist onFlush(Landroid/tracing/perfetto/FlushCallbackArguments;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnFlush:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public blacklist onStart(Landroid/tracing/perfetto/StartCallbackArguments;)V
    .locals 1

    iget-object p1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnStart:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;

    iget v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mInstanceIndex:I

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    invoke-interface {p1, v0, p0}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;->run(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public blacklist onStop(Landroid/tracing/perfetto/StopCallbackArguments;)V
    .locals 1

    iget-object p1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnStop:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;

    iget v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mInstanceIndex:I

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    invoke-interface {p1, v0, p0}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;->run(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method
