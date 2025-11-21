.class public Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;
.super Ljava/lang/Object;
.source "ScrollableComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollAxisRange"
.end annotation


# instance fields
.field private blacklist mCanScrollBackwards:Z

.field private blacklist mCanScrollForward:Z

.field private blacklist mMaxValue:F

.field private blacklist mValue:F


# direct methods
.method public constructor blacklist <init>(FFZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mValue:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mMaxValue:F

    iput-boolean p3, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mCanScrollForward:Z

    iput-boolean p4, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mCanScrollBackwards:Z

    return-void
.end method


# virtual methods
.method public blacklist canScrollBackwards()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mCanScrollBackwards:Z

    return p0
.end method

.method public blacklist canScrollForward()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mCanScrollForward:Z

    return p0
.end method

.method public blacklist getMaxValue()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mMaxValue:F

    return p0
.end method

.method public blacklist getmValue()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;->mValue:F

    return p0
.end method
