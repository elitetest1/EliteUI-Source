.class public Landroid/transition/Crossfade;
.super Landroid/transition/Transition;
.source "Crossfade.java"


# static fields
.field public static final greylist-max-o FADE_BEHAVIOR_CROSSFADE:I = 0x0

.field public static final greylist-max-o FADE_BEHAVIOR_OUT_IN:I = 0x2

.field public static final greylist-max-o FADE_BEHAVIOR_REVEAL:I = 0x1

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "Crossfade"

.field private static final greylist-max-o PROPNAME_BITMAP:Ljava/lang/String; = "android:crossfade:bitmap"

.field private static final greylist-max-o PROPNAME_BOUNDS:Ljava/lang/String; = "android:crossfade:bounds"

.field private static final greylist-max-o PROPNAME_DRAWABLE:Ljava/lang/String; = "android:crossfade:drawable"

.field public static final greylist-max-o RESIZE_BEHAVIOR_NONE:I = 0x0

.field public static final greylist-max-o RESIZE_BEHAVIOR_SCALE:I = 0x1

.field private static greylist-max-o sRectEvaluator:Landroid/animation/RectEvaluator;


# instance fields
.field private greylist-max-o mFadeBehavior:I

.field private greylist-max-o mResizeBehavior:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFadeBehavior(Landroid/transition/Crossfade;)I
    .locals 0

    iget p0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    iput v0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .locals 5

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    iget-object p0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:crossfade:bounds"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    instance-of v2, v0, Landroid/view/TextureView;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:crossfade:bitmap"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string p1, "android:crossfade:drawable"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    const/4 p1, 0x0

    if-eqz p2, :cond_9

    if-nez p3, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    iget-object v6, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object p2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object p3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:crossfade:bounds"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/graphics/Rect;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const-string v3, "android:crossfade:bitmap"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const-string v7, "android:crossfade:drawable"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v8, p3

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_9

    if-eqz v8, :cond_9

    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result p3

    if-nez p3, :cond_9

    if-eqz v5, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p3

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p3

    :goto_1
    iget v3, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    if-ne v3, v2, :cond_3

    invoke-virtual {p3, v8}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {p3, p2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    iget p3, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const-string v3, "alpha"

    const/4 v4, 0x2

    if-ne p3, v4, :cond_4

    const/16 p3, 0xff

    filled-new-array {p3, v1, v1}, [I

    move-result-object p3

    invoke-static {p2, v3, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p3

    goto :goto_2

    :cond_4
    filled-new-array {v1}, [I

    move-result-object p3

    invoke-static {p2, v3, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p3

    :goto_2
    new-instance v3, Landroid/transition/Crossfade$1;

    invoke-direct {v3, p0, v6, p2}, Landroid/transition/Crossfade$1;-><init>(Landroid/transition/Crossfade;Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {p3, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v3, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    if-ne v3, v4, :cond_5

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v6, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_3

    :cond_5
    if-nez v3, :cond_6

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v6, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :cond_6
    :goto_3
    new-instance v3, Landroid/transition/Crossfade$2;

    move-object v4, p0

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Landroid/transition/Crossfade$2;-><init>(Landroid/transition/Crossfade;ZLandroid/view/View;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {p3, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p2, v2, [Landroid/animation/Animator;

    aput-object p3, p2, v1

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p1, :cond_7

    new-array p2, v2, [Landroid/animation/Animator;

    aput-object p1, p2, v1

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_7
    iget p1, v4, Landroid/transition/Crossfade;->mResizeBehavior:I

    if-ne p1, v2, :cond_8

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    filled-new-array {v9, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "bounds"

    invoke-static {v7, p3, p1, p2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array p2, v2, [Landroid/animation/Animator;

    aput-object p1, p2, v1

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget p1, v4, Landroid/transition/Crossfade;->mResizeBehavior:I

    if-ne p1, v2, :cond_8

    sget-object p1, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    filled-new-array {v9, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v8, p3, p1, p2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array p2, v2, [Landroid/animation/Animator;

    aput-object p1, p2, v1

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_8
    return-object p0

    :cond_9
    :goto_4
    return-object p1

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public greylist-max-o getFadeBehavior()I
    .locals 0

    iget p0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    return p0
.end method

.method public greylist-max-o getResizeBehavior()I
    .locals 0

    iget p0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    return p0
.end method

.method public greylist-max-o setFadeBehavior(I)Landroid/transition/Crossfade;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    :cond_0
    return-object p0
.end method

.method public greylist-max-o setResizeBehavior(I)Landroid/transition/Crossfade;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    :cond_0
    return-object p0
.end method
