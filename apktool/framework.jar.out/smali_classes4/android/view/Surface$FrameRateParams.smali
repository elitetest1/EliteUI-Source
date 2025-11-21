.class public Landroid/view/Surface$FrameRateParams;
.super Ljava/lang/Object;
.source "Surface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameRateParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Surface$FrameRateParams$Builder;
    }
.end annotation


# static fields
.field public static final blacklist IGNORE:Landroid/view/Surface$FrameRateParams;


# instance fields
.field blacklist mChangeFrameRateStrategy:I

.field blacklist mDesiredMaxRate:F

.field blacklist mDesiredMinRate:F

.field blacklist mFixedSourceRate:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/view/Surface$FrameRateParams$Builder;

    invoke-direct {v0}, Landroid/view/Surface$FrameRateParams$Builder;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface$FrameRateParams$Builder;->setDesiredRateRange(FF)Landroid/view/Surface$FrameRateParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface$FrameRateParams$Builder;->build()Landroid/view/Surface$FrameRateParams;

    move-result-object v0

    sput-object v0, Landroid/view/Surface$FrameRateParams;->IGNORE:Landroid/view/Surface$FrameRateParams;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Surface-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/Surface$FrameRateParams;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getChangeFrameRateStrategy()I
    .locals 0

    iget p0, p0, Landroid/view/Surface$FrameRateParams;->mChangeFrameRateStrategy:I

    return p0
.end method

.method public blacklist getDesiredMaxRate()F
    .locals 0

    iget p0, p0, Landroid/view/Surface$FrameRateParams;->mDesiredMaxRate:F

    return p0
.end method

.method public blacklist getDesiredMinRate()F
    .locals 0

    iget p0, p0, Landroid/view/Surface$FrameRateParams;->mDesiredMinRate:F

    return p0
.end method

.method public blacklist getFixedSourceRate()F
    .locals 0

    iget p0, p0, Landroid/view/Surface$FrameRateParams;->mFixedSourceRate:F

    return p0
.end method
