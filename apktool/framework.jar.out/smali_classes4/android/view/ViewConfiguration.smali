.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewConfiguration$ResourceCache;
    }
.end annotation


# static fields
.field private static final greylist-max-o A11Y_SHORTCUT_KEY_TIMEOUT:I = 0xbb8

.field private static final greylist-max-o A11Y_SHORTCUT_KEY_TIMEOUT_AFTER_CONFIRMATION:I = 0x3e8

.field private static final greylist-max-o ACTION_MODE_HIDE_DURATION_DEFAULT:J = 0x7d0L

.field private static final blacklist AMBIGUOUS_GESTURE_MULTIPLIER:F = 2.0f

.field private static final blacklist BIT_COUNT_DENSITY:I = 0xa

.field private static final blacklist BIT_COUNT_WIDTH_HEIGHT:I = 0xb

.field private static final blacklist DEFAULT_KEY_REPEAT_DELAY_MS:I = 0x32

.field private static final blacklist DEFAULT_KEY_REPEAT_TIMEOUT_MS:I = 0x190

.field public static final greylist-max-o DEFAULT_LONG_PRESS_TIMEOUT:I = 0x190

.field private static final greylist-max-o DEFAULT_MULTI_PRESS_TIMEOUT:I = 0x12c

.field private static final greylist-max-o DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final greylist-max-o DOUBLE_TAP_SLOP:I = 0x64

.field private static final greylist-max-o DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final greylist-max-o DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final greylist-max-o EDGE_SLOP:I = 0xc

.field private static final greylist-max-o FADING_EDGE_LENGTH:I = 0xc

.field private static final greylist-max-o GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final blacklist HANDWRITING_GESTURE_LINE_MARGIN:I = 0x10

.field private static final blacklist HANDWRITING_SLOP:I = 0x2

.field private static final greylist-max-o HAS_PERMANENT_MENU_KEY_AUTODETECT:I = 0x0

.field private static final greylist-max-o HAS_PERMANENT_MENU_KEY_FALSE:I = 0x2

.field private static final greylist-max-o HAS_PERMANENT_MENU_KEY_TRUE:I = 0x1

.field private static final greylist-max-o HORIZONTAL_SCROLL_FACTOR:F = 64.0f

.field private static final greylist-max-o HOVER_TAP_SLOP:I = 0x14

.field private static final greylist-max-o HOVER_TAP_TIMEOUT:I = 0x96

.field private static final greylist-max-o HOVER_TOOLTIP_HIDE_SHORT_TIMEOUT:I = 0xbb8

.field private static final greylist-max-o HOVER_TOOLTIP_HIDE_TIMEOUT:I = 0x3a98

.field private static final greylist-max-o HOVER_TOOLTIP_SHOW_TIMEOUT:I = 0x1f4

.field private static final greylist-max-o JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final greylist-max-o LONG_PRESS_TOOLTIP_HIDE_TIMEOUT:I = 0x5dc

.field private static final greylist-max-o MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final greylist-max-o MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final greylist-max-o MIN_SCROLLBAR_TOUCH_TARGET:I = 0x30

.field private static final blacklist NO_FLING_MAX_VELOCITY:I = -0x80000000

.field private static final blacklist NO_FLING_MIN_VELOCITY:I = 0x7fffffff

.field public static final blacklist NO_HAPTIC_SCROLL_TICK_INTERVAL:I = 0x7fffffff

.field private static final greylist-max-o OVERFLING_DISTANCE:I = 0x6

.field private static final greylist-max-o OVERSCROLL_DISTANCE:I = 0x0

.field private static final greylist-max-o PAGING_TOUCH_SLOP:I = 0x10

.field private static final greylist-max-o PRESSED_STATE_DURATION:I = 0x40

.field private static final blacklist SCREENSHOT_CHORD_KEY_TIMEOUT:I = 0x0

.field private static final greylist-max-o SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final greylist-max-o SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final greylist-max-o SCROLL_BAR_SIZE:I = 0x4

.field private static final greylist SCROLL_FRICTION:F = 0.015f

.field private static final greylist-max-o SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final blacklist SMART_SELECTION_INITIALIZED_TIMEOUT_IN_MILLISECOND:I = 0xc8

.field private static final blacklist SMART_SELECTION_INITIALIZING_TIMEOUT_IN_MILLISECOND:I = 0x1f4

.field private static final greylist-max-o TAP_TIMEOUT:I = 0x64

