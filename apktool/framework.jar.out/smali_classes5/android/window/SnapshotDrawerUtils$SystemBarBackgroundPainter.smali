.class public Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;
.super Ljava/lang/Object;
.source "SnapshotDrawerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SnapshotDrawerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemBarBackgroundPainter"
.end annotation


# instance fields
.field private final blacklist mNavigationBarColor:I

.field private final blacklist mNavigationBarPaint:Landroid/graphics/Paint;

.field private final blacklist mRequestedVisibleTypes:I

.field private final blacklist mScale:F

.field private final blacklist mStatusBarColor:I

.field private final blacklist mStatusBarPaint:Landroid/graphics/Paint;

.field private final blacklist mSystemBarInsets:Landroid/graphics/Rect;

.field private final blacklist mWindowFlags:I

.field private final blacklist mWindowPrivateFlags:I


# direct methods
.method public constructor blacklist <init>(IIILandroid/app/ActivityManager$TaskDescription;FI)V
    .locals 14

    move/from16 v0, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iput p1, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowFlags:I

    iput v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    move/from16 v3, p5

    iput v3, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mScale:F

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10604a8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v11

    const/4 v12, 0x0

    const/high16 v6, 0x4000000

    const/16 v10, 0x8

    move v5, p1

    move/from16 v9, p3

    invoke-static/range {v5 .. v12}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZZ)I

    move-result v4

    iput v4, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarColor:I

    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x1110205

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v11, v6

    goto :goto_0

    :cond_0
    move v11, v9

    :goto_0
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    move v12, v6

    goto :goto_1

    :cond_1
    move v12, v9

    :goto_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager$TaskDescription;->getDeviceDefaultNavigationBarColor(Landroid/content/Context;)I

    move-result v13

    const/high16 v6, 0x8000000

    const/16 v10, 0x10

    move v5, p1

    move/from16 v9, p3

    invoke-static/range {v5 .. v13}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZZI)I

    move-result p1

    iput p1, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mNavigationBarColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 p1, p6

    iput p1, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mRequestedVisibleTypes:I

    return-void
.end method

.method private blacklist isNavigationBarColorViewVisible()Z
    .locals 4

    iget v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mRequestedVisibleTypes:I

    iget v3, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mNavigationBarColor:I

    iget p0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v1, v2, v3, p0, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(IIIZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    invoke-virtual {p0, p1}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->drawNavigationBarBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method blacklist drawNavigationBarBackground(Landroid/graphics/Canvas;)V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v4, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mScale:F

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/internal/policy/DecorView;->getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;F)V

    invoke-direct {p0}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->isNavigationBarColorViewVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mNavigationBarColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method blacklist drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 7

    if-lez p3, :cond_2

    iget v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-eqz p2, :cond_1

    iget p2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    int-to-float v2, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    sub-int/2addr p2, v0

    int-to-float v4, p2

    int-to-float v5, p3

    iget-object v6, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method blacklist getStatusBarColorViewHeight()I
    .locals 6

    iget v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v2, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v3, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mRequestedVisibleTypes:I

    iget v4, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mStatusBarColor:I

    iget v5, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget p0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mScale:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_1
    return v1
.end method

.method public blacklist setInsets(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
