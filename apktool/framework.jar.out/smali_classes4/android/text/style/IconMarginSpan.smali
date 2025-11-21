.class public Landroid/text/style/IconMarginSpan;
.super Ljava/lang/Object;
.source "IconMarginSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private final greylist-max-o mBitmap:Landroid/graphics/Bitmap;

.field private final greylist-max-o mPad:I


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/style/IconMarginSpan;-><init>(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Landroid/text/style/IconMarginSpan;->mPad:I

    return-void
.end method


# virtual methods
.method public whitelist chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    check-cast p1, Landroid/text/Spanned;

    invoke-interface {p1, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    if-ne p3, p1, :cond_1

    iget-object p0, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p1, p5

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, p4

    sub-int p1, p0, p1

    if-lez p1, :cond_0

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p2, p1

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :cond_0
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr p5, p1

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p5, p1

    sub-int/2addr p5, p4

    sub-int/2addr p0, p5

    if-lez p0, :cond_1

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr p1, p0

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_1
    return-void
.end method

.method public whitelist drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    check-cast p8, Landroid/text/Spanned;

    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p5

    invoke-virtual {p12, p5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p5

    invoke-virtual {p12, p5}, Landroid/text/Layout;->getLineTop(I)I

    move-result p5

    if-gez p4, :cond_0

    iget-object p4, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    sub-int/2addr p3, p4

    :cond_0
    iget-object p0, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    int-to-float p3, p3

    int-to-float p4, p5

    invoke-virtual {p1, p0, p3, p4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public whitelist getLeadingMargin(Z)I
    .locals 0

    iget-object p1, p0, Landroid/text/style/IconMarginSpan;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget p0, p0, Landroid/text/style/IconMarginSpan;->mPad:I

    add-int/2addr p1, p0

    return p1
.end method

.method public whitelist getPadding()I
    .locals 0

    iget p0, p0, Landroid/text/style/IconMarginSpan;->mPad:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IconMarginSpan{bitmap="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/text/style/IconMarginSpan;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", padding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/IconMarginSpan;->getPadding()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
