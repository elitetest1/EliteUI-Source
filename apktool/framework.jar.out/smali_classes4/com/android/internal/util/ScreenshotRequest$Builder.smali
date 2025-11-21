.class public Lcom/android/internal/util/ScreenshotRequest$Builder;
.super Ljava/lang/Object;
.source "ScreenshotRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ScreenshotRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mBoundsInScreen:Landroid/graphics/Rect;

.field private blacklist mDisplayId:I

.field private blacklist mInsets:Landroid/graphics/Insets;

.field private final blacklist mSource:I

.field private blacklist mTaskId:I

.field private blacklist mTopComponent:Landroid/content/ComponentName;

.field private final blacklist mType:I

.field private blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mInsets:Landroid/graphics/Insets;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mTaskId:I

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mUserId:I

    iput v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mDisplayId:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid screenshot type requested!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mType:I

    iput p2, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mSource:I

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/util/ScreenshotRequest;
    .locals 12

    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const-string v0, "ScreenshotRequest"

    const-string v1, "Bitmap provided, but request is fullscreen. Bitmap will be ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Request is PROVIDED_IMAGE, but no bitmap is provided!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance v1, Lcom/android/internal/util/ScreenshotRequest;

    iget v2, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mType:I

    iget v3, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mSource:I

    iget-object v4, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mTopComponent:Landroid/content/ComponentName;

    iget v5, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mTaskId:I

    iget v6, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mUserId:I

    iget-object v7, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mInsets:Landroid/graphics/Insets;

    iget v10, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mDisplayId:I

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/util/ScreenshotRequest;-><init>(IILandroid/content/ComponentName;IILandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;ILcom/android/internal/util/ScreenshotRequest-IA;)V

    return-object v1
.end method

.method public blacklist setBitmap(Landroid/graphics/Bitmap;)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public blacklist setBoundsOnScreen(Landroid/graphics/Rect;)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBoundsInScreen:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist setDisplayId(I)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mDisplayId:I

    return-object p0
.end method

.method public blacklist setInsets(Landroid/graphics/Insets;)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method public blacklist setTaskId(I)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mTaskId:I

    return-object p0
.end method

.method public blacklist setTopComponent(Landroid/content/ComponentName;)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mTopComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public blacklist setUserId(I)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mUserId:I

    return-object p0
.end method
