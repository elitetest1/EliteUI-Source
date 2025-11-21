.class public Landroid/view/SemBlurInfo$Builder;
.super Ljava/lang/Object;
.source "SemBlurInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SemBlurInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist CURVEGRAPH_CURVE_MAX_VALUE:F = 100.0f

.field private static final blacklist CURVEGRAPH_CURVE_MIN_VALUE:F = -100.0f

.field private static final blacklist CURVEGRAPH_MAX_XY_VALUE:F = 255.0f

.field private static final blacklist CURVEGRAPH_MIN_XY_VALUE:F = 0.0f

.field private static final blacklist FLAG_FINISH_BLUR_INFO:I = 0x100

.field private static final blacklist FLAG_SET_BACKGROUND_BLUR_COLOR:I = 0x8

.field private static final blacklist FLAG_SET_BACKGROUND_BLUR_CORNER_RADIUS:I = 0x10

.field private static final blacklist FLAG_SET_BACKGROUND_CANVAS_SCALE:I = 0x20

.field private static final blacklist FLAG_SET_BLUR_BITMAP:I = 0x2

.field private static final blacklist FLAG_SET_BLUR_MODE:I = 0x1

.field private static final blacklist FLAG_SET_BLUR_RADIUS:I = 0x4

.field public static final blacklist FLAG_SET_COLOR_CURVE:I = 0x80

.field public static final blacklist FLAG_SET_PRESET:I = 0x40

.field private static final blacklist SATURATION_MAX_VALUE:F = 1.0f

.field private static final blacklist SATURATION_MIN_VALUE:F = -1.0f


# instance fields
.field private blacklist mBackgroundBlurColor:I

.field private blacklist mBlurMode:I

.field private blacklist mBlurRadius:I

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mCanvasDownScale:I

.field private blacklist mCapturedBitmap:Landroid/graphics/Bitmap;

.field private blacklist mClipRectBottom:I

.field private blacklist mClipRectLeft:I

.field private blacklist mClipRectRight:I

.field private blacklist mClipRectTop:I

.field private blacklist mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

.field private blacklist mCornerRadiusBL:F

.field private blacklist mCornerRadiusBR:F

.field private blacklist mCornerRadiusTL:F

.field private blacklist mCornerRadiusTR:F

.field private blacklist mPreset:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    iput v0, p0, Landroid/view/SemBlurInfo$Builder;->mBlurRadius:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SemBlurInfo$Builder;->mCapturedBitmap:Landroid/graphics/Bitmap;

    const/16 v1, 0x8

    iput v1, p0, Landroid/view/SemBlurInfo$Builder;->mCanvasDownScale:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/SemBlurInfo$Builder;->mBackgroundBlurColor:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTL:F

    iput v2, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTR:F

    iput v2, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBL:F

    iput v2, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBR:F

    iput v1, p0, Landroid/view/SemBlurInfo$Builder;->mClipRectLeft:I

    iput v1, p0, Landroid/view/SemBlurInfo$Builder;->mClipRectTop:I

    const v2, 0x7fffffff

    iput v2, p0, Landroid/view/SemBlurInfo$Builder;->mClipRectRight:I

    iput v2, p0, Landroid/view/SemBlurInfo$Builder;->mClipRectBottom:I

    iput-object v0, p0, Landroid/view/SemBlurInfo$Builder;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    iput v1, p0, Landroid/view/SemBlurInfo$Builder;->mPreset:I

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mBlurMode:I

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to create SemBlurInfo, This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkValueRange(FFF)F
    .locals 0

    cmpl-float p0, p1, p2

    if-lez p0, :cond_0

    return p2

    :cond_0
    cmpg-float p0, p1, p3

    if-gez p0, :cond_1

    return p3

    :cond_1
    return p1
.end method

