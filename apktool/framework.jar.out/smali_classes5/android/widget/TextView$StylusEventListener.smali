.class Landroid/widget/TextView$StylusEventListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private blacklist mEndCurPosition:I

.field private blacklist mIsSelectableTextView:Z

.field private blacklist mMaxX:F

.field private blacklist mPressed:Z

.field private blacklist mStartCurPosition:I

.field private blacklist mStartX:F

.field private blacklist mStartY:F

.field private blacklist mThisView:Landroid/widget/TextView;

.field private blacklist oldEndPos:I

.field private blacklist selectRange:[I

.field final synthetic blacklist this$0:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEndCurPosition(Landroid/widget/TextView$StylusEventListener;)I
    .locals 0

    iget p0, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartCurPosition(Landroid/widget/TextView$StylusEventListener;)I
    .locals 0

    iget p0, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEndCurPosition(Landroid/widget/TextView$StylusEventListener;I)V
    .locals 0

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStartCurPosition(Landroid/widget/TextView$StylusEventListener;I)V
    .locals 0

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    iput-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iput-object p2, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public whitelist onStylusButtonEvent(Landroid/view/MotionEvent;)V
    .locals 11

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_34

    iget-object v2, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->-$$Nest$fgetmEnableMultiSelection(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_a

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmIsFindTargetView()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v7

    if-eq v7, v5, :cond_3

    sget-boolean v7, Lcom/samsung/android/rune/ViewRune;->WIDGET_MULTIPLE_PEN_TEXT_SUPPORTED:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->clearMultiSelection()Z

    :cond_2
    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$sfputmTargetViewId(I)V

    :cond_3
    iget-object v7, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/widget/TextView;->-$$Nest$mcanTextMultiSelection(Landroid/widget/TextView;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/widget/TextView;->-$$Nest$sfputmCurTime(J)V

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastHoveredViewId()I

    move-result v7

    if-eq v7, v5, :cond_4

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v7

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastHoveredTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x64

    cmp-long v7, v7, v9

    if-gez v7, :cond_4

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastHoveredViewId()I

    move-result v7

    invoke-static {v7}, Landroid/widget/TextView;->-$$Nest$sfputmTargetViewId(I)V

    :cond_4
    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$sfputmLastHoveredViewId(I)V

    invoke-static {v6}, Landroid/widget/TextView;->-$$Nest$sfputmIsFindTargetView(Z)V

    :cond_5
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v7

    if-eq v7, v5, :cond_34

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    if-nez v5, :cond_6

    goto/16 :goto_8

    :cond_6
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v5

    iget-object v7, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getId()I

    move-result v7

    if-eq v5, v7, :cond_7

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v5

    iget-object v7, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    if-eq v5, v7, :cond_7

    iget-object p0, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    return-void

    :cond_7
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmMarquee(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetmMarquee(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_8

    :cond_8
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/EditText;

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->hideCursorControllers()V

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v7, v2

    float-to-int v8, v4

    invoke-static {v5, v7, v8, v1}, Landroid/widget/TextView;->-$$Nest$mcheckPosInView(Landroid/widget/TextView;III)Z

    move-result v5

    if-eqz v5, :cond_34

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->canSelectText()Z

    move-result v5

    if-nez v5, :cond_b

    goto/16 :goto_8

    :cond_9
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v7, v2

    float-to-int v8, v4

    invoke-static {v5}, Landroid/widget/TextView;->-$$Nest$fgetTOUCH_DELTA(Landroid/widget/TextView;)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v5, v7, v8, v9}, Landroid/widget/TextView;->-$$Nest$mcheckPosOnText(Landroid/widget/TextView;III)Z

    move-result v5

    if-nez v5, :cond_b

    goto/16 :goto_8

    :cond_a
    invoke-static {v1}, Landroid/widget/TextView;->-$$Nest$sfputmIsFindTargetView(Z)V

    iget-boolean v7, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz v7, :cond_34

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmTargetViewId()I

    move-result v7

    if-ne v7, v5, :cond_b

    goto/16 :goto_8

    :cond_b
    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto/16 :goto_8

    :cond_c
    const/4 v7, 0x0

    const-string v8, "TextView"

    if-eqz v0, :cond_27

    if-eq v0, v6, :cond_19

    if-eq v0, v3, :cond_10

    const/4 p1, 0x3

    if-eq v0, p1, :cond_d

    const/16 p1, 0xd6

    if-eq v0, p1, :cond_d

    goto/16 :goto_8

    :cond_d
    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, p1, Landroid/widget/TextView;->mIsTouchDown:Z

    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    iget-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez p1, :cond_f

    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    iget-object p0, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result p1

    if-lez p1, :cond_e

    move v1, v6

    :cond_e
    invoke-static {p0, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    return-void

    :cond_f
    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {p1, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    iget p0, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz p0, :cond_34

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, p0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_19

    sget-boolean p1, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz p1, :cond_34

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {p1, v0}, Landroid/widget/TextView;->-$$Nest$mgetScreenPointOfView(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-float p1, v4, p1

    iget-object v3, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v2, v2

    float-to-int v4, v4

    invoke-static {v3, v2, v4, v1}, Landroid/widget/TextView;->-$$Nest$mcheckPosInView(Landroid/widget/TextView;III)Z

    move-result v2

    invoke-static {v2}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    iget v2, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget v3, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_11

    iget v2, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    :cond_11
    iget-object v2, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, v0, p1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p1

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iget-boolean v0, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v0, :cond_13

    iget-object v2, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v1, v2, v1

    if-ge p1, v1, :cond_12

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto :goto_0

    :cond_12
    aget v1, v2, v6

    if-le p1, v1, :cond_13

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_13
    :goto_0
    iget p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ne p1, v1, :cond_14

    if-nez v0, :cond_34

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    return-void

    :cond_14
    iget p1, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    if-eq p1, v1, :cond_34

    if-ltz v1, :cond_34

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {p1, v6}, Landroid/widget/TextView;->-$$Nest$fputmHighlightPathBogus(Landroid/widget/TextView;Z)V

    iget-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez p1, :cond_17

    iget p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p1, v0, :cond_15

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    :cond_15
    iget p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p1, v0, :cond_16

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_16
    check-cast v5, Landroid/text/Spannable;

    iget p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v0, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v5, p1, v0}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    iget-object p0, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {p0, v6}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    return-void

    :cond_17
    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    :cond_18
    check-cast v5, Landroid/text/Spannable;

    iget p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget p0, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v5, p1, p0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void

    :cond_19
    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {p1, v0}, Landroid/widget/TextView;->-$$Nest$mgetScreenPointOfView(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-float/2addr v4, p1

    iget p1, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget v0, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1a

    iget p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    :cond_1a
    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {p1, v2, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p1

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iget-boolean v0, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v2, v0, v1

    if-ge p1, v2, :cond_1b

    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto :goto_1

    :cond_1b
    aget v0, v0, v6

    if-le p1, v0, :cond_1c

    iput v0, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_1c
    :goto_1
    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/widget/TextView;->-$$Nest$fgetmLayout(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget v0, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result p1

    iget-object v0, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    if-ne p1, v0, :cond_1d

    move p1, v6

    goto :goto_2

    :cond_1d
    move p1, v1

    :goto_2
    iget-boolean v0, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v0, :cond_1f

    if-eqz p1, :cond_1f

    iget p1, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget-object v0, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->-$$Nest$fgetTOUCH_DELTA(Landroid/widget/TextView;)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1f

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {v7}, Landroid/widget/TextView;->-$$Nest$sfputmShowPenSelectionRunnable(Ljava/lang/Runnable;)V

    :cond_1e
    new-instance p1, Landroid/widget/TextView$StylusEventListener$1;

    invoke-direct {p1, p0}, Landroid/widget/TextView$StylusEventListener$1;-><init>(Landroid/widget/TextView$StylusEventListener;)V

    invoke-static {p1}, Landroid/widget/TextView;->-$$Nest$sfputmShowPenSelectionRunnable(Ljava/lang/Runnable;)V

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, p1, Landroid/widget/TextView;->mIsTouchDown:Z

    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    return-void

    :cond_1f
    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    iget p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v0, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ne p1, v0, :cond_22

    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    iget-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez p1, :cond_21

    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    iget-object p0, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result p1

    if-lez p1, :cond_20

    move v1, v6

    :cond_20
    invoke-static {p0, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    return-void

    :cond_21
    iget-object p0, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {p0, v1}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    return-void

    :cond_22
    if-le p1, v0, :cond_23

    iput v0, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_23
    iget-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez p1, :cond_24

    move-object p1, v5

    check-cast p1, Landroid/text/Spannable;

    iget v0, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v2, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {p1, v0, v2}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/widget/TextView;->-$$Nest$mshowMultiSelectPopupWindow(Landroid/widget/TextView;)V

    :try_start_0
    new-instance p1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    iget-object v0, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;-><init>(Landroid/content/Context;)V

    iget v0, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v2, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-interface {v5, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->training(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p1, "** skip SemInfoExtractionManager Service by IllegalStateException **"

    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const-string p1, "Pen up with side button! : end text selection"

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->registerForTouchMonitorListener()V

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {p1, v6}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    goto :goto_4

    :cond_24
    iget p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz p1, :cond_26

    iget p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ltz p1, :cond_26

    sget-boolean p1, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz p1, :cond_26

    check-cast v5, Landroid/text/Spannable;

    iget p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v0, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v5, p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object p1

    iget-boolean p1, p1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz p1, :cond_25

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_25
    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object p1

    iput-boolean v1, p1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    :cond_26
    :goto_4
    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, p1, Landroid/widget/TextView;->mIsTouchDown:Z

    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_8

    :cond_27
    iget-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz p1, :cond_28

    goto/16 :goto_8

    :cond_28
    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/widget/TextView;->-$$Nest$mhideMultiSelectPopupWindow(Landroid/widget/TextView;)V

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result p1

    if-nez p1, :cond_2a

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    instance-of p1, p1, Landroid/widget/EditText;

    if-eqz p1, :cond_29

    goto :goto_5

    :cond_29
    move p1, v1

    goto :goto_6

    :cond_2a
    :goto_5
    move p1, v6

    :goto_6
    iput-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {p1, v0}, Landroid/widget/TextView;->-$$Nest$mgetScreenPointOfView(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-float/2addr v4, p1

    iput v4, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget v0, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    invoke-virtual {p1, v0, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p1

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz p1, :cond_31

    sget-boolean p1, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz p1, :cond_30

    iget-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez p1, :cond_30

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v2

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmLastPenDownTime()J

    move-result-wide v9

    sub-long/2addr v2, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p1

    int-to-long v9, p1

    cmp-long p1, v2, v9

    if-gez p1, :cond_2c

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_2b

    iget-object p0, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmShowPenSelectionRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {v7}, Landroid/widget/TextView;->-$$Nest$sfputmShowPenSelectionRunnable(Ljava/lang/Runnable;)V

    :cond_2b
    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/widget/TextView;->-$$Nest$sfputmLastPenDownTime(J)V

    return-void

    :cond_2c
    invoke-static {v6}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result p1

    if-nez p1, :cond_2d

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aput v1, p1, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    aput v0, p1, v6

    :cond_2d
    iget p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget-object v0, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v2, v0, v1

    if-ge p1, v2, :cond_2e

    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    goto :goto_7

    :cond_2e
    aget v0, v0, v6

    if-le p1, v0, :cond_2f

    iput v0, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    :cond_2f
    :goto_7
    invoke-static {}, Landroid/widget/TextView;->-$$Nest$sfgetmCurTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/widget/TextView;->-$$Nest$sfputmLastPenDownTime(J)V

    const-string p1, "Pen down with side button! : start text selection"

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    iput-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    iget-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v6, p1, Landroid/widget/TextView;->mIsTouchDown:Z

    :cond_31
    sget-boolean p1, Lcom/samsung/android/rune/ViewRune;->WIDGET_MULTIPLE_PEN_TEXT_SUPPORTED:Z

    if-eqz p1, :cond_33

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result p1

    if-lez p1, :cond_33

    invoke-static {v5}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {v5}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iget p0, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-lt p0, p1, :cond_32

    if-le p0, v0, :cond_33

    :cond_32
    invoke-static {v5, p1, v0}, Landroid/text/MultiSelection;->addMultiSelection(Landroid/text/Spannable;II)V

    :cond_33
    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    :cond_34
    :goto_8
    return-void
.end method
