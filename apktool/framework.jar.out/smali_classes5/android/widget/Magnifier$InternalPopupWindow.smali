.class Landroid/widget/Magnifier$InternalPopupWindow;
.super Ljava/lang/Object;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Magnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalPopupWindow"
.end annotation


# static fields
.field private static final greylist-max-o SURFACE_Z:I = 0x5


# instance fields
.field private final blacklist mBBQ:Landroid/graphics/BLASTBufferQueue;

.field private final blacklist mBbqSurfaceControl:Landroid/view/SurfaceControl;

.field private greylist-max-o mBitmap:Landroid/graphics/Bitmap;

.field private final blacklist mBitmapRenderNode:Landroid/graphics/RenderNode;

.field private greylist-max-o mCallback:Landroid/widget/Magnifier$Callback;

.field private greylist-max-o mContentHeight:I

.field private final greylist-max-o mContentWidth:I

.field private blacklist mCurrentContent:Landroid/graphics/Bitmap;

.field private final greylist-max-o mDisplay:Landroid/view/Display;

.field private greylist-max-o mFirstDraw:Z

.field private greylist-max-o mFrameDrawScheduled:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private blacklist mIsFishEyeStyle:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mMagnifierUpdater:Ljava/lang/Runnable;

.field private blacklist mMeshHeight:I

