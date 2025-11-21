.class Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "IUXColorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getGradation(IIIIF)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$angle:F

.field final synthetic blacklist val$colorA:I

.field final synthetic blacklist val$colorB:I

.field final synthetic blacklist val$gradient_hegith:I

.field final synthetic blacklist val$gradient_width:I


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;IIIFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput p2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$gradient_hegith:I

    iput p3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$colorA:I

    iput p4, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$colorB:I

    iput p5, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$angle:F

    iput p6, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$gradient_width:I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist resize(II)Landroid/graphics/Shader;
    .locals 8

    new-instance v0, Landroid/graphics/LinearGradient;

    iget p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$gradient_hegith:I

    int-to-float v4, p1

    iget p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$colorA:I

    iget p2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$colorB:I

    filled-new-array {p1, p2}, [I

    move-result-object v5

    const/4 p1, 0x2

    new-array v6, p1, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iget p2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$angle:F

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$gradient_width:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget p0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$gradient_hegith:I

    int-to-float p0, p0

    mul-float/2addr p0, v2

    invoke-virtual {p1, p2, v1, p0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, p2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
