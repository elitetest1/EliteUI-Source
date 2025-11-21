.class public Landroid/inputmethodservice/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/KeyboardView$SwipeTracker;,
        Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DEBOUNCE_TIME:I = 0x46

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DELAY_AFTER_PREVIEW:I = 0x46

.field private static final greylist-max-o DELAY_BEFORE_PREVIEW:I = 0x0

.field private static final greylist-max-o KEY_DELETE:[I

.field private static final greylist-max-o LONGPRESS_TIMEOUT:I

.field private static final greylist-max-o LONG_PRESSABLE_STATE_SET:[I

.field private static greylist-max-o MAX_NEARBY_KEYS:I = 0x0

.field private static final greylist-max-o MSG_LONGPRESS:I = 0x4

.field private static final greylist-max-o MSG_REMOVE_PREVIEW:I = 0x2

.field private static final greylist-max-o MSG_REPEAT:I = 0x3

.field private static final greylist-max-o MSG_SHOW_PREVIEW:I = 0x1

.field private static final greylist-max-o MULTITAP_INTERVAL:I = 0x320

.field private static final greylist-max-o NOT_A_KEY:I = -0x1

.field private static final greylist-max-o REPEAT_INTERVAL:I = 0x32

.field private static final greylist-max-o REPEAT_START_DELAY:I = 0x190


# instance fields
.field private greylist-max-o mAbortKey:Z

.field private greylist-max-o mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private greylist-max-o mAudioManager:Landroid/media/AudioManager;

.field private greylist-max-o mBackgroundDimAmount:F

.field private greylist-max-o mBuffer:Landroid/graphics/Bitmap;

.field private greylist-max-o mCanvas:Landroid/graphics/Canvas;

.field private greylist-max-o mClipRegion:Landroid/graphics/Rect;

.field private final greylist-max-o mCoordinates:[I

.field private greylist-max-o mCurrentKey:I

.field private greylist-max-o mCurrentKeyIndex:I

.field private greylist-max-o mCurrentKeyTime:J

.field private greylist-max-o mDirtyRect:Landroid/graphics/Rect;

.field private greylist-max-o mDisambiguateSwipe:Z

.field private greylist-max-o mDistances:[I

.field private greylist-max-o mDownKey:I

.field private greylist-max-o mDownTime:J

.field private greylist-max-o mDrawPending:Z

.field private greylist-max-o mGestureDetector:Landroid/view/GestureDetector;

.field greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mHeadsetRequiredToHearPasswordsAnnounced:Z

.field private greylist-max-o mInMultiTap:Z

.field private greylist-max-o mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

.field private greylist mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mKeyIndices:[I

.field private greylist-max-o mKeyTextColor:I

.field private greylist-max-o mKeyTextSize:I

.field private greylist-max-o mKeyboard:Landroid/inputmethodservice/Keyboard;

.field private greylist-max-o mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private greylist-max-o mKeyboardChanged:Z

.field private greylist-max-o mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private greylist mLabelTextSize:I

.field private greylist-max-o mLastCodeX:I

.field private greylist-max-o mLastCodeY:I

.field private greylist-max-o mLastKey:I

.field private greylist-max-o mLastKeyTime:J

.field private greylist-max-o mLastMoveTime:J

.field private greylist-max-o mLastSentIndex:I

.field private greylist-max-o mLastTapTime:J

.field private greylist-max-o mLastX:I

.field private greylist-max-o mLastY:I

.field private greylist-max-o mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

.field private greylist-max-o mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mMiniKeyboardContainer:Landroid/view/View;

.field private greylist-max-o mMiniKeyboardOffsetX:I

.field private greylist-max-o mMiniKeyboardOffsetY:I

.field private greylist-max-o mMiniKeyboardOnScreen:Z

.field private greylist-max-o mOldPointerCount:I

.field private greylist-max-o mOldPointerX:F

.field private greylist-max-o mOldPointerY:F

.field private greylist-max-o mPadding:Landroid/graphics/Rect;

.field private greylist-max-o mPaint:Landroid/graphics/Paint;

.field private greylist-max-o mPopupKeyboard:Landroid/widget/PopupWindow;

.field private greylist-max-o mPopupLayout:I

.field private greylist-max-o mPopupParent:Landroid/view/View;

.field private greylist-max-o mPopupPreviewX:I

.field private greylist-max-o mPopupPreviewY:I

.field private greylist-max-o mPopupX:I

.field private greylist-max-o mPopupY:I

.field private greylist-max-o mPossiblePoly:Z

.field private greylist-max-o mPreviewCentered:Z

.field private greylist-max-o mPreviewHeight:I

.field private greylist-max-o mPreviewLabel:Ljava/lang/StringBuilder;

.field private greylist-max-o mPreviewOffset:I

.field private greylist-max-o mPreviewPopup:Landroid/widget/PopupWindow;

.field private greylist mPreviewText:Landroid/widget/TextView;

.field private greylist-max-o mPreviewTextSizeLarge:I

.field private greylist-max-o mProximityCorrectOn:Z

.field private greylist-max-o mProximityThreshold:I

.field private greylist-max-o mRepeatKeyIndex:I

.field private greylist-max-o mShadowColor:I

.field private greylist-max-o mShadowRadius:F

.field private greylist-max-o mShowPreview:Z

.field private greylist-max-o mShowTouchPoints:Z

.field private greylist-max-o mStartX:I

.field private greylist-max-o mStartY:I

.field private greylist-max-o mSwipeThreshold:I

.field private greylist-max-o mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

.field private greylist-max-o mTapCount:I

.field private greylist-max-o mVerticalCorrection:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisambiguateSwipe(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDownKey(Landroid/inputmethodservice/KeyboardView;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyboardActionListener(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPossiblePoly(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviewText(Landroid/inputmethodservice/KeyboardView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartX(Landroid/inputmethodservice/KeyboardView;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartY(Landroid/inputmethodservice/KeyboardView;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSwipeThreshold(Landroid/inputmethodservice/KeyboardView;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSwipeTracker(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdetectAndSendKey(Landroid/inputmethodservice/KeyboardView;IIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdismissPopupKeyboard(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mopenPopupIfRequired(Landroid/inputmethodservice/KeyboardView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrepeatKey(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mshowKey(Landroid/inputmethodservice/KeyboardView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, -0x5

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    const v0, 0x101023c

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    const/16 v0, 0xc

    sput v0, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x112007d

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    iput-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mShowTouchPoints:Z

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    const/16 v4, 0xc

    new-array v4, v4, [I

    iput-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    new-instance v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>(Landroid/inputmethodservice/KeyboardView-IA;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    sget v0, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v0, Landroid/R$styleable;->KeyboardView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p4

    move v0, v2

    move v5, v0

    :goto_0
    if-ge v0, p4, :cond_0

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    goto :goto_1

    :pswitch_2
    const/16 v7, 0x50

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    goto :goto_1

    :pswitch_4
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    goto :goto_1

    :pswitch_5
    const/high16 v7, -0x1000000

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    goto :goto_1

    :pswitch_6
    const/16 v7, 0xe

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    goto :goto_1

    :pswitch_7
    const/16 v7, 0x12

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    goto :goto_1

    :pswitch_8
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_9
    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    goto :goto_1

    :pswitch_a
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    sget-object p4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p2, p4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-virtual {p2, v1, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p4

    iput p4, p0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Landroid/widget/PopupWindow;

    invoke-direct {p2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_1

    invoke-virtual {p3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object p3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_1
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    :goto_2
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    new-instance p2, Landroid/widget/PopupWindow;

    invoke-direct {p2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    int-to-float p3, v2

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x43fa0000    # 500.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1110284

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p2

    iput-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private greylist-max-o checkMultiTap(JI)V
    .locals 8

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, p3

    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    const-wide/16 v3, 0x320

    const/4 v5, 0x1

    if-le v2, v5, :cond_2

    iput-boolean v5, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    iget-wide v6, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v6, v3

    cmp-long p1, p1, v6

    if-gez p1, :cond_1

    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-ne p3, p1, :cond_1

    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    add-int/2addr p1, v5

    iget-object p2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    return-void

    :cond_1
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    return-void

    :cond_2
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v0, v3

    cmp-long p1, p1, v0

    if-gtz p1, :cond_4

    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-eq p3, p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    return-void
.end method

.method private greylist-max-o computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V
    .locals 6

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    iget v4, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v5, v3, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v3, v3, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ltz v2, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    int-to-float p1, v2

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    mul-int/2addr p1, p1

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    :cond_4
    :goto_1
    return-void
.end method

.method private greylist-max-o detectAndSendKey(IIIJ)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v2, v1

    if-ge p1, v2, :cond_3

    aget-object v1, v1, p1

    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    iget-object p3, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {p2, p3}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p2, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_1

    :cond_0
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sget v4, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v4, v4, [I

    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([II)V

    invoke-direct {p0, p2, p3, v4}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    iget-boolean p2, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz p2, :cond_2

    iget p2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 p3, -0x5

    sget-object v0, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    invoke-interface {p2, p3, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    goto :goto_0

    :cond_1
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    :goto_0
    iget-object p2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget p3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    aget v2, p2, p3

    :cond_2
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p2, v2, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p2, v2}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    :goto_1
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    iput-wide p4, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    :cond_3
    return-void
.end method

.method private greylist-max-o dismissPopupKeyboard()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    :cond_0
    return-void
.end method

.method private greylist-max-o getKeyIndices(II[I)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    const v7, 0x7fffffff

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v6, v1, v2}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    move-result-object v6

    array-length v7, v6

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    :goto_0
    if-ge v10, v7, :cond_7

    aget v13, v6, v10

    aget-object v13, v4, v13

    invoke-virtual {v13, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v14

    if-eqz v14, :cond_0

    aget v11, v6, v10

    :cond_0
    iget-boolean v15, v0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    if-eqz v15, :cond_1

    invoke-virtual {v13, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v15

    const/16 v16, 0x0

    iget v9, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    if-lt v15, v9, :cond_2

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    move/from16 v15, v16

    :goto_1
    if-eqz v14, :cond_6

    :cond_2
    iget-object v9, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v9, v9, v16

    const/16 v14, 0x20

    if-le v9, v14, :cond_6

    iget-object v9, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v9, v9

    if-ge v15, v5, :cond_3

    aget v12, v6, v10

    move v5, v15

    :cond_3
    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v14, v16

    :goto_2
    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    array-length v1, v8

    if-ge v14, v1, :cond_6

    aget v1, v8, v14

    if-le v1, v15, :cond_5

    add-int v1, v14, v9

    array-length v2, v8

    sub-int/2addr v2, v14

    sub-int/2addr v2, v9

    invoke-static {v8, v14, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v3

    sub-int/2addr v2, v14

    sub-int/2addr v2, v9

    invoke-static {v3, v14, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v1, v16

    :goto_3
    if-ge v1, v9, :cond_6

    add-int v2, v14, v1

    iget-object v8, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v8, v8, v1

    aput v8, v3, v2

    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    aput v15, v8, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_2

    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_0

    :cond_7
    const/4 v1, -0x1

    if-ne v11, v1, :cond_8

    return v12

    :cond_8
    return v11
.end method

.method private greylist-max-o getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 3

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    aget p1, p1, v1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o initGestureDetector()V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/KeyboardView$2;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/KeyboardView$2;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    :cond_0
    return-void
.end method

.method private greylist-max-o onBufferDraw()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v4, :cond_3

    :cond_0
    if-eqz v1, :cond_1

    iget-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    if-eq v1, v4, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    :cond_2
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    iput-boolean v3, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    :cond_3
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v9, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    iget v8, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    iget-object v10, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    iget v12, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v11, :cond_5

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget v12, v11, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int/2addr v12, v7

    sub-int/2addr v12, v2

    iget v13, v5, Landroid/graphics/Rect;->left:I

    if-gt v12, v13, :cond_5

    iget v12, v11, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int/2addr v12, v8

    sub-int/2addr v12, v2

    iget v13, v5, Landroid/graphics/Rect;->top:I

    if-gt v12, v13, :cond_5

    iget v12, v11, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v13, v11, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v12, v13

    add-int/2addr v12, v7

    add-int/2addr v12, v2

    iget v13, v5, Landroid/graphics/Rect;->right:I

    if-lt v12, v13, :cond_5

    iget v12, v11, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v13, v11, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v12, v13

    add-int/2addr v12, v8

    add-int/2addr v12, v2

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-lt v12, v5, :cond_5

    move v5, v2

    goto :goto_0

    :cond_5
    move v5, v3

    :goto_0
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    array-length v12, v10

    move v13, v3

    :goto_1
    if-ge v13, v12, :cond_d

    aget-object v15, v10, v13

    if-eqz v5, :cond_6

    if-eq v11, v15, :cond_6

    move-object/from16 v16, v1

    move/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v15}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v14, v15, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v14, :cond_7

    const/4 v14, 0x0

    goto :goto_2

    :cond_7
    iget-object v14, v15, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {v0, v14}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v17, v5

    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-ne v3, v5, :cond_8

    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v2, :cond_9

    :cond_8
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->height:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_9
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int/2addr v2, v7

    int-to-float v2, v2

    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x2

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_a

    iget-object v3, v15, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v3, v3

    if-ge v3, v2, :cond_a

    iget v3, v0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    int-to-float v3, v3

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3

    :cond_a
    iget v3, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v3, v3

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_3
    iget v3, v0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    move/from16 v16, v2

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    const/4 v5, 0x0

    invoke-virtual {v9, v3, v5, v5, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v3, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v5, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v16

    sub-float v5, v5, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v5, v5, v16

    add-float/2addr v3, v5

    iget v5, v6, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {v4, v14, v2, v3, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v2, v2, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_4

    :cond_b
    move/from16 v16, v2

    iget-object v2, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c

    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v3, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget-object v3, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v5, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    iget-object v5, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    iget v5, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    int-to-float v5, v2

    int-to-float v14, v3

    invoke-virtual {v4, v5, v14}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v14, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    move-object/from16 v16, v1

    iget-object v1, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move-object/from16 v18, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v14, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v15, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v2

    int-to-float v1, v1

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5

    :cond_c
    :goto_4
    move-object/from16 v16, v1

    move-object/from16 v18, v6

    :goto_5
    iget v1, v15, Landroid/inputmethodservice/Keyboard$Key;->x:I

    neg-int v1, v1

    sub-int/2addr v1, v7

    int-to-float v1, v1

    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->y:I

    neg-int v2, v2

    sub-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-boolean v1, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v1, :cond_e

    iget v1, v0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v1

    int-to-float v8, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_e
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method private greylist-max-o onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 15

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    neg-int v5, v4

    if-lt v3, v5, :cond_0

    add-int/2addr v3, v4

    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {p0, v2, v3, v7}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    move-result v7

    move/from16 v8, p2

    iput-boolean v8, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    if-nez v4, :cond_1

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v8}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->clear()V

    :cond_1
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v8, v1}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v8, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eqz v8, :cond_2

    if-eqz v4, :cond_2

    if-eq v4, v9, :cond_2

    return v10

    :cond_2
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    const/4 v11, 0x4

    const/4 v12, -0x1

    if-eqz v8, :cond_3

    invoke-direct {p0, v12}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    return v10

    :cond_3
    iget-boolean v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v8, :cond_4

    if-eq v4, v9, :cond_4

    return v10

    :cond_4
    const-wide/16 v13, 0x0

    if-eqz v4, :cond_f

    if-eq v4, v10, :cond_b

    const/4 v8, 0x2

    if-eq v4, v8, :cond_6

    if-eq v4, v9, :cond_5

    :goto_0
    move/from16 p2, v10

    goto/16 :goto_5

    :cond_5
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    iput-boolean v10, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    invoke-direct {p0, v12}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    goto :goto_0

    :cond_6
    if-eq v7, v12, :cond_9

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v4, v12, :cond_7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    sub-long v8, v5, v8

    iput-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_1

    :cond_7
    if-ne v7, v4, :cond_8

    iget-wide v7, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v11, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v11, v5, v11

    add-long/2addr v7, v11

    iput-wide v7, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    move/from16 p2, v10

    goto :goto_3

    :cond_8
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    if-ne v4, v12, :cond_9

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    iget-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v8, v5

    move/from16 p2, v10

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput-wide v13, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_2

    :cond_9
    :goto_1
    move/from16 p2, v10

    :goto_2
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Landroid/os/Handler;->removeMessages(I)V

    if-eq v7, v12, :cond_a

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v7, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v7, v7

    invoke-virtual {v4, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_a
    :goto_3
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-direct {p0, v1}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    iput-wide v5, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    goto/16 :goto_5

    :cond_b
    move/from16 p2, v10

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v7, v1, :cond_c

    iget-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v10, v5, v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_4

    :cond_c
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    iget-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v8, v5

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput-wide v13, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    :goto_4
    iget-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    cmp-long v1, v8, v10

    if-gez v1, :cond_d

    const-wide/16 v10, 0x46

    cmp-long v1, v8, v10

    if-gez v1, :cond_d

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    if-eq v1, v12, :cond_d

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    :cond_d
    invoke-direct {p0, v12}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    invoke-static {v1, v12}, Ljava/util/Arrays;->fill([II)V

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    if-ne v1, v12, :cond_e

    iget-boolean v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-nez v1, :cond_e

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    move-object v0, p0

    move-wide v4, v5

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    :cond_e
    invoke-virtual {p0, v7}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    iput v12, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    goto :goto_5

    :cond_f
    move/from16 p2, v10

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    iput-wide v13, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    iput-wide v13, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iput v12, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    iput-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    invoke-direct {p0, v5, v6, v7}, Landroid/inputmethodservice/KeyboardView;->checkMultiTap(JI)V

    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    if-eq v7, v12, :cond_10

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v8, v6, v8

    :cond_10
    invoke-interface {v5, v8}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v5, :cond_11

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v5, v6, v5

    iget-boolean v5, v5, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-eqz v5, :cond_11

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v5, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x190

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    iget-boolean v5, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-eqz v5, :cond_11

    iput v12, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    goto :goto_5

    :cond_11
    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-eq v5, v12, :cond_12

    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v5, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v5, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v5, v5

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_12
    invoke-direct {p0, v7}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    :goto_5
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    return p2
.end method

.method private greylist openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 3

    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz p1, :cond_3

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v2, v1

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object p1, v1, p1

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    :cond_2
    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private greylist-max-o removeMessages()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private greylist repeatKey()Z
    .locals 7

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    aget-object v0, v0, v1

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget-wide v5, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    const/4 p0, 0x1

    return p0
.end method

.method private greylist-max-o resetMultiTap()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    return-void
.end method

.method private greylist-max-o sendAccessibilityEventForUnicodeCharacter(II)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v0, 0x1040718

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v0, 0x1040717

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_2
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v0, 0x1040713

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_3
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v0, 0x1040715

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_4
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v0, 0x1040714

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_5
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v0, 0x1040712

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v0, 0x1040716

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist showKey(I)V
    .locals 11

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-ltz p1, :cond_a

    array-length v2, v1

    if-lt p1, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    aget-object p1, v1, p1

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget-object v6, p1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    iget-object v6, p1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v6, p1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v4, v4, v4, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v1, v1

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_4

    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    iget-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    if-nez v6, :cond_5

    iget v6, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v6, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    sub-int/2addr v6, v4

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    goto :goto_2

    :cond_5
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, v2

    rsub-int v6, v6, 0xa0

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    neg-int v6, v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    :goto_2
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v6, v5

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    add-int/2addr v7, v8

    aput v7, v6, v5

    aget v7, v6, v3

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    add-int/2addr v7, v8

    aput v7, v6, v3

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget v7, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-eqz v7, :cond_6

    sget-object v7, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    goto :goto_3

    :cond_6
    sget-object v7, Landroid/inputmethodservice/KeyboardView;->EMPTY_STATE_SET:[I

    :goto_3
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v8, v7, v5

    add-int/2addr v6, v8

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    aget v8, v7, v3

    add-int/2addr v6, v8

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {p0, v7}, Landroid/inputmethodservice/KeyboardView;->getLocationOnScreen([I)V

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v3, v7, v3

    add-int/2addr v6, v3

    if-gez v6, :cond_8

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v6, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v6

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v6

    div-int/2addr v6, v2

    const-wide/high16 v7, 0x4004000000000000L    # 2.5

    if-gt v3, v6, :cond_7

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget p1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v9, p1

    mul-double/2addr v9, v7

    double-to-int p1, v9

    add-int/2addr v2, p1

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    goto :goto_4

    :cond_7
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget p1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v9, p1

    mul-double/2addr v9, v7

    double-to-int p1, v9

    sub-int/2addr v2, p1

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    :goto_4
    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    add-int/2addr p1, v4

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    :cond_8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, p1, v2, v1, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_5

    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, p1, v5, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_5
    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    :goto_6
    return-void
.end method

.method private greylist-max-o showPreview(I)V
    .locals 8

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v0, p1, :cond_2

    if-eq v0, v5, :cond_1

    array-length v6, v2

    if-le v6, v0, :cond_1

    aget-object v6, v2, v0

    if-ne p1, v5, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    invoke-virtual {v6, v7}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    iget-object v6, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v6, v6, v4

    const/16 v7, 0x100

    invoke-direct {p0, v7, v6}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    const/high16 v7, 0x10000

    invoke-direct {p0, v7, v6}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    :cond_1
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v6, v5, :cond_2

    array-length v7, v2

    if-le v7, v6, :cond_2

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v6, 0x80

    invoke-direct {p0, v6, v2}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    const v6, 0x8000

    invoke-direct {p0, v6, v2}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    :cond_2
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v2, :cond_5

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p1, v5, :cond_3

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v6, 0x46

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    if-eq p1, v5, :cond_5

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    return-void

    :cond_4
    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    return-void
.end method


# virtual methods
.method public whitelist closing()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public whitelist getKeyboard()Landroid/inputmethodservice/Keyboard;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    return-object p0
.end method

.method protected whitelist getOnKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object p0
.end method

.method public whitelist handleBack()Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist invalidateAllKeys()V
    .locals 4

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidate()V

    return-void
.end method

.method public whitelist invalidateKey(I)V
    .locals 6

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    array-length v1, v0

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    aget-object p1, v0, p1

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v5, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget p1, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v3, p1

    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/inputmethodservice/KeyboardView;->invalidate(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist isPreviewEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    return p0
.end method

.method public whitelist isProximityCorrectionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    return p0
.end method

.method public whitelist isShifted()Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/inputmethodservice/KeyboardView$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/KeyboardView$1;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->closing()V

    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    :cond_1
    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :goto_0
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method protected whitelist onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 7

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x1020026

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x1020027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    new-instance v1, Landroid/inputmethodservice/KeyboardView$3;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/KeyboardView$3;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    const/4 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    :goto_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/KeyboardView;->setPopupParent(Landroid/view/View;)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    :goto_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget p1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v0, p1

    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v0, v0, v6

    add-int/2addr p1, v0

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    if-gez p1, :cond_3

    move v3, v6

    goto :goto_2

    :cond_3
    move v3, p1

    :goto_2
    invoke-virtual {v1, v3, v0}, Landroid/inputmethodservice/KeyboardView;->setPopupOffset(II)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v6, p1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    return v2

    :cond_4
    return v6
.end method

.method public whitelist onMeasure(II)V
    .locals 2

    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez p2, :cond_0

    iget p1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    iget p2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result p2

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr p2, v0

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int/2addr p2, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    add-int/lit8 v1, p2, 0xa

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    :cond_1
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result p1

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr p1, v0

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p2, p1}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    return-void
.end method

.method public whitelist onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Landroid/inputmethodservice/Keyboard;->resize(II)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v0, v4, :cond_2

    if-ne v0, v11, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2, v10}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    if-ne v1, v11, :cond_0

    invoke-direct {p0, p1, v11}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result p1

    move v11, p1

    goto :goto_0

    :cond_0
    move v11, v3

    goto :goto_0

    :cond_1
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    const/4 v6, 0x1

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-direct {p0, p1, v11}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_2
    if-ne v0, v11, :cond_3

    invoke-direct {p0, p1, v10}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    :cond_3
    :goto_0
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    return v11
.end method

.method public whitelist setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->requestLayout()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V

    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    return-void
.end method

.method public whitelist setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-void
.end method

.method public whitelist setPopupOffset(II)V
    .locals 0

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public whitelist setPopupParent(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    return-void
.end method

.method public whitelist setPreviewEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    return-void
.end method

.method public whitelist setProximityCorrectionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    return-void
.end method

.method public whitelist setShifted(Z)Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist setVerticalCorrection(I)V
    .locals 0

    return-void
.end method

.method protected whitelist swipeDown()V
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeDown()V

    return-void
.end method

.method protected whitelist swipeLeft()V
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    return-void
.end method

.method protected whitelist swipeRight()V
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeRight()V

    return-void
.end method

.method protected whitelist swipeUp()V
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeUp()V

    return-void
.end method
