.class public Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;
.super Ljava/lang/Object;
.source "AndroidComputedTextLayout.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;


# instance fields
.field blacklist mHeight:F

.field blacklist mStaticLayout:Landroid/text/StaticLayout;

.field blacklist mWidth:F


# direct methods
.method public constructor blacklist <init>(Landroid/text/StaticLayout;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->mStaticLayout:Landroid/text/StaticLayout;

    iput p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->mWidth:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->mHeight:F

    return-void
.end method


# virtual methods
.method public blacklist get()Landroid/text/StaticLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->mStaticLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method public blacklist getHeight()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->mHeight:F

    return p0
.end method

.method public blacklist getWidth()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->mWidth:F

    return p0
.end method

.method public blacklist set(Landroid/text/StaticLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->mStaticLayout:Landroid/text/StaticLayout;

    return-void
.end method