.field private blacklist mMeshLeft:[F

.field private blacklist mMeshRight:[F

.field private blacklist mMeshWidth:I

.field private final greylist-max-o mOffsetX:I

.field private final greylist-max-o mOffsetY:I

.field private final blacklist mOverlay:Landroid/graphics/drawable/Drawable;

.field private final blacklist mOverlayRenderNode:Landroid/graphics/RenderNode;

.field private greylist-max-o mPendingWindowPositionUpdate:Z

.field private final blacklist mRamp:I

.field private final greylist-max-o mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

.field private final greylist-max-o mSurface:Landroid/view/Surface;

.field private final greylist-max-o mSurfaceControl:Landroid/view/SurfaceControl;

.field private final greylist-max-o mSurfaceSession:Landroid/view/SurfaceSession;

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private greylist-max-o mWindowPositionX:I

.field private greylist-max-o mWindowPositionY:I

.field private blacklist mZoom:F


# direct methods
.method public static synthetic blacklist $r8$lambda$anz8nud3Iq6rx1egcDwS_UvEQMc(Landroid/widget/Magnifier$InternalPopupWindow;ZIIZJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/widget/Magnifier$InternalPopupWindow;->lambda$doDraw$0(ZIIZJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mVc55Ea-sk0FReygcyspBh5G-GU(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->doDraw()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBitmap(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/widget/Magnifier$Callback;
    .locals 0

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentContent(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCurrentContent:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/widget/Magnifier$InternalPopupWindow;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/widget/Magnifier$InternalPopupWindow;Landroid/widget/Magnifier$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdrawOverlay(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->drawOverlay()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateContentFactors(Landroid/widget/Magnifier$InternalPopupWindow;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Magnifier$InternalPopupWindow;->updateContentFactors(IF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateCurrentContentForTesting(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->updateCurrentContentForTesting()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceControl;IIFIFFLandroid/graphics/drawable/Drawable;Landroid/os/Handler;Ljava/lang/Object;Landroid/widget/Magnifier$Callback;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    iput-object p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mDisplay:Landroid/view/Display;

    iput-object p10, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    iput-object p12, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    iput-object p13, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    iput p4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iput p5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    iput p6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    iput p7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    const p2, 0x3f866666    # 1.05f

    mul-float/2addr p2, p8

    float-to-int p2, p2

    iput p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iput p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    mul-int/lit8 p6, p2, 0x2

    add-int/2addr p6, p4

    mul-int/lit8 p2, p2, 0xf

    add-int/2addr p2, p5

    new-instance p7, Landroid/view/SurfaceSession;

    invoke-direct {p7}, Landroid/view/SurfaceSession;-><init>()V

    iput-object p7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    new-instance p10, Landroid/view/SurfaceControl$Builder;

    invoke-direct {p10, p7}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string p12, "magnifier surface"

    invoke-virtual {p10, p12}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p10

    const/4 p13, 0x4

    invoke-virtual {p10, p13}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p10

    invoke-virtual {p10}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p10

    invoke-virtual {p10, p3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    const-string p10, "InternalPopupWindow"

    invoke-virtual {p3, p10}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p3

    iput-object p3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    new-instance p13, Landroid/view/SurfaceControl$Builder;

    invoke-direct {p13, p7}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string p7, "magnifier surface bbq wrapper"

    invoke-virtual {p13, p7}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p7

    const/4 p13, 0x0

    invoke-virtual {p7, p13}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p7

    invoke-virtual {p7}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p7

    invoke-virtual {p7, p3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    invoke-virtual {p3, p10}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p3

    iput-object p3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    new-instance p7, Landroid/graphics/BLASTBufferQueue;

    invoke-direct {p7, p12, v0}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object p7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    const/4 p10, -0x3

    invoke-virtual {p7, p3, p6, p2, p10}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    invoke-virtual {p7}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    new-instance p3, Landroid/view/ThreadedRenderer$SimpleRenderer;

    const-string p6, "magnifier renderer"

    invoke-direct {p3, p1, p6, p2}, Landroid/view/ThreadedRenderer$SimpleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V

    iput-object p3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    const-string p1, "magnifier content"

    invoke-direct {p0, p1, p8, p9}, Landroid/widget/Magnifier$InternalPopupWindow;->createRenderNodeForBitmap(Ljava/lang/String;FF)Landroid/graphics/RenderNode;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    const-string p2, "magnifier overlay"

    invoke-direct {p0, p2, p9}, Landroid/widget/Magnifier$InternalPopupWindow;->createRenderNodeForOverlay(Ljava/lang/String;F)Landroid/graphics/RenderNode;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->setupOverlay()V

    invoke-virtual {p3}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object p6

    invoke-virtual {p6, p4, p5}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object p5

    :try_start_0
    invoke-virtual {p5}, Landroid/graphics/RecordingCanvas;->enableZ()V

    invoke-virtual {p5, p1}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {p5}, Landroid/graphics/RecordingCanvas;->disableZ()V

    invoke-virtual {p5, p2}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {p5}, Landroid/graphics/RecordingCanvas;->disableZ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCurrentContent:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->updateCurrentContentForTesting()V

    :cond_0
    iput-object p11, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Magnifier$InternalPopupWindow;)V

    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    iput-boolean p13, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    iput-boolean p14, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z

    if-eqz p14, :cond_1

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->createMeshMatrixForFishEyeEffect()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {p0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->endRecording()V

    throw p1
.end method

.method private blacklist createMeshMatrixForFishEyeEffect()V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    const/4 v1, 0x6

    iput v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    add-int v2, v0, v0

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x6

    add-int/2addr v3, v0

    mul-int/2addr v2, v3

    new-array v2, v2, [F

    iput-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    add-int v2, v0, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v0

    mul-int/2addr v2, v1

    new-array v0, v2, [F

    iput-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->fillMeshMatrix()V

    return-void
.end method

.method private blacklist createRenderNodeForBitmap(Ljava/lang/String;FF)Landroid/graphics/RenderNode;
    .locals 10

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object p1

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v2, v0

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    invoke-virtual {p1, p2}, Landroid/graphics/RenderNode;->setElevation(F)Z

    new-instance v4, Landroid/graphics/Outline;

    invoke-direct {v4}, Landroid/graphics/Outline;-><init>()V

    iget v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v8, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v4, p2}, Landroid/graphics/Outline;->setAlpha(F)V

    invoke-virtual {p1, v4}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    iget p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-virtual {p1, p2, p0}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object p0

    const p2, -0xff0100

    :try_start_0
    invoke-virtual {p0, p2}, Landroid/graphics/RecordingCanvas;->drawColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    throw p0
.end method

.method private blacklist createRenderNodeForOverlay(Ljava/lang/String;F)Landroid/graphics/RenderNode;
    .locals 10

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object p1

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v2, v0

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    new-instance v4, Landroid/graphics/Outline;

    invoke-direct {v4}, Landroid/graphics/Outline;-><init>()V

    iget v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v8, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v4, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    invoke-virtual {p1, v4}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    return-object p1
.end method

.method private greylist-max-o doDraw()V
    .locals 14

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-boolean v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z

    const/4 v13, 0x0

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    int-to-float v5, v3

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    div-float/2addr v3, v6

    sub-float/2addr v5, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v5, v3

    float-to-int v3, v5

    new-instance v5, Landroid/graphics/Rect;

    sub-int/2addr v0, v3

    invoke-direct {v5, v3, v13, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    iget v8, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    sub-int/2addr v8, v7

    iget v9, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-direct {v6, v7, v13, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7, v5, v6, v12}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5, v13, v13, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    iget v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    iget-object v8, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/RecordingCanvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    iget-object v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5, v0, v13, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    iget v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    iget-object v8, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/RecordingCanvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v13, v13, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-direct {v0, v13, v13, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v2, v3, v0, v12}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    iget-boolean v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    if-nez v4, :cond_3

    iget-boolean v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move-object v3, p0

    goto :goto_2

    :cond_3
    :goto_1
    iget-boolean v7, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    iput-boolean v13, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    iput-boolean v13, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionX:I

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionY:I

    new-instance v2, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Magnifier$InternalPopupWindow;ZIIZ)V

    iget-boolean p0, v3, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z

    if-nez p0, :cond_4

    iget-object p0, v3, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    iget-object v0, v3, Landroid/widget/Magnifier$InternalPopupWindow;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0, v0, v5, v6}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setLightCenter(Landroid/view/Display;II)V

    :cond_4
    move-object v0, v2

    :goto_2
    iput-boolean v13, v3, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, v3, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->draw(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    iget-object p0, v3, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    if-eqz p0, :cond_5

    invoke-direct {v3}, Landroid/widget/Magnifier$InternalPopupWindow;->updateCurrentContentForTesting()V

    iget-object p0, v3, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    invoke-interface {p0}, Landroid/widget/Magnifier$Callback;->onOperationComplete()V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    move-object v3, p0

    :try_start_3
    iget-object p0, v3, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->endRecording()V

    throw v0

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private blacklist drawOverlay()V
    .locals 5

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->endRecording()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->endRecording()V

    throw v0
.end method

.method private blacklist fillMeshMatrix()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    iget v1, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    int-to-float v1, v1

    iget v2, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    int-to-float v2, v2

    iget v3, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    div-float v3, v2, v3

    sub-float v4, v2, v3

    const/4 v5, 0x0

    :goto_0
    iget v6, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v7, v7, 0x2

    iget v8, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    add-int/lit8 v9, v8, 0x1

    mul-int/2addr v7, v9

    if-ge v5, v7, :cond_0

    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v7, v7, 0x2

    rem-int v7, v5, v7

    div-int/lit8 v7, v7, 0x2

    iget-object v9, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    int-to-float v10, v7

    iget v11, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    int-to-float v12, v11

    mul-float/2addr v12, v10

    int-to-float v13, v6

    div-float/2addr v12, v13

    aput v12, v9, v5

    iget-object v12, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    int-to-float v13, v11

    sub-float v13, v1, v13

    mul-int/2addr v7, v11

    div-int/2addr v7, v6

    int-to-float v7, v7

    add-float/2addr v13, v7

    aput v13, v12, v5

    div-int/lit8 v7, v5, 0x2

    add-int/lit8 v11, v6, 0x1

    div-int/2addr v7, v11

    mul-float/2addr v10, v4

    int-to-float v11, v6

    div-float v11, v10, v11

    add-float/2addr v11, v3

    sub-float v13, v2, v11

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-int/lit8 v15, v5, 0x1

    int-to-float v7, v7

    mul-float/2addr v11, v7

    move/from16 v16, v14

    int-to-float v14, v8

    div-float/2addr v11, v14

    add-float/2addr v13, v11

    aput v13, v9, v15

    int-to-float v6, v6

    div-float/2addr v10, v6

    sub-float v6, v2, v10

    sub-float v9, v2, v6

    div-float v9, v9, v16

    mul-float/2addr v6, v7

    int-to-float v7, v8

    div-float/2addr v6, v7

    add-float/2addr v9, v6

    aput v9, v12, v15

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$doDraw$0(ZIIZJ)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    if-eqz p4, :cond_2

    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 p3, 0x5

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_2
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p0, p5, p6}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method

.method private greylist-max-o requestUpdate()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-boolean v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    return-void
.end method

.method private blacklist setupOverlay()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->drawOverlay()V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/widget/Magnifier$InternalPopupWindow$1;

    invoke-direct {v1, p0}, Landroid/widget/Magnifier$InternalPopupWindow$1;-><init>(Landroid/widget/Magnifier$InternalPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method private blacklist updateContentFactors(IF)V
    .locals 8

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    if-ne v0, p1, :cond_0

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-ge v0, p1, :cond_1

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    const/4 v3, -0x3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setSurface(Landroid/view/Surface;)V

    new-instance v2, Landroid/graphics/Outline;

    invoke-direct {v2}, Landroid/graphics/Outline;-><init>()V

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v3, v0

    add-int v4, v1, v6

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v2}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v3, v0

    add-int v4, v1, v6

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v2}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {p1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object p1

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    invoke-virtual {p1, v0, v6}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->enableZ()V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->disableZ()V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->disableZ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {p1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {p0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->endRecording()V

    throw p1

    :cond_1
    move v6, p1

    :goto_0
    iput v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    iput p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->fillMeshMatrix()V

    return-void
.end method

.method private blacklist updateCurrentContentForTesting()V
    .locals 6

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCurrentContent:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v2, v4, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o destroy()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->destroy()V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0}, Landroid/view/SurfaceSession;->kill()V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method public greylist-max-o setContentPositionForNextDraw(II)V
    .locals 1

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionX:I

    iget p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionY:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->requestUpdate()V

    return-void
.end method

.method public greylist-max-o updateContent(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->requestUpdate()V

    return-void
.end method