.field private static final greylist-max-o TOUCH_SLOP:I = 0x8

.field private static final greylist-max-o VERTICAL_SCROLL_FACTOR:F = 64.0f

.field private static final greylist-max-o WINDOW_TOUCH_SLOP:I = 0x10

.field private static final greylist-max-o ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final greylist sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;


# instance fields
.field private final blacklist mAmbiguousGestureMultiplier:F

.field private final blacklist mConstructedWithContext:Z

.field private final greylist-max-o mDoubleTapSlop:I

.field private final greylist-max-o mDoubleTapTouchSlop:I

.field private final greylist-max-o mEdgeSlop:I

.field private final greylist-max-o mFadingEdgeLength:I

.field private final blacklist mFadingMarqueeEnabled:Z

.field private final greylist-max-o mGlobalActionsKeyTimeout:J

.field private final blacklist mHandwritingGestureLineMargin:I

.field private final blacklist mHandwritingSlop:I

.field private final greylist-max-o mHorizontalScrollFactor:F

.field private final greylist-max-o mHoverSlop:I

.field private final greylist-max-o mMaximumDrawingCacheSize:I

.field private final greylist-max-o mMaximumFlingVelocity:I

.field private final blacklist mMaximumRotaryEncoderFlingVelocity:I

.field private final blacklist mMinScalingSpan:I

.field private final greylist-max-o mMinScrollbarTouchTarget:I

.field private final greylist-max-o mMinimumFlingVelocity:I

.field private final blacklist mMinimumRotaryEncoderFlingVelocity:I

.field private final greylist-max-o mOverflingDistance:I

.field private final greylist-max-o mOverscrollDistance:I

.field private final greylist-max-o mPagingTouchSlop:I

.field private final blacklist mPreferKeepClearForFocusEnabled:Z

.field private final blacklist mRotaryEncoderHapticScrollFeedbackEnabled:Z

.field private final blacklist mRotaryEncoderHapticScrollFeedbackTickIntervalPixels:I

.field private final blacklist mScreenshotChordKeyTimeout:J

.field private final greylist-max-o mScrollbarSize:I

.field private final greylist-max-o mShowMenuShortcutsWhenKeyboardPresent:Z

.field private final blacklist mSmartSelectionInitializedTimeout:I

.field private final blacklist mSmartSelectionInitializingTimeout:I

.field private final greylist-max-o mTouchSlop:I

.field private final greylist-max-o mVerticalScrollFactor:F

.field private final blacklist mViewBasedRotaryEncoderScrollHapticsEnabledConfig:Z

.field private final blacklist mViewTouchScreenHapticScrollFeedbackEnabled:Z

.field private final greylist-max-o mWindowTouchSlop:I

.field private greylist-max-p sHasPermanentMenuKey:Z

