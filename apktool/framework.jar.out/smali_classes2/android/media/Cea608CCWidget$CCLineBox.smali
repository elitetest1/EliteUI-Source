.class Landroid/media/Cea608CCWidget$CCLineBox;
.super Landroid/widget/TextView;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLineBox"
.end annotation


# static fields
.field private static final greylist-max-o EDGE_OUTLINE_RATIO:F = 0.1f

.field private static final greylist-max-o EDGE_SHADOW_RATIO:F = 0.05f

.field private static final greylist-max-o FONT_PADDING_RATIO:F = 0.75f


# instance fields
.field private greylist-max-o mBgColor:I

.field private greylist-max-o mEdgeColor:I

.field private greylist-max-o mEdgeType:I

.field private greylist-max-o mOutlineWidth:F

.field private greylist-max-o mShadowOffset:F

.field private greylist-max-o mShadowRadius:F

.field private greylist-max-o mTextColor:I


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/media/Cea608CCWidget$CCLineBox;->setGravity(I)V

    invoke-virtual {p0, v0}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundColor(I)V

    invoke-virtual {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setTextColor(I)V

    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10505d5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    const v0, 0x10505d7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    const v0, 0x10505d6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    return-void
.end method

.method private greylist-max-o drawEdgeOutline(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    invoke-virtual {v0}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v2

    invoke-virtual {v0}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v3

    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setTextColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    return-void
.end method

.method private greylist-max-o drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/4 v3, -0x1

    if-eqz v2, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    iget v5, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    :goto_1
    if-eqz v2, :cond_2

    iget v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    :cond_2
    iget v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v2, v6

    neg-float v7, v6

    invoke-virtual {p0, v2, v7, v7, v5}, Landroid/media/Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    iget v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    invoke-virtual {p0, v2, v6, v6, v3}, Landroid/media/Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    return-void
.end method

.method private greylist-max-o setBackgroundSpans(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/Spannable;

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_0

    aget-object v0, p0, v2

    invoke-virtual {v0, p1}, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->setBackgroundColor(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->drawEdgeOutline(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V

    return-void

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/media/Cea608CCWidget$CCLineBox;->setTextSize(IF)V

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    iput v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    invoke-virtual {p0, v3}, Landroid/media/Cea608CCWidget$CCLineBox;->setScaleX(F)V

    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v2, 0x22

    invoke-static {}, Landroid/media/Cea608CCWidget;->-$$Nest$sfgetmTextBounds()Landroid/graphics/Rect;

    move-result-object v3

    const-string v4, "1234567890123456789012345678901234"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-static {}, Landroid/media/Cea608CCWidget;->-$$Nest$sfgetmTextBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    div-float v2, v1, v0

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/media/Cea608CCWidget$CCLineBox;->setScaleX(F)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setScaleX("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ") : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CCLineBox"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method greylist-max-o setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2

    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    iget p1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    iput p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    iget p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setTextColor(I)V

    iget p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    iget v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/media/Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    :goto_0
    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->invalidate()V

    return-void
.end method
