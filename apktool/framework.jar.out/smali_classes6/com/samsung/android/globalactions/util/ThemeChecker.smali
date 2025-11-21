.class public Lcom/samsung/android/globalactions/util/ThemeChecker;
.super Ljava/lang/Object;
.source "ThemeChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/globalactions/util/ThemeChecker$State;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ThemeChecker"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private final blacklist mScreenCaptureUtil:Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;

.field private blacklist mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mScreenCaptureUtil:Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;

    iput-object p3, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    sget-object p1, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->NEED_CHECKING:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    return-void
.end method

.method public static blacklist getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F
    .locals 17

    move-object/from16 v0, p1

    const/4 v1, 0x3

    new-array v2, v1, [F

    new-array v1, v1, [F

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    if-le v3, v4, :cond_0

    int-to-float v3, v4

    goto :goto_0

    :cond_0
    int-to-float v3, v3

    :goto_0
    div-float/2addr v3, v5

    float-to-int v3, v3

    if-gtz v3, :cond_1

    const/4 v3, 0x1

    :cond_1
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v8

    move v11, v10

    move v12, v9

    :goto_1
    const/4 v13, 0x2

    if-ge v5, v6, :cond_3

    move v14, v7

    :goto_2
    if-ge v14, v0, :cond_2

    move-object/from16 v15, p0

    const/16 v16, 0x1

    invoke-virtual {v15, v5, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v4, v2, v9

    add-float/2addr v8, v4

    aget v4, v2, v16

    add-float/2addr v10, v4

    aget v4, v2, v13

    add-float/2addr v11, v4

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v14, v3

    goto :goto_2

    :cond_2
    move-object/from16 v15, p0

    const/16 v16, 0x1

    add-int/2addr v5, v3

    goto :goto_1

    :cond_3
    const/16 v16, 0x1

    int-to-float v0, v12

    div-float/2addr v8, v0

    aput v8, v1, v9

    div-float/2addr v10, v0

    aput v10, v1, v16

    div-float/2addr v11, v0

    aput v11, v1, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getState()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    sget-object v1, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->NEED_CHECKING:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/ThemeChecker;->setThemeState()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isWhiteTheme()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    sget-object v1, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->NEED_CHECKING:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/ThemeChecker;->setThemeState()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    sget-object v0, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->WHITE:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist reset()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "ThemeChecker"

    const-string/jumbo v2, "reset() : state reset"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->NEED_CHECKING:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mScreenCaptureUtil:Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->clearScreenShot()V

    return-void
.end method

.method public blacklist setThemeState()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mScreenCaptureUtil:Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/ScreenCaptureUtil;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1}, Lcom/samsung/android/globalactions/util/ThemeChecker;->getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Whole Area Hue="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", Saturation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", Brightness="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ThemeChecker"

    invoke-virtual {v1, v5, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    aget v1, v0, v3

    const v2, 0x3e99999a    # 0.3f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    aget v0, v0, v4

    const v1, 0x3f6147ae    # 0.88f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->WHITE:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/globalactions/util/ThemeChecker$State;->BLACK:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/ThemeChecker;->mState:Lcom/samsung/android/globalactions/util/ThemeChecker$State;

    :cond_1
    return-void
.end method
