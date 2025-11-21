.class Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;
.super Landroid/view/View;
.source "InteractionMonitorDebugOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionMonitorDebugOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugOverlayView"
.end annotation


# static fields
.field private static final blacklist TRACK_NAME:Ljava/lang/String; = "InteractionJankMonitor"


# instance fields
.field private final blacklist mBgColor:I

.field final blacklist mCujFontSize:I

.field final blacklist mCujNameTextHeight:F

.field final blacklist mCujStatusWidth:F

.field private final blacklist mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private final blacklist mDebugPaint:Landroid/graphics/Paint;

.field private final blacklist mDensity:F

.field final blacklist mPackageNameFontSize:I

.field private final blacklist mPackageNameText:Ljava/lang/String;

.field final blacklist mPackageNameTextHeight:F

.field final blacklist mPackageNameWidth:F

.field final blacklist mPadding:I

.field private final blacklist mYOffset:D

.field final synthetic blacklist this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;Landroid/content/Context;ID)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->setVisibility(I)V

    iput p3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mBgColor:I

    iput-wide p4, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mYOffset:D

    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDensity:F

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "package:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmCurrentApplication(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameText:Ljava/lang/String;

    const/4 p2, 0x5

    invoke-direct {p0, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->dipToPx(I)I

    move-result p2

    iput p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPadding:I

    const/16 p2, 0xc

    invoke-direct {p0, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->dipToPx(I)I

    move-result p2

    iput p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameFontSize:I

    const/16 p3, 0x12

    invoke-direct {p0, p3}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->dipToPx(I)I

    move-result p3

    iput p3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujFontSize:I

    invoke-direct {p0, p3}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getTextHeight(I)F

    move-result p3

    iput p3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujNameTextHeight:F

    const p4, 0x3f99999a    # 1.2f

    mul-float/2addr p3, p4

    iput p3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujStatusWidth:F

    invoke-direct {p0, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getTextHeight(I)F

    move-result p3

    iput p3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameTextHeight:F

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getWidthOfText(Ljava/lang/String;I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameWidth:F

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;Landroid/content/Context;IDLcom/android/internal/jank/InteractionMonitorDebugOverlay-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;-><init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;Landroid/content/Context;ID)V

    return-void
.end method

.method private blacklist dipToPx(I)I
    .locals 0

    iget p0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDensity:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private blacklist getTextHeight(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object p0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr p1, p0

    return p1
.end method

.method private blacklist getWidthOfLongestCujName(I)F
    .locals 3

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-static {v1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-static {v1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;

    iget v1, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mCuj:I

    invoke-static {v1}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    cmpl-float v2, v1, p1

    if-lez v2, :cond_0

    move p1, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private blacklist getWidthOfText(Ljava/lang/String;I)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const-wide/16 v0, 0x1000

    const-string v2, "InteractionJankMonitor"

    const-string v3, "DEBUG_OVERLAY_DRAW"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getWidth()I

    move-result v5

    int-to-double v6, v3

    iget-wide v8, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mYOffset:D

    mul-double/2addr v6, v8

    double-to-int v3, v6

    iget v6, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameWidth:F

    iget v7, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujFontSize:I

    invoke-direct {p0, v7}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getWidthOfLongestCujName(I)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v7, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujStatusWidth:F

    add-float/2addr v6, v7

    int-to-float v5, v5

    sub-float/2addr v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v5, v5

    int-to-float v3, v3

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mBgColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPadding:I

    neg-int v5, v3

    mul-int/lit8 v5, v5, 0x2

    int-to-float v8, v5

    neg-int v5, v3

    int-to-float v9, v5

    mul-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    add-float v10, v5, v6

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v5, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameTextHeight:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujNameTextHeight:F

    iget-object v6, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-static {v6}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float v11, v3, v5

    iget-object v12, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameFontSize:I

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    iget p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameTextHeight:F

    const/4 v5, 0x0

    invoke-virtual {v7, v5, p1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameText:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, p1, v5, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujFontSize:I

    int-to-float v6, v6

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    move p1, v4

    :goto_0
    iget-object v6, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-static {v6}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-static {v6}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;

    iget v8, v6, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mState:I

    const/16 v9, -0x3e8

    if-eq v8, v9, :cond_1

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v9, -0x10000

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    const-string/jumbo v8, "\u274c"

    goto :goto_1

    :cond_0
    iget-object v8, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    const v9, -0x777778

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    const-string/jumbo v8, "\u2705"

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    const-string/jumbo v8, "\u2610"

    :goto_1
    iget v6, v6, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mCuj:I

    invoke-static {v6}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v6

    iget v9, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujNameTextHeight:F

    invoke-virtual {v7, v5, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v9, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v5, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v8, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujStatusWidth:F

    iget-object v9, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v8, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0, v1, v2, v4}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method
