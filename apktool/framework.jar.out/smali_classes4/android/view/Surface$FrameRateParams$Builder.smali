.class public final Landroid/view/Surface$FrameRateParams$Builder;
.super Ljava/lang/Object;
.source "Surface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface$FrameRateParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mChangeFrameRateStrategy:I

.field private blacklist mDesiredMaxRate:F

.field private blacklist mDesiredMinRate:F

.field private blacklist mFixedSourceRate:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/view/Surface$FrameRateParams;
    .locals 2

    new-instance v0, Landroid/view/Surface$FrameRateParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/Surface$FrameRateParams;-><init>(Landroid/view/Surface-IA;)V

    iget v1, p0, Landroid/view/Surface$FrameRateParams$Builder;->mDesiredMinRate:F

    iput v1, v0, Landroid/view/Surface$FrameRateParams;->mDesiredMinRate:F

    iget v1, p0, Landroid/view/Surface$FrameRateParams$Builder;->mDesiredMaxRate:F

    iput v1, v0, Landroid/view/Surface$FrameRateParams;->mDesiredMaxRate:F

    iget v1, p0, Landroid/view/Surface$FrameRateParams$Builder;->mFixedSourceRate:F

    iput v1, v0, Landroid/view/Surface$FrameRateParams;->mFixedSourceRate:F

    iget p0, p0, Landroid/view/Surface$FrameRateParams$Builder;->mChangeFrameRateStrategy:I

    iput p0, v0, Landroid/view/Surface$FrameRateParams;->mChangeFrameRateStrategy:I

    return-object v0
.end method

.method public blacklist setChangeFrameRateStrategy(I)Landroid/view/Surface$FrameRateParams$Builder;
    .locals 0

    iput p1, p0, Landroid/view/Surface$FrameRateParams$Builder;->mChangeFrameRateStrategy:I

    return-object p0
.end method

.method public blacklist setDesiredRateRange(FF)Landroid/view/Surface$FrameRateParams$Builder;
    .locals 1

    cmpg-float v0, p2, p1

    if-gez v0, :cond_0

    const-string p1, "Surface"

    const-string p2, "Failed to set desired frame rate range. desiredMaxRate should be greater than or equal to desiredMinRate"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    iput p1, p0, Landroid/view/Surface$FrameRateParams$Builder;->mDesiredMinRate:F

    iput p2, p0, Landroid/view/Surface$FrameRateParams$Builder;->mDesiredMaxRate:F

    return-object p0
.end method

.method public blacklist setFixedSourceRate(F)Landroid/view/Surface$FrameRateParams$Builder;
    .locals 0

    iput p1, p0, Landroid/view/Surface$FrameRateParams$Builder;->mFixedSourceRate:F

    return-object p0
.end method
