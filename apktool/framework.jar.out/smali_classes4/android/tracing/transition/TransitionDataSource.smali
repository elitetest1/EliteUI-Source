.class public Landroid/tracing/transition/TransitionDataSource;
.super Landroid/tracing/perfetto/DataSource;
.source "TransitionDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/tracing/perfetto/DataSource<",
        "Landroid/tracing/perfetto/DataSourceInstance;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static blacklist DATA_SOURCE_NAME:Ljava/lang/String; = "com.android.wm.shell.transition"


# instance fields
.field private final blacklist mOnFlushStaticCallback:Ljava/lang/Runnable;

.field private final blacklist mOnStartStaticCallback:Ljava/lang/Runnable;

.field private final blacklist mOnStopStaticCallback:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOnFlushStaticCallback(Landroid/tracing/transition/TransitionDataSource;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/tracing/transition/TransitionDataSource;->mOnFlushStaticCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnStartStaticCallback(Landroid/tracing/transition/TransitionDataSource;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/tracing/transition/TransitionDataSource;->mOnStartStaticCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnStopStaticCallback(Landroid/tracing/transition/TransitionDataSource;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/tracing/transition/TransitionDataSource;->mOnStopStaticCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Landroid/tracing/transition/TransitionDataSource;->DATA_SOURCE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/tracing/perfetto/DataSource;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/tracing/transition/TransitionDataSource;->mOnStartStaticCallback:Ljava/lang/Runnable;

    iput-object p2, p0, Landroid/tracing/transition/TransitionDataSource;->mOnFlushStaticCallback:Ljava/lang/Runnable;

    iput-object p3, p0, Landroid/tracing/transition/TransitionDataSource;->mOnStopStaticCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public blacklist createInstance(Landroid/util/proto/ProtoInputStream;I)Landroid/tracing/perfetto/DataSourceInstance;
    .locals 0

    new-instance p1, Landroid/tracing/transition/TransitionDataSource$1;

    invoke-direct {p1, p0, p0, p2}, Landroid/tracing/transition/TransitionDataSource$1;-><init>(Landroid/tracing/transition/TransitionDataSource;Landroid/tracing/perfetto/DataSource;I)V

    return-object p1
.end method
