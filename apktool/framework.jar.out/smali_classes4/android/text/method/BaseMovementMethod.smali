.class public Landroid/text/method/BaseMovementMethod;
.super Ljava/lang/Object;
.source "BaseMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o getBottomLine(Landroid/widget/TextView;)I
    .locals 2

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result p0

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p0

    return p0
.end method

.method private greylist-max-o getCharacterWidth(Landroid/widget/TextView;)I
    .locals 0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private greylist-max-o getInnerHeight(Landroid/widget/TextView;)I
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private greylist-max-o getInnerWidth(Landroid/widget/TextView;)I
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private greylist-max-o getScrollBoundsLeft(Landroid/widget/TextView;)I
    .locals 4

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result v1

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result p0

    if-le v1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    if-gt v1, p0, :cond_2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-ge v2, p1, :cond_1

    move p1, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method private greylist-max-o getScrollBoundsRight(Landroid/widget/TextView;)I
    .locals 4

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result v1

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result p0

    if-le v1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p1, -0x80000000

    :goto_0
    if-gt v1, p0, :cond_2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-le v2, p1, :cond_1

    move p1, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method private greylist-max-o getTopLine(Landroid/widget/TextView;)I
    .locals 0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected whitelist bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist canSelectArbitrarily()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected whitelist down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected whitelist end(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected whitelist getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I
    .locals 0

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result p0

    and-int/lit16 p0, p0, -0x601

    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p0

    and-int/lit16 p0, p0, -0xc2

    return p0
.end method

.method protected whitelist handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 p5, 0x5c

    const/4 v0, 0x2

    if-eq p3, p5, :cond_e

    const/16 p5, 0x5d

    if-eq p3, p5, :cond_c

    const/16 p5, 0x7a

    const/16 v1, 0x1000

    if-eq p3, p5, :cond_a

    const/16 p5, 0x7b

    if-eq p3, p5, :cond_8

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :cond_2
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :pswitch_2
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :cond_4
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :cond_5
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->nextParagraph(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :pswitch_3
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :cond_6
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :cond_7
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->previousParagraph(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :cond_8
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->end(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :cond_9
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :cond_a
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->home(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :cond_b
    invoke-static {p4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :cond_c
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :cond_d
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->bottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :cond_e
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :cond_f
    invoke-static {p4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {p0, p1, p2}, Landroid/text/method/BaseMovementMethod;->top(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result p0

    return p0

    :cond_10
    :goto_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected whitelist home(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 0

    return-void
.end method

.method protected whitelist left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected greylist-max-o leftWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected whitelist lineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected whitelist lineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist nextParagraph(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p3

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    const/16 v2, 0xa

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p3

    :goto_0
    cmpg-float v2, p3, v3

    if-gez v2, :cond_2

    neg-float p3, p3

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p3, v1

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/method/BaseMovementMethod;->scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v1

    goto :goto_1

    :cond_2
    cmpl-float v2, p3, v3

    if-lez v2, :cond_3

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p3, v1

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/method/BaseMovementMethod;->scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v1

    :cond_3
    :goto_1
    cmpg-float p3, v0, v3

    if-gez p3, :cond_4

    neg-float p3, v0

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p3, v2

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/method/BaseMovementMethod;->scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p0

    :goto_2
    or-int/2addr p0, v1

    return p0

    :cond_4
    cmpl-float p3, v0, v3

    if-lez p3, :cond_5

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p3, v2

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/method/BaseMovementMethod;->scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result p0

    goto :goto_2

    :cond_5
    :goto_3
    return v1
.end method

.method public whitelist onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p0, p2, p4}, Landroid/text/method/BaseMovementMethod;->getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    invoke-static {v2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    :cond_0
    return p0
.end method

.method public whitelist onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .locals 9

    invoke-virtual {p0, p2, p3}, Landroid/text/method/BaseMovementMethod;->getMovementMetaState(Landroid/text/Spannable;Landroid/view/KeyEvent;)I

    move-result v4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v0, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    move v7, v0

    move v8, v7

    :goto_0
    if-ge v7, v6, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/method/BaseMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    move-object p0, v0

    move-object p1, v1

    move-object p2, v2

    move-object p3, v5

    goto :goto_0

    :cond_1
    move-object v2, p2

    :goto_1
    if-eqz v8, :cond_2

    invoke-static {v2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    invoke-static {v2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    :cond_2
    return v8

    :cond_3
    return v0
.end method

.method public whitelist onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 0

    return-void
.end method

.method public whitelist onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected whitelist pageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected whitelist pageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist previousParagraph(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected whitelist right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected greylist-max-o rightWord(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected greylist-max-o scrollBottom(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getBottomLine(Landroid/widget/TextView;)I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    if-gt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {p1, p2, v1, v0}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist-max-o scrollDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 5

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v0, v4

    if-ge v3, v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    sub-int/2addr v0, v4

    if-gt v1, v0, :cond_1

    add-int/2addr v1, p3

    sub-int/2addr v1, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    add-int/2addr p3, v4

    invoke-virtual {p2, p3}, Landroid/text/Layout;->getLineTop(I)I

    move-result p3

    sub-int/2addr p3, p0

    invoke-static {p1, p2, v0, p3}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    return v4

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist-max-o scrollLeft(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsLeft(Landroid/widget/TextView;)I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getCharacterWidth(Landroid/widget/TextView;)I

    move-result p0

    mul-int/2addr p0, p3

    sub-int/2addr v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->scrollTo(II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist-max-o scrollLineEnd(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsRight(Landroid/widget/TextView;)I

    move-result p2

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerWidth(Landroid/widget/TextView;)I

    move-result p0

    sub-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result p0

    if-ge p0, p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/TextView;->scrollTo(II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist-max-o scrollLineStart(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsLeft(Landroid/widget/TextView;)I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result p2

    if-le p2, p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->scrollTo(II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist-max-o scrollPageDown(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    add-int/2addr v0, p0

    add-int/2addr v0, p0

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    sub-int/2addr v0, p0

    invoke-static {p1, p2, v1, v0}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist-max-o scrollPageUp(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerHeight(Landroid/widget/TextView;)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p0

    if-ltz p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    invoke-virtual {p2, p0}, Landroid/text/Layout;->getLineTop(I)I

    move-result p0

    invoke-static {p1, p2, v0, p0}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist-max-o scrollRight(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getScrollBoundsRight(Landroid/widget/TextView;)I

    move-result p2

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getInnerWidth(Landroid/widget/TextView;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    if-ge v0, p2, :cond_0

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getCharacterWidth(Landroid/widget/TextView;)I

    move-result p0

    mul-int/2addr p0, p3

    add-int/2addr v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->scrollTo(II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist-max-o scrollTop(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    invoke-direct {p0, p1}, Landroid/text/method/BaseMovementMethod;->getTopLine(Landroid/widget/TextView;)I

    move-result p0

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result p0

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-static {p1, p2, p0, v0}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method protected greylist-max-o scrollUp(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .locals 2

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const/4 p2, 0x0

    if-ltz v0, :cond_1

    sub-int/2addr v0, p3

    const/4 p3, 0x1

    add-int/2addr v0, p3

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p2

    invoke-static {p1, p0, v0, p2}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    return p3

    :cond_1
    return p2
.end method

.method protected whitelist top(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected whitelist up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
