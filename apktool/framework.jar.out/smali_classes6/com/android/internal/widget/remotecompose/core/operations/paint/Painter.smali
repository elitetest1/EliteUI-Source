.class Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
.super Ljava/lang/Object;
.source "Painter.java"


# instance fields
.field blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist commit()Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    return-object p0
.end method

.method public blacklist setAlpha(F)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setAlpha(F)V

    return-object p0
.end method

.method public blacklist setAntiAlias(Z)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setAntiAlias(Z)V

    return-object p0
.end method

.method public blacklist setColor(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    return-object p0
.end method

.method public blacklist setColorId(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColorId(I)V

    return-object p0
.end method

.method public blacklist setFilterBitmap(Z)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setFilterBitmap(Z)V

    return-object p0
.end method

.method public blacklist setLinearGradient(FFFF[I[FI)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .locals 9

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v2, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v1, p5

    move-object v3, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setLinearGradient([II[FFFFFI)V

    return-object p0
.end method

.method public blacklist setPorterDuffColorFilter(II)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColorFilter(II)V

    return-object p0
.end method

.method public blacklist setRadialGradient(FFF[I[FI)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .locals 8

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v2, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v1, p4

    move-object v3, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setRadialGradient([II[FFFFI)V

    return-object p0
.end method

.method public blacklist setShader(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setShader(I)V

    return-object p0
.end method

.method public blacklist setStrokeCap(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStrokeCap(I)V

    return-object p0
.end method

.method public blacklist setStrokeJoin(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStrokeJoin(I)V

    return-object p0
.end method

.method public blacklist setStrokeMiter(F)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStrokeMiter(F)V

    return-object p0
.end method

.method public blacklist setStrokeWidth(F)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStrokeWidth(F)V

    return-object p0
.end method

.method public blacklist setStyle(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStyle(I)V

    return-object p0
.end method

.method public blacklist setSweepGradient(FF[I[F)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v2, 0x0

    move v4, p1

    move v5, p2

    move-object v1, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setSweepGradient([II[FFF)V

    return-object p0
.end method

.method public blacklist setTextSize(F)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextSize(F)V

    return-object p0
.end method

.method public blacklist setTypeface(IIZ)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextStyle(IIZ)V

    return-object p0
.end method