.method public static blacklist getBlurPresetAttrs(I)[F
    .locals 2

    const/16 v0, 0x65

    if-lt p0, v0, :cond_0

    const/16 v1, 0x89

    if-gt p0, v1, :cond_0

    invoke-static {}, Landroid/view/SemBlurInfo;->-$$Nest$sfgetBLUR_PRESET()[[F

    move-result-object v1

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_0
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlurPreset ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is not valid. getBlurPresetAttrs return null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemBlurInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-static {}, Landroid/view/SemBlurInfo;->-$$Nest$sfgetCOLOR_CURVE_PRESET_ULTRA_BACKGROUND_DARK()[F

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Landroid/view/SemBlurInfo;->-$$Nest$sfgetCOLOR_CURVE_PRESET_DIM_BACKGROUND_DARK()[F

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Landroid/view/SemBlurInfo;->-$$Nest$sfgetCOLOR_CURVE_PRESET_SPATIAL_BACKGROUND_DARK()[F

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Landroid/view/SemBlurInfo;->-$$Nest$sfgetCOLOR_CURVE_PRESET_ULTRA_BACKGROUND_LIGHT()[F

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Landroid/view/SemBlurInfo;->-$$Nest$sfgetCOLOR_CURVE_PRESET_DIM_BACKGROUND_LIGHT()[F

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Landroid/view/SemBlurInfo;->-$$Nest$sfgetCOLOR_CURVE_PRESET_SPATIAL_BACKGROUND_LIGHT()[F

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist hidden_build()Landroid/view/SemBlurInfo;
    .locals 0

    invoke-virtual {p0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p0

    return-object p0
.end method

.method private greylist hidden_setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method private greylist hidden_setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method private greylist hidden_setRadius(I)Landroid/view/SemBlurInfo$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist build()Landroid/view/SemBlurInfo;
    .locals 17

    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/view/SemBlurInfo$Builder;->checkNotUsed()V

    iget-wide v1, v0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v3, 0x100

    or-long/2addr v1, v3

    iput-wide v1, v0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v3, 0x1

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_10

    const-wide/16 v3, 0x80

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    const-wide/16 v7, 0x40

    if-eqz v3, :cond_1

    and-long v3, v1, v7

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, BlurPreset and BlurColorCurve can not be used together"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    and-long v3, v1, v7

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/view/SemBlurInfo$Builder;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create SemBlurInfo, you set the wrong preset value "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/view/SemBlurInfo$Builder;->mPreset:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    iget v3, v0, Landroid/view/SemBlurInfo$Builder;->mBlurMode:I

    const-wide/16 v7, 0x20

    const-wide/16 v9, 0x2

    if-nez v3, :cond_6

    and-long v3, v1, v9

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    and-long/2addr v1, v7

    cmp-long v1, v1, v5

    if-nez v1, :cond_4

    goto/16 :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW, can not set canvasDownScale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW, can not set capturedBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v4, 0x1

    const-wide/16 v11, 0x10

    const-wide/16 v13, 0x8

    if-ne v3, v4, :cond_b

    and-long v3, v1, v9

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a

    and-long v3, v1, v13

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    and-long v3, v1, v11

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    and-long/2addr v1, v7

    cmp-long v1, v1, v5

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW_CAPTURED, can not set canvasDownScale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW_CAPTURED, can not set backgroundCornerRadius"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW_CAPTURED, can not set backgroundColor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW_CAPTURED, must set capturedBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    and-long v3, v1, v9

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    and-long v3, v1, v13

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    and-long/2addr v1, v11

    cmp-long v1, v1, v5

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_CANVAS, can not set backgroundCornerRadius"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_CANVAS, can not set backgroundColor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_CANVAS, can not capturedBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_2
    new-instance v2, Landroid/view/SemBlurInfo;

    iget v3, v0, Landroid/view/SemBlurInfo$Builder;->mBlurMode:I

    iget-object v4, v0, Landroid/view/SemBlurInfo$Builder;->mCapturedBitmap:Landroid/graphics/Bitmap;

    iget v5, v0, Landroid/view/SemBlurInfo$Builder;->mBlurRadius:I

    iget v6, v0, Landroid/view/SemBlurInfo$Builder;->mBackgroundBlurColor:I

    iget v7, v0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTL:F

    iget v8, v0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTR:F

    iget v9, v0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBL:F

    iget v10, v0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBR:F

    iget v11, v0, Landroid/view/SemBlurInfo$Builder;->mClipRectLeft:I

    iget v12, v0, Landroid/view/SemBlurInfo$Builder;->mClipRectTop:I

    iget v13, v0, Landroid/view/SemBlurInfo$Builder;->mClipRectRight:I

    iget v14, v0, Landroid/view/SemBlurInfo$Builder;->mClipRectBottom:I

    iget v15, v0, Landroid/view/SemBlurInfo$Builder;->mCanvasDownScale:I

    iget-object v0, v0, Landroid/view/SemBlurInfo$Builder;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    move-object/from16 v16, v0

    invoke-direct/range {v2 .. v16}, Landroid/view/SemBlurInfo;-><init>(ILandroid/graphics/Bitmap;IIFFFFIIIIILandroid/view/SemBlurInfo$ColorCurve;)V

    return-object v2

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setBackgroundClipRect(IIII)Landroid/view/SemBlurInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mClipRectLeft:I

    iput p2, p0, Landroid/view/SemBlurInfo$Builder;->mClipRectTop:I

    iput p3, p0, Landroid/view/SemBlurInfo$Builder;->mClipRectRight:I

    iput p4, p0, Landroid/view/SemBlurInfo$Builder;->mClipRectBottom:I

    return-object p0
.end method

.method public whitelist setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;
    .locals 4

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mBackgroundBlurColor:I

    return-object p0
.end method

.method public whitelist setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;
    .locals 4

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cornerRadius = ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ") is negative, set to 0.0f"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SemBlurInfo"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_0
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(FFFF)Landroid/view/SemBlurInfo$Builder;

    return-object p0
.end method

.method public whitelist setBackgroundCornerRadius(FFFF)Landroid/view/SemBlurInfo$Builder;
    .locals 4

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTL:F

    iput p2, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTR:F

    iput p3, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBL:F

    iput p4, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBR:F

    return-object p0
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;)Landroid/view/SemBlurInfo$Builder;
    .locals 4

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/SemBlurInfo$Builder;->mCapturedBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public whitelist setCanvasScale(I)Landroid/view/SemBlurInfo$Builder;
    .locals 4

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mCanvasDownScale:I

    return-object p0
.end method

.method public whitelist setColorCurve(FFFFFF)Landroid/view/SemBlurInfo$Builder;
    .locals 9

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    new-instance v2, Landroid/view/SemBlurInfo$ColorCurve;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0, p1, v0, v1}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v3

    const/high16 p1, 0x42c80000    # 100.0f

    const/high16 v0, -0x3d380000    # -100.0f

    invoke-direct {p0, p2, p1, v0}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v4

    const/high16 p1, 0x437f0000    # 255.0f

    const/4 p2, 0x0

    invoke-direct {p0, p3, p1, p2}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v5

    invoke-direct {p0, p4, p1, p2}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v6

    invoke-direct {p0, p5, p1, p2}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v7

    invoke-direct {p0, p6, p1, p2}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v8

    invoke-direct/range {v2 .. v8}, Landroid/view/SemBlurInfo$ColorCurve;-><init>(FFFFFF)V

    iput-object v2, p0, Landroid/view/SemBlurInfo$Builder;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    return-object p0
.end method

.method public whitelist setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;
    .locals 8

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mPreset:I

    invoke-static {p1}, Landroid/view/SemBlurInfo$Builder;->getBlurPresetAttrs(I)[F

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    new-instance v1, Landroid/view/SemBlurInfo$ColorCurve;

    const/4 v0, 0x1

    aget v2, p1, v0

    const/4 v0, 0x2

    aget v3, p1, v0

    const/4 v0, 0x3

    aget v4, p1, v0

    const/4 v0, 0x4

    aget v5, p1, v0

    const/4 v0, 0x5

    aget v6, p1, v0

    const/4 v0, 0x6

    aget v7, p1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/SemBlurInfo$ColorCurve;-><init>(FFFFFF)V

    iput-object v1, p0, Landroid/view/SemBlurInfo$Builder;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    :cond_0
    return-object p0
.end method

.method public whitelist setRadius(I)Landroid/view/SemBlurInfo$Builder;
    .locals 4

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mBlurRadius:I

    return-object p0
.end method
