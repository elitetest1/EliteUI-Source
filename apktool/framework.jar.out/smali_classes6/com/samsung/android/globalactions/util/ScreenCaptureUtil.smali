.class public Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;
.super Ljava/lang/Object;
.source "ScreenCaptureUtil.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ScreenCaptureUtil"


# instance fields
.field private blacklist mCapture:Landroid/graphics/Bitmap;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private blacklist mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

.field private blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    return-void
.end method

.method private blacklist captureScreen()V
    .locals 12

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    div-int/lit8 v7, v1, 0x5

    div-int/lit8 v8, v0, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v4, 0x96b

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v0, "ScreenCaptureUtil"

    const-string v1, "bitmap is null !!!!"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mCapture:Landroid/graphics/Bitmap;

    return-void
.end method

.method private static blacklist rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist clearScreenShot()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mCapture:Landroid/graphics/Bitmap;

    return-void
.end method

.method public blacklist takeScreenShot()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mCapture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->captureScreen()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->mCapture:Landroid/graphics/Bitmap;

    return-object p0
.end method
