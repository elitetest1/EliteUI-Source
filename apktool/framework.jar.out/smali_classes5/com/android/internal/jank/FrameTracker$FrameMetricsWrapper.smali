.class public Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;
.super Ljava/lang/Object;
.source "FrameTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameMetricsWrapper"
.end annotation


# instance fields
.field private final blacklist mFrameMetrics:Landroid/view/FrameMetrics;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/FrameMetrics;

    invoke-direct {v0}, Landroid/view/FrameMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->mFrameMetrics:Landroid/view/FrameMetrics;

    return-void
.end method


# virtual methods
.method public blacklist getMetric(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->mFrameMetrics:Landroid/view/FrameMetrics;

    invoke-virtual {p0, p1}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist getTiming()[J
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->mFrameMetrics:Landroid/view/FrameMetrics;

    iget-object p0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    return-object p0
.end method
