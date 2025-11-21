.class public Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;
.super Landroid/widget/FrameLayout;
.source "RemoteComposeCanvas.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;
    }
.end annotation


# static fields
.field static final blacklist DEFAULT_FRAME_RATE:F = 60.0f

.field static final blacklist POST_TO_NEXT_FRAME_THRESHOLD:F = 60.0f

.field static final blacklist USE_VIEW_AREA_CLICK:Z = true

.field private static final blacklist sScaleOutput:[F


# instance fields
.field blacklist mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

.field blacklist mActionDownPoint:Landroid/graphics/Point;

.field private blacklist mChoreographer:Landroid/view/Choreographer;

.field private blacklist mCount:I

.field blacklist mDebug:I

.field blacklist mDensity:F

.field private blacklist mDisable:Z

.field blacklist mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

.field private blacklist mDuration:J

.field private blacklist mEvalTime:Z

.field private blacklist mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field blacklist mHasClickAreas:Z

.field blacklist mInActionDown:Z

.field private blacklist mLastAnimationTime:F

.field blacklist mLastFrameCall:J

.field blacklist mLastFrameDelay:J

.field blacklist mMaxFrameDelay:J

.field blacklist mMaxFrameRate:F

.field blacklist mStart:J

.field blacklist mTheme:I

.field private blacklist mTime:J

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic blacklist $r8$lambda$Z3dA_R8piEJh61-5GhhQyrDo68U(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->lambda$updateClickAreas$0(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;Landroid/view/View;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->sScaleOutput:[F

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    const/4 v0, -0x3

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDensity:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mStart:J

    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    const/high16 v1, 0x42700000    # 60.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v2, v1

    float-to-long v1, v2

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameDelay:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameCall:J

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;)V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastAnimationTime:F

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    invoke-virtual {p0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    const/4 p2, -0x3

    iput p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    iput p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDensity:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mStart:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    float-to-long v0, v1

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameDelay:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameCall:J

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastAnimationTime:F

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    invoke-virtual {p0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    const/4 p2, -0x3

    iput p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    iput p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    new-instance p3, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-direct {p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;-><init>()V

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/high16 p3, 0x7fc00000    # Float.NaN

    iput p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDensity:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mStart:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    const/high16 p3, 0x42700000    # 60.0f

    iput p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, p3

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameDelay:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameCall:J

    new-instance p3, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;

    invoke-direct {p3, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;)V

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastAnimationTime:F

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setBackgroundColor(I)V

    invoke-virtual {p0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private blacklist drawDisable(Landroid/graphics/Canvas;)V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, 0x43000000    # 128.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getHeight()I

    move-result p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "\u26a0"

    invoke-virtual {v1, v5, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    int-to-float p0, p0

    div-float/2addr p0, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr p0, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr p0, v0

    invoke-virtual {p1, v5, v2, p0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private blacklist getDefaultTextSize()F
    .locals 1

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$addIdActionListener$1(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;ILjava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;->click(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateClickAreas$0(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getMetadata()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->performClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/lang/String;)V

    return-void
.end method

.method private blacklist updateClickAreas()V
    .locals 11

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getClickAreas()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->removeAllViews()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    new-instance v5, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    if-ne v7, v4, :cond_0

    move v7, v4

    goto :goto_1

    :cond_0
    move v7, v1

    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getId()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getContentDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getMetadata()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;-><init>(Landroid/content/Context;ZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->height()F

    move-result v6

    float-to-int v6, v6

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getLeft()F

    move-result v4

    float-to-int v4, v4

    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getTop()F

    move-result v4

    float-to-int v4, v4

    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    new-instance v4, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist addIdActionListener(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p0

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addIdActionListener(Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;)V

    return-void
.end method

.method public blacklist checkShaders(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V

    return-void
.end method

.method public blacklist clearLocalBitmap(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedDataOverride(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    :cond_0
    return-void
.end method

.method public blacklist clearLocalColor(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedDataOverride(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    :cond_0
    return-void
.end method

.method public blacklist clearLocalFloat(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedFloatOverride(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    :cond_0
    return-void
.end method

.method public blacklist clearLocalInt(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedIntegerOverride(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    :cond_0
    return-void
.end method

.method public blacklist clearLocalString(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearNamedStringOverride(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    :cond_0
    return-void
.end method

.method public blacklist getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    return-object p0
.end method

.method public blacklist getEvalTime()F
    .locals 7

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDuration:J

    long-to-double v2, v0

    iget v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    int-to-double v5, v4

    div-double/2addr v2, v5

    const/16 v5, 0x64

    if-le v4, v5, :cond_1

    const-wide/16 v5, 0x2

    div-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDuration:J

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    :cond_1
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v2, v0

    double-to-float p0, v2

    return p0
.end method

.method public blacklist getNamedColors()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getNamedColors()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNamedVariables(I)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    return-object p0
.end method

.method public blacklist getTheme()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    return p0
.end method

.method public blacklist hasSensorListeners([I)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x11

    :goto_0
    const/16 v2, 0x1a

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->hasListener(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aput v1, p1, v0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public blacklist isDraggable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->hasTouchListener()Z

    move-result p0

    return p0
.end method

.method public blacklist measureDimension(II)I
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_0

    return p2

    :cond_0
    return p1

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Integer;->min(II)I

    move-result p0

    return p0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const-string v0, "RC : POST CHOREOGRAPHER WITH "

    const-string v1, " count "

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->drawDisable(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    const/4 v2, 0x1

    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mStart:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    const v6, 0x3089705f    # 1.0E-9f

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setAnimationTime(F)V

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/16 v7, 0x1e

    invoke-virtual {v6, v7, v5}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    iget v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastAnimationTime:F

    sub-float v6, v5, v6

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/16 v8, 0x1f

    invoke-virtual {v7, v8, v6}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    iput v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastAnimationTime:F

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setAnimationEnabled(Z)V

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->currentTime:J

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDebug(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->useCanvas(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mWidth:F

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mHeight:F

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V

    iget p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    if-ne p1, v2, :cond_3

    iget p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x3b9aca00

    cmp-long p1, v5, v7

    if-lez p1, :cond_3

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fps"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    :cond_3
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->needsRepaint()I

    move-result p1

    if-lez p1, :cond_7

    iget v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    const/high16 v5, 0x42700000    # 60.0f

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_4

    int-to-long v5, p1

    iput-wide v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    goto :goto_1

    :cond_4
    iget-wide v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameDelay:J

    int-to-long v7, p1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    if-ne v1, v2, :cond_5

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " (nextFrame was "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", max delay "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameDelay:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",  max framerate is "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    iget-wide v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameDelay:J

    invoke-virtual {p1, v0, v5, v6}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    :cond_6
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->useChoreographer()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_8
    :goto_2
    iget-boolean p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mEvalTime:Z

    if-eqz p1, :cond_9

    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDuration:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDuration:J

    iget p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getLastOpCount()I

    iput-boolean v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    :cond_9
    :goto_3
    iget p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    if-ne p1, v2, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameCall:J

    sub-long/2addr v0, v2

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RC : Delay since last frame "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v3, 0x447a0000    # 1000.0f

    long-to-float v0, v0

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " fps)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mLastFrameCall:J

    :cond_a
    :goto_4
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getWidth()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->measureDimension(II)I

    move-result p1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getHeight()I

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->measureDimension(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setMeasuredDimension(II)V

    if-ne v0, p1, :cond_2

    if-eq v1, p2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->invalidateMeasure()V

    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0x1d

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    const/16 v5, 0x3e8

    if-eq v1, v3, :cond_6

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    return v4

    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->hasTouchListener()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v10

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v11

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->touchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    return v3

    :cond_2
    return v4

    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getAnimationTime()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    :cond_4
    return v3

    :cond_5
    return v4

    :cond_6
    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->performClick()Z

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->hasTouchListener()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getAnimationTime()F

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v10

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v11

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    return v3

    :cond_7
    return v4

    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->hasTouchListener()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getAnimationTime()F

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    iput-boolean v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_9

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_9
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    return v3

    :cond_a
    return v4
.end method

.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    if-nez p1, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDensity:F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDensity(F)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->updateClickAreas()V

    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mChoreographer:Landroid/view/Choreographer;

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->removeAllViews()V

    return-void
.end method

.method public whitelist performClick()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mHasClickAreas:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist setColor(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedColorOverride(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setDebug(I)V
    .locals 4

    iget v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, p1

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->setDebug(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    :cond_3
    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDisable:Z

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDocLoadTime()V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setAnimationEnabled(Z)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDensity:F

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDensity(F)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setUseChoreographer(Z)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getContentDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->updateClickAreas()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->requestLayout()V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/16 v0, 0x1d

    const v1, -0x800001

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const/16 v0, 0x21

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getDefaultTextSize()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getProperty(S)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameRate:F

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mMaxFrameDelay:J

    :cond_0
    return-void
.end method

.method public blacklist setExternalFloat(IF)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->loadFloat(IF)V

    return-void
.end method

.method public blacklist setHapticEngine(Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setHapticEngine(Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;)V

    return-void
.end method

.method public blacklist setLocalBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedDataOverride(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    :cond_0
    return-void
.end method

.method public blacklist setLocalColor(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedColorOverride(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    :cond_0
    return-void
.end method

.method public blacklist setLocalFloat(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedFloatOverride(Ljava/lang/String;F)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    :cond_0
    return-void
.end method

.method public blacklist setLocalInt(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedIntegerOverride(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    :cond_0
    return-void
.end method

.method public blacklist setLocalString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedStringOverride(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->invalidate()V

    :cond_0
    return-void
.end method

.method public blacklist setLong(Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setNamedLong(Ljava/lang/String;J)V

    return-void
.end method

.method public blacklist setTheme(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    return-void
.end method

.method public blacklist setUseChoreographer(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setUseChoreographer(Z)V

    return-void
.end method