.field private greylist sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/ViewConfiguration$ResourceCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/ViewConfiguration$ResourceCache;-><init>(Landroid/view/ViewConfiguration-IA;)V

    sput-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mConstructedWithContext:Z

    const/16 v1, 0xc

    iput v1, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    iput v1, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    const/16 v1, 0x32

    iput v1, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    const/16 v2, 0x1f40

    iput v2, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    iput v1, p0, Landroid/view/ViewConfiguration;->mMinimumRotaryEncoderFlingVelocity:I

    iput v2, p0, Landroid/view/ViewConfiguration;->mMaximumRotaryEncoderFlingVelocity:I

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackEnabled:Z

    const v1, 0x7fffffff

    iput v1, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackTickIntervalPixels:I

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mViewBasedRotaryEncoderScrollHapticsEnabledConfig:Z

    const/4 v1, 0x4

    iput v1, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    const/16 v2, 0x8

    iput v2, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    const/4 v3, 0x2

    iput v3, p0, Landroid/view/ViewConfiguration;->mHandwritingSlop:I

    iput v1, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    const/16 v1, 0x30

    iput v1, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    iput v2, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    const/16 v1, 0x10

    iput v1, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    const/16 v2, 0x64

    iput v2, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    iput v1, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    iput v1, p0, Landroid/view/ViewConfiguration;->mHandwritingGestureLineMargin:I

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Landroid/view/ViewConfiguration;->mAmbiguousGestureMultiplier:F

    const v1, 0x177000

    iput v1, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    const/4 v1, 0x6

    iput v1, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    const/high16 v1, 0x42800000    # 64.0f

    iput v1, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    iput v1, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/ViewConfiguration;->mScreenshotChordKeyTimeout:J

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinScalingSpan:I

    const/16 v1, 0xc8

    iput v1, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializedTimeout:I

    const/16 v1, 0x1f4

    iput v1, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializingTimeout:I

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mPreferKeepClearForFocusEnabled:Z

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mViewTouchScreenHapticScrollFeedbackEnabled:Z

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mConstructedWithContext:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v5

    :cond_0
    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v5, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    iput v5, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    const v5, 0x105012a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    const v7, 0x10500ec

    invoke-virtual {v1, v7, v5, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Landroid/view/ViewConfiguration;->mAmbiguousGestureMultiplier:F

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    mul-int/2addr v5, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v5, v3

    iput v5, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    const/4 v3, 0x0

    mul-float/2addr v3, v2

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    iget-boolean v2, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    const/4 v3, 0x0

    if-nez v2, :cond_3

    const v2, 0x10e0128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v2, v0, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v3, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    :cond_3
    :goto_0
    const p1, 0x111028f

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    const p1, 0x1050130

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    const v0, 0x105012e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mHandwritingSlop:I

    const v0, 0x105012f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    const v0, 0x1050113

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    iput p1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    const p1, 0x105000a

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mHandwritingGestureLineMargin:I

    const p1, 0x1050133

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    const p1, 0x1050131

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    const p1, 0x1050134

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v0, 0x1050132

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7fffffff

    if-ltz p1, :cond_5

    if-gez v0, :cond_4

    goto :goto_1

    :cond_4
    iput p1, p0, Landroid/view/ViewConfiguration;->mMinimumRotaryEncoderFlingVelocity:I

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumRotaryEncoderFlingVelocity:I

    goto :goto_2

    :cond_5
    :goto_1
    iput v2, p0, Landroid/view/ViewConfiguration;->mMinimumRotaryEncoderFlingVelocity:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/view/ViewConfiguration;->mMaximumRotaryEncoderFlingVelocity:I

    :goto_2
    const p1, 0x1050120

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-lez p1, :cond_6

    move v2, p1

    :cond_6
    iput v2, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackTickIntervalPixels:I

    const p1, 0x11102ad

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackEnabled:Z

    const p1, 0x10e00ca

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v4, p1

    iput-wide v4, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    const p1, 0x1050100

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    const p1, 0x105012d

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    const p1, 0x1110249

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    const p1, 0x1050111

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mMinScalingSpan:I

    const p1, 0x10e0165

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v4, p1

    iput-wide v4, p0, Landroid/view/ViewConfiguration;->mScreenshotChordKeyTimeout:J

    const p1, 0x10e0175

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializedTimeout:I

    const p1, 0x10e0176

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializingTimeout:I

    const p1, 0x111021f

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/ViewConfiguration;->mPreferKeepClearForFocusEnabled:Z

    const p1, 0x11102ac

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/ViewConfiguration;->mViewBasedRotaryEncoderScrollHapticsEnabledConfig:Z

    invoke-static {}, Landroid/view/flags/Flags;->enableScrollFeedbackForTouch()Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x11102ae

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    :cond_7
    iput-boolean v3, p0, Landroid/view/ViewConfiguration;->mViewTouchScreenHapticScrollFeedbackEnabled:Z

    return-void
.end method

.method public static whitelist get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 3

    const-string v0, "ViewConfiguration"

    invoke-static {p0, v0}, Landroid/os/StrictMode;->assertConfigurationContext(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/view/ViewConfiguration;->getDisplayDensity(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0xa

    shl-int/lit8 v2, v2, 0x15

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0xa

    shl-int/lit8 v1, v1, 0xa

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    sget-object v1, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewConfiguration;

    if-nez v2, :cond_0

    new-instance v2, Landroid/view/ViewConfiguration;

    invoke-direct {v2, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v2
.end method

.method public static whitelist getAmbiguousGestureMultiplier()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public static whitelist getDefaultActionModeHideDuration()J
    .locals 2

    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getDefaultActionModeHideDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist getDisplayDensity(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/high16 v0, 0x42c80000    # 100.0f

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static greylist getDoubleTapMinTime()I
    .locals 1

    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getDoubleTapMinTime()I

    move-result v0

    return v0
.end method

.method public static greylist getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x64

    return v0
.end method

.method public static whitelist getDoubleTapTimeout()I
    .locals 1

    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method public static whitelist getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xc

    return v0
.end method

.method public static whitelist getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xc

    return v0
.end method

.method public static whitelist getGlobalActionKeyTimeout()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static greylist-max-r getHoverTapSlop()I
    .locals 1

    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getHoverTapSlop()I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getHoverTapTimeout()I
    .locals 1

    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getHoverTapTimeout()I

    move-result v0

    return v0
.end method

.method public static blacklist getHoverTooltipHideShortTimeout()I
    .locals 1

    const/16 v0, 0xbb8

    return v0
.end method

.method public static blacklist getHoverTooltipHideTimeout()I
    .locals 1

    const/16 v0, 0x3a98

    return v0
.end method

.method public static blacklist getHoverTooltipShowTimeout()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public static whitelist getJumpTapTimeout()I
    .locals 1

    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getJumpTapTimeout()I

    move-result v0

    return v0
.end method

.method public static whitelist getKeyRepeatDelay()I
    .locals 2

    const-string v0, "key_repeat_delay"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getKeyRepeatTimeout()I
    .locals 2

    const-string v0, "key_repeat_timeout"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getLongPressTimeout()I
    .locals 2

    const-string v0, "long_press_timeout"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getLongPressTooltipHideTimeout()I
    .locals 1

    const/16 v0, 0x5dc

    return v0
.end method

.method public static whitelist getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x177000

    return v0
.end method

.method public static whitelist getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1f40

    return v0
.end method

.method public static whitelist getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x32

    return v0
.end method

.method public static whitelist getMultiPressTimeout()I
    .locals 2

    const-string/jumbo v0, "multi_press_timeout"

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getPressedStateDuration()I
    .locals 1

    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getPressedStateDuration()I

    move-result v0

    return v0
.end method

.method public static whitelist getScrollBarFadeDuration()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public static whitelist getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    return v0
.end method

.method public static whitelist getScrollDefaultDelay()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method public static whitelist getScrollFriction()F
    .locals 1

    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getScrollFriction()F

    move-result v0

    return v0
.end method

.method public static greylist-max-o getSendRecurringAccessibilityEventsInterval()J
    .locals 2

    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static whitelist getTapTimeout()I
    .locals 1

    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getTapTimeout()I

    move-result v0

    return v0
.end method

.method public static whitelist getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x8

    return v0
.end method

.method public static whitelist getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    return v0
.end method

.method public static whitelist getZoomControlsTimeout()J
    .locals 2

    sget-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration$ResourceCache;->getZoomControlsTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist isInputDeviceInfoValid(III)Z
    .locals 1

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist resetCacheForTesting()V
    .locals 2

    sget-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    new-instance v0, Landroid/view/ViewConfiguration$ResourceCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/ViewConfiguration$ResourceCache;-><init>(Landroid/view/ViewConfiguration-IA;)V

    sput-object v0, Landroid/view/ViewConfiguration;->sResourceCache:Landroid/view/ViewConfiguration$ResourceCache;

    return-void
.end method

.method public static blacklist setInstanceForTesting(Landroid/content/Context;Landroid/view/ViewConfiguration;)V
    .locals 1

    sget-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-static {p0}, Landroid/view/ViewConfiguration;->getDisplayDensity(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getAccessibilityShortcutKeyTimeout()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public greylist-max-o getAccessibilityShortcutKeyTimeoutAfterConfirmation()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public blacklist getDeviceGlobalActionKeyTimeout()J
    .locals 2

    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    return-wide v0
.end method

.method public blacklist getHapticScrollFeedbackTickInterval(III)I
    .locals 2

    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackEnabled:Z

    const v1, 0x7fffffff

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/view/ViewConfiguration;->isInputDeviceInfoValid(III)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/high16 p1, 0x400000

    if-ne p3, p1, :cond_2

    const/16 p1, 0x1a

    if-ne p2, p1, :cond_2

    iget p0, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackTickIntervalPixels:I

    return p0

    :cond_2
    return v1
.end method

.method public whitelist getScaledAmbiguousGestureMultiplier()F
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mAmbiguousGestureMultiplier:F

    return p0
.end method

.method public whitelist getScaledDoubleTapSlop()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return p0
.end method

.method public greylist getScaledDoubleTapTouchSlop()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return p0
.end method

.method public whitelist getScaledEdgeSlop()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return p0
.end method

.method public whitelist getScaledFadingEdgeLength()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return p0
.end method

.method public whitelist getScaledHandwritingGestureLineMargin()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mHandwritingGestureLineMargin:I

    return p0
.end method

.method public whitelist getScaledHandwritingSlop()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mHandwritingSlop:I

    return p0
.end method

.method public whitelist getScaledHorizontalScrollFactor()F
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    return p0
.end method

.method public whitelist getScaledHoverSlop()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    return p0
.end method

.method public whitelist getScaledMaximumDrawingCacheSize()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return p0
.end method

.method public whitelist getScaledMaximumFlingVelocity()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return p0
.end method

.method public whitelist getScaledMaximumFlingVelocity(III)I
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/view/ViewConfiguration;->isInputDeviceInfoValid(III)Z

    move-result p1

    if-nez p1, :cond_0

    const/high16 p0, -0x80000000

    return p0

    :cond_0
    const/high16 p1, 0x400000

    if-ne p3, p1, :cond_1

    iget p0, p0, Landroid/view/ViewConfiguration;->mMaximumRotaryEncoderFlingVelocity:I

    return p0

    :cond_1
    iget p0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return p0
.end method

.method public greylist-max-o getScaledMinScrollbarTouchTarget()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    return p0
.end method

.method public whitelist getScaledMinimumFlingVelocity()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return p0
.end method

.method public whitelist getScaledMinimumFlingVelocity(III)I
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/view/ViewConfiguration;->isInputDeviceInfoValid(III)Z

    move-result p1

    if-nez p1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const/high16 p1, 0x400000

    if-ne p3, p1, :cond_1

    iget p0, p0, Landroid/view/ViewConfiguration;->mMinimumRotaryEncoderFlingVelocity:I

    return p0

    :cond_1
    iget p0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return p0
.end method

.method public whitelist getScaledMinimumScalingSpan()I
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mConstructedWithContext:Z

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/view/ViewConfiguration;->mMinScalingSpan:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Min scaling span cannot be determined when this method is called on a ViewConfiguration that was instantiated using a constructor with no Context parameter"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getScaledOverflingDistance()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return p0
.end method

.method public whitelist getScaledOverscrollDistance()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return p0
.end method

.method public whitelist getScaledPagingTouchSlop()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return p0
.end method

.method public whitelist getScaledScrollBarSize()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return p0
.end method

.method public greylist getScaledScrollFactor()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    float-to-int p0, p0

    return p0
.end method

.method public whitelist getScaledTouchSlop()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return p0
.end method

.method public whitelist getScaledVerticalScrollFactor()F
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    return p0
.end method

.method public whitelist getScaledWindowTouchSlop()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return p0
.end method

.method public blacklist getScreenshotChordKeyTimeout()J
    .locals 2

    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mScreenshotChordKeyTimeout:J

    return-wide v0
.end method

.method public blacklist getSmartSelectionInitializedTimeout()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializedTimeout:I

    return p0
.end method

.method public blacklist getSmartSelectionInitializingTimeout()I
    .locals 0

    iget p0, p0, Landroid/view/ViewConfiguration;->mSmartSelectionInitializingTimeout:I

    return p0
.end method

.method public whitelist hasPermanentMenuKey()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    return p0
.end method

.method public greylist isFadingMarqueeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return p0
.end method

.method public blacklist isHapticScrollFeedbackEnabled(III)Z
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/view/ViewConfiguration;->isInputDeviceInfoValid(III)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/high16 p1, 0x400000

    if-ne p3, p1, :cond_1

    const/16 p1, 0x1a

    if-ne p2, p1, :cond_1

    iget-boolean p0, p0, Landroid/view/ViewConfiguration;->mRotaryEncoderHapticScrollFeedbackEnabled:Z

    return p0

    :cond_1
    and-int/lit16 p1, p3, 0x1002

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Landroid/view/ViewConfiguration;->mViewTouchScreenHapticScrollFeedbackEnabled:Z

    return p0

    :cond_2
    return v0
.end method

.method public blacklist isPreferKeepClearForFocusEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ViewConfiguration;->mPreferKeepClearForFocusEnabled:Z

    return p0
.end method

.method public blacklist isViewBasedRotaryEncoderHapticScrollFeedbackEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ViewConfiguration;->mViewBasedRotaryEncoderScrollHapticsEnabledConfig:Z

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/view/flags/Flags;->useViewBasedRotaryEncoderScrollHaptics()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist shouldShowMenuShortcutsWhenKeyboardPresent()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    return p0
.end method
