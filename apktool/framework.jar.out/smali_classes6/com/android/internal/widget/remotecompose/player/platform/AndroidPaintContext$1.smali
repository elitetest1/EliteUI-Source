.class Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;
.super Ljava/lang/Object;
.source "AndroidPaintContext.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mTileModes:[Landroid/graphics/Shader$TileMode;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/graphics/Shader$TileMode;

    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    aput-object v1, p1, v0

    const/4 v0, 0x2

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    aput-object v1, p1, v0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTileModes:[Landroid/graphics/Shader$TileMode;

    return-void
.end method


# virtual methods
.method public blacklist clear(J)V
    .locals 2

    const-wide/16 v0, 0x2000

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method public blacklist setAlpha(F)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public blacklist setAntiAlias(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public blacklist setBlendMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->origamiToBlendMode(I)Landroid/graphics/BlendMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    return-void
.end method

.method public blacklist setColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public blacklist setColorFilter(II)V
    .locals 1

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->-$$Nest$smorigamiToPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method public blacklist setFilterBitmap(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method public blacklist setImageFilterQuality(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " quality ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method public blacklist setLinearGradient([I[FFFFFI)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move-object v1, p0

    new-instance p0, Landroid/graphics/LinearGradient;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTileModes:[Landroid/graphics/Shader$TileMode;

    aget-object p7, v1, p7

    move v2, p5

    move-object p5, p1

    move p1, p3

    move p3, v2

    move v2, p6

    move-object p6, p2

    move p2, p4

    move p4, v2

    invoke-direct/range {p0 .. p7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public blacklist setRadialGradient([I[FFFFI)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move-object v1, p0

    new-instance p0, Landroid/graphics/RadialGradient;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTileModes:[Landroid/graphics/Shader$TileMode;

    aget-object p6, v1, p6

    move v2, p4

    move-object p4, p1

    move p1, p3

    move p3, p5

    move-object p5, p2

    move p2, v2

    invoke-direct/range {p0 .. p6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public blacklist setShader(I)V
    .locals 8

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->-$$Nest$mgetShaderData(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/RuntimeShader;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getShaderTextId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformFloatNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformFloats(Ljava/lang/String;)[F

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformIntegerNames()[Ljava/lang/String;

    move-result-object v1

    move v3, v2

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformInts(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformBitmapNames()[Ljava/lang/String;

    move-result-object v1

    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_4

    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformBitmapId(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->access$000(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v5, v5, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v4, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v3, v5}, Landroid/graphics/RuntimeShader;->setInputShader(Ljava/lang/String;Landroid/graphics/Shader;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public blacklist setStrokeCap(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public blacklist setStrokeJoin(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method

.method public blacklist setStrokeMiter(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    return-void
.end method

.method public blacklist setStrokeWidth(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public blacklist setStyle(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/graphics/Paint$Style;->values()[Landroid/graphics/Paint$Style;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public blacklist setSweepGradient([I[FFF)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/SweepGradient;

    invoke-direct {v0, p3, p4, p1, p2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public blacklist setTextSize(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public blacklist setTypeFace(IIZ)V
    .locals 2

    const/16 v0, 0x190

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    if-ne p2, v0, :cond_1

    if-nez p3, :cond_1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {p1, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :cond_2
    if-ne p2, v0, :cond_3

    if-nez p3, :cond_3

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {p1, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :cond_4
    if-ne p2, v0, :cond_5

    if-nez p3, :cond_5

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :cond_5
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p1, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :cond_6
    if-ne p2, v0, :cond_7

    if-nez p3, :cond_7

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {p1, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
