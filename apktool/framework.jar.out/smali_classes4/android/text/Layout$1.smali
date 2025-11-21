.class Landroid/text/Layout$1;
.super Ljava/lang/Object;
.source "Layout.java"

# interfaces
.implements Landroid/text/Layout$CharacterBoundsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/Layout;->drawHighContrastBackground(Landroid/graphics/Canvas;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mLastColor:I

.field blacklist mLastLineNum:I

.field final blacklist mLineBackground:Landroid/graphics/RectF;

.field final synthetic blacklist this$0:Landroid/text/Layout;

.field final synthetic blacklist val$bgPaint:Landroid/graphics/Paint;

.field final synthetic blacklist val$black:I

.field final synthetic blacklist val$canvas:Landroid/graphics/Canvas;

.field final synthetic blacklist val$cornerRadius:F

.field final synthetic blacklist val$originalTextColor:I

.field final synthetic blacklist val$padding:F

.field final synthetic blacklist val$white:I


# direct methods
.method constructor blacklist <init>(Landroid/text/Layout;ILandroid/graphics/Paint;FLandroid/graphics/Canvas;FII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
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
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    iput p2, p0, Landroid/text/Layout$1;->val$originalTextColor:I

    iput-object p3, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    iput p4, p0, Landroid/text/Layout$1;->val$padding:F

    iput-object p5, p0, Landroid/text/Layout$1;->val$canvas:Landroid/graphics/Canvas;

    iput p6, p0, Landroid/text/Layout$1;->val$cornerRadius:F

    iput p7, p0, Landroid/text/Layout$1;->val$white:I

    iput p8, p0, Landroid/text/Layout$1;->val$black:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroid/text/Layout$1;->mLastLineNum:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    iput p2, p0, Landroid/text/Layout$1;->mLastColor:I

    return-void
.end method

.method private blacklist determineContrastingBackgroundColor(I)I
    .locals 1

    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmSpannedText(Landroid/text/Layout;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmSpanColors(Landroid/text/Layout;)Landroid/text/SpanColors;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmSpanColors(Landroid/text/Layout;)Landroid/text/SpanColors;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/SpanColors;->getColorAt(I)I

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Landroid/text/Layout$1;->val$originalTextColor:I

    :cond_1
    iget v0, p0, Landroid/text/Layout$1;->mLastColor:I

    if-eq p1, v0, :cond_3

    iput p1, p0, Landroid/text/Layout$1;->mLastColor:I

    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0, p1}, Landroid/text/Layout;->-$$Nest$misHighContrastTextDark(Landroid/text/Layout;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p0, p0, Landroid/text/Layout$1;->val$white:I

    return p0

    :cond_2
    iget p0, p0, Landroid/text/Layout$1;->val$black:I

    return p0

    :cond_3
    iget-object p0, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    return p0

    :cond_4
    :goto_0
    iget-object p0, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    return p0
.end method

.method private blacklist drawRect()V
    .locals 3

    iget-object v0, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    iget v1, p0, Landroid/text/Layout$1;->val$padding:F

    neg-float v2, v1

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Landroid/text/Layout$1;->val$canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    iget v2, p0, Landroid/text/Layout$1;->val$cornerRadius:F

    iget-object p0, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private blacklist isStandardNumber(I)Z
    .locals 4

    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x39

    if-le v0, v1, :cond_2

    :cond_0
    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    add-int/2addr p1, v3

    iget-object v1, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v1}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object p0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {p0}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p0

    const p1, 0xfe0f

    if-ne p0, p1, :cond_3

    move p0, v3

    goto :goto_2

    :cond_3
    move p0, v2

    :goto_2
    if-eqz v0, :cond_4

    if-nez p0, :cond_4

    return v3

    :cond_4
    return v2
.end method


# virtual methods
.method public blacklist onCharacterBounds(IIFFFF)V
    .locals 4

    iget-object v0, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v0}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout$1;->determineContrastingBackgroundColor(I)I

    move-result v0

    iget-object v1, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/text/Layout$1;->this$0:Landroid/text/Layout;

    invoke-static {v2}, Landroid/text/Layout;->-$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isEmojiComponent(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->isExtendedPictographic(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Landroid/text/Layout$1;->isStandardNumber(I)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget p1, p0, Landroid/text/Layout$1;->mLastLineNum:I

    if-ne p2, p1, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    invoke-virtual {p0, p3, p4, p5, p6}, Landroid/graphics/RectF;->union(FFFF)V

    return-void

    :cond_5
    :goto_1
    invoke-direct {p0}, Landroid/text/Layout$1;->drawRect()V

    iget-object p1, p0, Landroid/text/Layout$1;->mLineBackground:Landroid/graphics/RectF;

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/RectF;->set(FFFF)V

    iput p2, p0, Landroid/text/Layout$1;->mLastLineNum:I

    if-eqz v1, :cond_6

    iget-object p0, p0, Landroid/text/Layout$1;->val$bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public blacklist onEnd()V
    .locals 0

    invoke-direct {p0}, Landroid/text/Layout$1;->drawRect()V

    return-void
.end method
