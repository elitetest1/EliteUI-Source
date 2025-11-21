.class Landroid/graphics/drawable/RippleBackground;
.super Landroid/graphics/drawable/RippleComponent;
.source "RippleBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleBackground$BackgroundProperty;
    }
.end annotation


# static fields
.field private static final greylist-max-o LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final greylist-max-o OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

.field private static final greylist-max-o OPACITY_DURATION:I = 0x50


# instance fields
.field private greylist-max-o mAnimator:Landroid/animation/ObjectAnimator;

.field private greylist-max-o mFocused:Z

.field private greylist-max-o mHovered:Z

.field private greylist-max-o mIsBounded:Z

.field private greylist-max-o mOpacity:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOpacity(Landroid/graphics/drawable/RippleBackground;)F
    .locals 0

    iget p0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOpacity(Landroid/graphics/drawable/RippleBackground;F)V
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/graphics/drawable/RippleBackground$1;

    const-string/jumbo v1, "opacity"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleBackground$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleComponent;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    iput p1, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleBackground;->mFocused:Z

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleBackground;->mHovered:Z

    iput-boolean p3, p0, Landroid/graphics/drawable/RippleBackground;->mIsBounded:Z

    return-void
.end method

.method private greylist-max-o onStateChanged()V
    .locals 4

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mFocused:Z

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mHovered:Z

    if-eqz v0, :cond_1

    const v0, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    :cond_2
    sget-object v1, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public greylist-max-o draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v1, v0

    iget v2, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget p0, p0, Landroid/graphics/drawable/RippleBackground;->mTargetRadius:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public greylist-max-o isVisible()Z
    .locals 1

    iget p0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o jumpToFinal()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method public greylist-max-o setState(ZZZ)V
    .locals 4

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mFocused:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :cond_1
    :goto_0
    iget-boolean v3, p0, Landroid/graphics/drawable/RippleBackground;->mHovered:Z

    if-nez v3, :cond_3

    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    move p2, v2

    :cond_3
    :goto_1
    if-ne v3, p2, :cond_5

    if-eq v0, p1, :cond_4

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    :goto_2
    iput-boolean p2, p0, Landroid/graphics/drawable/RippleBackground;->mHovered:Z

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleBackground;->mFocused:Z

    invoke-direct {p0}, Landroid/graphics/drawable/RippleBackground;->onStateChanged()V

    return-void
.end method
