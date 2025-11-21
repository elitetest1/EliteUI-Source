.class public Landroid/inputmethodservice/navigationbar/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"

# interfaces
.implements Landroid/inputmethodservice/navigationbar/ButtonInterface;


# static fields
.field public static final blacklist QUICKSTEP_TOUCH_SLOP_RATIO:F = 3.0f

.field private static final blacklist TAG:Ljava/lang/String; = "KeyButtonView"


# instance fields
.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private final blacklist mCheckLongPress:Ljava/lang/Runnable;

.field private blacklist mCode:I

.field private blacklist mDarkIntensity:F

.field private blacklist mDownTime:J

.field private blacklist mGestureAborted:Z

.field private blacklist mHasOvalBg:Z

.field private blacklist mLongClicked:Z

.field private blacklist mOnClickListener:Landroid/view/View$OnClickListener;

.field private final blacklist mOvalBgPaint:Landroid/graphics/Paint;

.field private final blacklist mPlaySounds:Z

.field private final blacklist mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

.field private blacklist mTouchDownX:I

.field private blacklist mTouchDownY:I

.field private blacklist mTracking:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmLongClicked(Landroid/inputmethodservice/navigationbar/KeyButtonView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonView;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getId()I

    move-result v0

    const v1, 0x10203a4

    if-eq v0, v1, :cond_0

    iput p2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mPlaySounds:Z

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setClickable(Z)V

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    const v1, 0x105023c

    invoke-direct {v0, p1, p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setWillNotDraw(Z)V

    invoke-virtual {p0, p2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->forceHasOverlappingRendering(Z)V

    return-void
.end method

.method private blacklist getAccessibilityLongClickActionLabel()Ljava/lang/CharSequence;
    .locals 2

    invoke-static {}, Landroid/view/inputmethod/Flags;->imeSwitcherRevamp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getId()I

    move-result v0

    const v1, 0x10203aa

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x10406dc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getQuickStepTouchSlopPx(Landroid/content/Context;)F
    .locals 1

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method private blacklist sendEvent(II)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    return-void
.end method

.method private blacklist sendEvent(IIJ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/inputmethodservice/InputMethodService;

    if-eqz v2, :cond_6

    and-int/lit16 v2, v1, 0x80

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_0

    move v8, v14

    goto :goto_0

    :cond_0
    move v8, v15

    :goto_0
    new-instance v1, Landroid/view/KeyEvent;

    iget-wide v2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    iget v7, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    or-int/lit8 v12, p2, 0x42

    const/16 v13, 0x101

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move/from16 v6, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDisplay()Landroid/view/Display;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eq v2, v3, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/KeyEvent;->setDisplayId(I)V

    :cond_2
    iget-object v2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/inputmethodservice/InputMethodService;

    if-eqz v6, :cond_4

    if-eq v6, v14, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v15

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    move v14, v15

    :goto_2
    iput-boolean v14, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    move v15, v3

    :goto_3
    if-nez v15, :cond_6

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_6
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v4, v0

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v4

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-super {p0, v1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public whitelist isClickable()Z
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x20

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getAccessibilityLongClickActionLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mGestureAborted:Z

    :cond_0
    iget-boolean v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mGestureAborted:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    return v1

    :cond_1
    const/4 v2, 0x1

    if-eqz v0, :cond_d

    const/16 v3, 0x20

    if-eq v0, v2, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    iget p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz p1, :cond_3

    invoke-direct {p0, v2, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    :cond_3
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getQuickStepTouchSlopPx(Landroid/content/Context;)F

    move-result v3

    iget v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownX:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_5

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownY:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_f

    :cond_5
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    if-nez p1, :cond_7

    move p1, v2

    goto :goto_0

    :cond_7
    move p1, v1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x96

    cmp-long v0, v4, v6

    if-lez v0, :cond_8

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    if-nez v0, :cond_8

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->performHapticFeedback(I)Z

    :cond_8
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v0, :cond_b

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz p1, :cond_9

    const/16 p1, 0x200

    goto :goto_1

    :cond_9
    move p1, v1

    :goto_1
    invoke-direct {p0, v2, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    goto :goto_2

    :cond_a
    invoke-direct {p0, v2, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    goto :goto_2

    :cond_b
    if-eqz p1, :cond_c

    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_c

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    :cond_c
    :goto_2
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownY:I

    iget p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz p1, :cond_e

    iget-wide v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    invoke-direct {p0, v1, v1, v3, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    goto :goto_3

    :cond_e
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->performHapticFeedback(I)Z

    :goto_3
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->playSoundEffect(I)V

    invoke-static {}, Landroid/view/inputmethod/Flags;->imeSwitcherRevamp()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    :goto_4
    return v2
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->jumpDrawablesToCurrentState()V

    :cond_0
    return-void
.end method

.method public blacklist performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4

    const/16 v0, 0x10

    const/16 v1, 0x200

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-direct {p0, v3, v3, p1, p2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    iget-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {p0, v2, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    iput-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->playSoundEffect(I)V

    return v2

    :cond_1
    const/16 v0, 0x20

    if-ne p1, v0, :cond_3

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v0, :cond_3

    const/16 p1, 0x80

    invoke-direct {p0, v3, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    iget-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-direct {p0, v2, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    iput-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    return v2

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public whitelist playSoundEffect(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mPlaySounds:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void
.end method

.method public blacklist setCode(I)V
    .locals 0

    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    return-void
.end method

.method public blacklist setDarkIntensity(F)V
    .locals 1

    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDarkIntensity:F

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDarkIntensity(F)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->invalidate()V

    :cond_0
    iget-object p0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setDarkIntensity(F)V

    return-void
.end method

.method public blacklist setDelayTouchFeedback(Z)V
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setDelayTouchFeedback(Z)V

    return-void
.end method

.method public whitelist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDarkIntensity:F

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDarkIntensity(F)V

    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->hasOvalBg()Z

    move-result v0

    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getDrawableBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget-object p0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->hasOvalBg()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->OVAL:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    goto :goto_0

    :cond_2
    sget-object p1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setType(Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;)V

    return-void
.end method

.method public whitelist setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
