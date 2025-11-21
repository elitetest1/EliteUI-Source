.class public Lcom/android/internal/os/BinderCallsStats$Injector;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getHandler()Landroid/os/Handler;
    .locals 1

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public blacklist getLatencyObserver(I)Lcom/android/internal/os/BinderLatencyObserver;
    .locals 1

    new-instance p0, Lcom/android/internal/os/BinderLatencyObserver;

    new-instance v0, Lcom/android/internal/os/BinderLatencyObserver$Injector;

    invoke-direct {v0}, Lcom/android/internal/os/BinderLatencyObserver$Injector;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BinderLatencyObserver;-><init>(Lcom/android/internal/os/BinderLatencyObserver$Injector;I)V

    return-object p0
.end method

.method public blacklist getRandomGenerator()Ljava/util/Random;
    .locals 0

    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    return-object p0
.end method
