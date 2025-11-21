.class public Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;
.super Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.source "SprObjectShapeCircle.java"


# instance fields
.field public blacklist cr:F

.field public blacklist cx:F

.field public blacklist cy:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public blacklist draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 0

    const/16 p3, 0x1f

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->save(I)I

    iget p3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->alpha:F

    mul-float/2addr p5, p3

    iget-object p3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_0

    invoke-virtual {p0, p1, p2, p5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->setShadowLayer()V

    iget-boolean p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->isVisibleFill:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    iget p3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    iget p4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    iget-object p5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->isVisibleStroke:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    iget p3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    iget p4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    iget-object p5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->clearShadowLayer()V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public blacklist fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method

.method public blacklist getSPRSize()I
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result p0

    add-int/lit8 p0, p0, 0xc

    return p0
.end method

.method public blacklist getTotalElementCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getTotalSegmentCount()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    return-void
.end method
