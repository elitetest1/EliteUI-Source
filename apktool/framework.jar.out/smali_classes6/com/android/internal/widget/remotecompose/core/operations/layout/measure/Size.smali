.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field blacklist mHeight:F

.field blacklist mWidth:F


# direct methods
.method public constructor blacklist <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->mWidth:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->mHeight:F

    return-void
.end method


# virtual methods
.method public blacklist getHeight()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->mHeight:F

    return p0
.end method

.method public blacklist getWidth()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->mWidth:F

    return p0
.end method

.method public blacklist setHeight(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->mHeight:F

    return-void
.end method

.method public blacklist setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->mWidth:F

    return-void
.end method
