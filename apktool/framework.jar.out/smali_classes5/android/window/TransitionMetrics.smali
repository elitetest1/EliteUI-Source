.class public Landroid/window/TransitionMetrics;
.super Ljava/lang/Object;
.source "TransitionMetrics.java"


# static fields
.field private static final blacklist sTransitionMetrics:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/window/TransitionMetrics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mTransitionMetricsReporter:Landroid/window/ITransitionMetricsReporter;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/TransitionMetrics$1;

    invoke-direct {v0}, Landroid/window/TransitionMetrics$1;-><init>()V

    sput-object v0, Landroid/window/TransitionMetrics;->sTransitionMetrics:Landroid/util/Singleton;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/window/ITransitionMetricsReporter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/TransitionMetrics;->mTransitionMetricsReporter:Landroid/window/ITransitionMetricsReporter;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/ITransitionMetricsReporter;Landroid/window/TransitionMetrics-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/TransitionMetrics;-><init>(Landroid/window/ITransitionMetricsReporter;)V

    return-void
.end method

.method public static blacklist getInstance()Landroid/window/TransitionMetrics;
    .locals 1

    sget-object v0, Landroid/window/TransitionMetrics;->sTransitionMetrics:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionMetrics;

    return-object v0
.end method


# virtual methods
.method public blacklist reportAnimationStart(Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroid/window/TransitionMetrics;->mTransitionMetricsReporter:Landroid/window/ITransitionMetricsReporter;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/window/ITransitionMetricsReporter;->reportAnimationStart(Landroid/os/IBinder;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method
