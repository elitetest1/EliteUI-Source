.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupDecorView;,
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o ABOVE_ANCHOR_STATE_SET:[I

.field private static final greylist-max-o ANIMATION_STYLE_DEFAULT:I = -0x1

.field private static final greylist-max-o DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final whitelist INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final whitelist INPUT_METHOD_NEEDED:I = 0x1

.field public static final whitelist INPUT_METHOD_NOT_NEEDED:I = 0x2

.field private static final blacklist ONEUI_BLUR_POPUP_BACKGROUND_RES:[I


# instance fields
.field private greylist mAboveAnchor:Z

.field private greylist-max-p mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mAllowScrollingAnchorParent:Z

.field private greylist mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAnchorRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAnchorXoff:I

.field private greylist-max-o mAnchorYoff:I

.field private greylist-max-o mAnchoredGravity:I

.field private greylist mAnimationStyle:I

.field private greylist-max-o mAttachedInDecor:Z

.field private greylist-max-o mAttachedInDecorSet:Z

.field private blacklist mBackCallback:Landroid/window/OnBackInvokedCallback;

.field private greylist-max-o mBackground:Landroid/graphics/drawable/Drawable;

.field private greylist mBackgroundView:Landroid/view/View;

.field private greylist-max-p mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mClipToScreen:Z

.field private greylist-max-o mClippingEnabled:Z

.field private greylist mContentView:Landroid/view/View;

.field private greylist mContext:Landroid/content/Context;

.field private greylist mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

.field private greylist-max-o mElevation:F

.field private greylist-max-o mEnterTransition:Landroid/transition/Transition;

.field private greylist-max-o mEpicenterBounds:Landroid/graphics/Rect;

.field private greylist-max-o mExitTransition:Landroid/transition/Transition;

.field private greylist-max-o mFocusable:Z

.field private greylist-max-o mGravity:I

.field private greylist-max-o mHeight:I

.field private greylist mHeightMode:I

.field private greylist-max-o mIgnoreCheekPress:Z

.field private greylist-max-o mInputMethodMode:I

.field private greylist-max-o mIsAnchorRootAttached:Z

.field private blacklist mIsDeviceDefault:Z

.field private greylist mIsDropdown:Z

.field private blacklist mIsReplacedPoupBackground:Z

.field private greylist mIsShowing:Z

.field private greylist-max-o mIsTransitioningToDismiss:Z

.field private greylist mLastHeight:I

.field private greylist mLastWidth:I

.field private greylist mLayoutInScreen:Z

.field private greylist-max-o mLayoutInsetDecor:Z

.field private blacklist mNavigationBarHeight:I

.field private greylist-max-r mNotTouchModal:Z

.field private final greylist-max-o mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final greylist-max-o mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private greylist mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final greylist-max-o mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final greylist-max-p mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private greylist-max-o mOutsideTouchable:Z

.field private greylist-max-p mOverlapAnchor:Z

.field private greylist-max-o mParentRootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPopupViewInitialLayoutDirectionInherited:Z

.field private blacklist mShowWhenLocked:Z

.field private greylist-max-o mSoftInputMode:I

.field private greylist-max-o mSplitTouchEnabled:I

.field private blacklist mStatusBarHeight:I

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTmpAppLocation:[I

.field private final greylist-max-o mTmpDrawingLocation:[I

.field private final greylist-max-o mTmpScreenLocation:[I

.field private greylist mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private greylist-max-o mTouchable:Z

.field private greylist-max-o mWidth:I

.field private greylist mWidthMode:I

.field private greylist mWindowLayoutType:I

.field private greylist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$0x_ylo_rVcDtWMJ6Hi3r2rqQ1EU(Landroid/widget/PopupWindow;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/widget/PopupWindow;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DcwrQHyoN5xOfp9rZ8TGiebc06c(Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAboveAnchor(Landroid/widget/PopupWindow;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBackCallback(Landroid/widget/PopupWindow;)Landroid/window/OnBackInvokedCallback;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentRootView(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTouchInterceptor(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBackCallback(Landroid/widget/PopupWindow;Landroid/window/OnBackInvokedCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAnchorRootAttached(Landroid/widget/PopupWindow;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$malignToAnchor(Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdismissImmediate(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterBackCallback(Landroid/widget/PopupWindow;Landroid/window/OnBackInvokedDispatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->unregisterBackCallback(Landroid/window/OnBackInvokedDispatcher;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetABOVE_ANCHOR_STATE_SET()[I
    .locals 1

    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const v0, 0x10100aa

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/PopupWindow;->ONEUI_BLUR_POPUP_BACKGROUND_RES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1080aff
        0x1080afe
        0x1080a9a
        0x1080a99
        0x1080b22
        0x1080b21
        0x1080b31
        0x1080b30
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    const/4 v4, -0x2

    iput v4, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v4, p0, Landroid/widget/PopupWindow;->mHeight:I

    const/16 v4, 0x3e8

    iput v4, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    iput v1, p0, Landroid/widget/PopupWindow;->mGravity:I

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mShowWhenLocked:Z

    new-instance v4, Landroid/widget/PopupWindow$1;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v4, Landroid/widget/PopupWindow$2;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v4, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v4, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    iput v1, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    sget-object v4, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p3, 0x3

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const p4, 0x103031b

    if-ne p3, p4, :cond_0

    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    :cond_0
    iput p3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    :cond_1
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    :goto_0
    const/4 p3, 0x4

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-direct {p0, p3}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object p3

    const/4 p4, 0x5

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    invoke-direct {p0, p4}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object p4

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    const/4 p4, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p4

    :goto_1
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    sget-object v3, Landroid/widget/PopupWindow;->ONEUI_BLUR_POPUP_BACKGROUND_RES:[I

    array-length v4, v3

    move v5, v1

    move v6, v5

    :goto_2
    if-ge v5, v4, :cond_5

    aget v7, v3, v5

    if-ne v7, v0, :cond_4

    move v6, v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    xor-int/lit8 p1, v6, 0x1

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsReplacedPoupBackground:Z

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object p2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const p3, 0x11200b3

    invoke-virtual {p2, p3, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->data:I

    if-eqz p1, :cond_6

    move v1, v2

    :cond_6
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    iget-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10505cb

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iget-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10502f0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;IIZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    const/4 v1, -0x2

    iput v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    const/16 v1, 0x3e8

    iput v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    iput v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mShowWhenLocked:Z

    new-instance v1, Landroid/widget/PopupWindow$1;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v1, Landroid/widget/PopupWindow$2;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v1, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda0;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v1, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow$$ExternalSyntheticLambda1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    iput v0, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v0, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method private greylist-max-o alignToAnchor()V
    .locals 10

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v5, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    const/4 v9, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result p0

    move-object v4, v1

    invoke-virtual {v4, p0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    iget-boolean p0, v4, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz p0, :cond_1

    iget p0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eqz p0, :cond_3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v7, -0x1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void

    :cond_1
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v7, -0x1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void

    :cond_2
    move-object v4, p0

    iget-boolean p0, v4, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz p0, :cond_3

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    return-void
.end method

.method private blacklist alignToAnchor(IIIIIIII)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v0, :cond_2

    if-ne p1, p5, :cond_1

    if-ne p2, p6, :cond_1

    if-ne p3, p7, :cond_1

    if-eq p4, p8, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void

    :cond_2
    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method private greylist computeAnimationResource()I
    .locals 2

    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz p0, :cond_0

    const p0, 0x103030e

    return p0

    :cond_0
    const p0, 0x103030d

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method private greylist-max-o computeFlags(I)I
    .locals 3

    const v0, -0x8e8219

    and-int/2addr p1, v0

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    const v0, 0x8000

    or-int/2addr p1, v0

    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_2

    or-int/lit8 v0, p1, 0x8

    iget v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const v0, 0x20008

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/high16 v0, 0x20000

    :goto_0
    or-int/2addr p1, v0

    :cond_3
    :goto_1
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_4

    or-int/lit8 p1, p1, 0x10

    :cond_4
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_5

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    :cond_5
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v0, :cond_7

    :cond_6
    or-int/lit16 p1, p1, 0x200

    :cond_7
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    :cond_8
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_9

    or-int/lit16 p1, p1, 0x100

    :cond_9
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_a

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    :cond_a
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_b

    or-int/lit8 p1, p1, 0x20

    :cond_b
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    if-eqz v0, :cond_c

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    :cond_c
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mShowWhenLocked:Z

    if-eqz p0, :cond_d

    const/high16 p0, 0x80000

    or-int/2addr p0, p1

    return p0

    :cond_d
    return p1
.end method

.method private greylist-max-o computeGravity()I
    .locals 2

    iget v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    if-nez v0, :cond_0

    const v0, 0x800033

    :cond_0
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz p0, :cond_2

    :cond_1
    const/high16 p0, 0x10000000

    or-int/2addr p0, v0

    return p0

    :cond_2
    return v0
.end method

.method private greylist-max-o createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .locals 4

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupBackgroundView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p0}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private greylist-max-o createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .locals 4

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    return-object v0
.end method

.method private greylist-max-o dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return-void
.end method

.method private greylist-max-o getAppRootView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o getTransition(I)Landroid/transition/Transition;
    .locals 1

    if-eqz p1, :cond_1

    const/high16 v0, 0x10f0000

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of p1, p0, Landroid/transition/TransitionSet;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Landroid/transition/TransitionSet;

    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v0, :cond_3

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v4, v5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_3

    and-int/lit16 v0, v4, 0x404

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    if-ne v1, v2, :cond_6

    iget-object p1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iput v3, v4, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_4

    iget p1, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    goto :goto_2

    :cond_4
    move p1, v3

    :goto_2
    iput p1, v4, Landroid/graphics/Rect;->top:I

    iget p1, v1, Landroid/graphics/Point;->x:I

    iput p1, v4, Landroid/graphics/Rect;->right:I

    iget p1, v1, Landroid/graphics/Point;->y:I

    iput p1, v4, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, p1

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-nez v2, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    iget p1, v4, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    sub-int/2addr p1, p0

    iput p1, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-boolean p1, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    iget p1, v4, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_7

    iget p0, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput p0, v4, Landroid/graphics/Rect;->top:I

    :cond_7
    :goto_4
    invoke-virtual {p2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_8
    :goto_5
    return-void
.end method

.method private greylist hidden_semGetBackgroundView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    return-object p0
.end method

.method private greylist-max-p invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    :cond_1
    return-void
.end method

.method private blacklist isSystemApp()Z
    .locals 1

    iget-object p0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    move p1, p2

    move p2, p3

    move p3, p4

    move p4, p5

    move p5, p6

    move p6, p7

    move p7, p8

    move p8, p9

    invoke-direct/range {p0 .. p8}, Landroid/widget/PopupWindow;->alignToAnchor(IIIIIIII)V

    return-void
.end method

.method private greylist-max-o positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 0

    sub-int/2addr p4, p3

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr p0, p4

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr p0, p2

    if-le p0, p6, :cond_0

    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr p0, p6

    sub-int/2addr p3, p0

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_0
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge p0, p5, :cond_2

    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr p6, p5

    if-eqz p7, :cond_1

    if-le p2, p6, :cond_1

    iput p6, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr p2, p4

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    return p0
.end method

.method private greylist-max-o positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 0

    sub-int/2addr p4, p3

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr p0, p4

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr p0, p2

    if-le p0, p6, :cond_0

    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr p0, p6

    sub-int/2addr p3, p0

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_0
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge p0, p5, :cond_2

    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr p6, p5

    if-eqz p7, :cond_1

    if-le p2, p6, :cond_1

    iput p6, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr p2, p4

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    return p0
.end method

.method private greylist preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const v1, 0x1040c96

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setIsRootNamespace(Z)V

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setElevation(F)V

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget v3, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v0, v3}, Landroid/view/View;->setElevation(F)V

    :goto_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    iget-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRawLayoutDirection()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o setLayoutDirectionFromAnchor()V
    .locals 2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->resolveLayoutDirection()Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 9

    sub-int p2, p6, p5

    iget p4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr p4, p2

    sub-int p2, p8, p4

    const/4 v0, 0x1

    move/from16 v6, p7

    if-lt p4, v6, :cond_0

    if-gt p3, p2, :cond_0

    return v0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p5

    move v5, p6

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/widget/PopupWindow;->positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 9

    move/from16 v5, p7

    move/from16 v6, p8

    sub-int v0, p6, p5

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v1, v0

    sub-int v0, v6, v1

    const/4 v8, 0x1

    if-lt v1, v5, :cond_0

    if-gt p3, v0, :cond_0

    return v8

    :cond_0
    sub-int/2addr v1, p4

    sub-int/2addr v1, v5

    if-gt p3, v1, :cond_4

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v0, :cond_2

    if-gt p5, v6, :cond_4

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz p0, :cond_1

    add-int/2addr p2, p4

    :cond_1
    sub-int/2addr p5, p3

    add-int/2addr p5, p2

    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    return v8

    :cond_2
    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz p0, :cond_3

    add-int/2addr p2, p4

    :cond_3
    sub-int/2addr p5, p3

    add-int/2addr p5, p2

    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    return v8

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result p0

    if-eqz p0, :cond_5

    return v8

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist unregisterBackCallback(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method

.method private greylist-max-o update(Landroid/view/View;ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v4, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    iget v7, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz p2, :cond_2

    iget v5, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    if-ne v5, v2, :cond_1

    iget v5, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    if-eq v5, v3, :cond_2

    :cond_1
    move v5, v9

    goto :goto_0

    :cond_2
    move v5, v10

    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_4

    if-eqz v5, :cond_3

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_5

    iput v2, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iput v3, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v13, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v14, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez p5, :cond_6

    iget v3, v0, Landroid/widget/PopupWindow;->mWidth:I

    move v5, v3

    goto :goto_3

    :cond_6
    move/from16 v5, p5

    :goto_3
    if-gez p6, :cond_7

    iget v3, v0, Landroid/widget/PopupWindow;->mHeight:I

    move v6, v3

    goto :goto_4

    :cond_7
    move/from16 v6, p6

    :goto_4
    iget v3, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget-boolean v8, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    invoke-virtual/range {v0 .. v8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v11, v1, :cond_9

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v14, v1, :cond_9

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v15, v1, :cond_9

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v12, v1, :cond_9

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v13, v1, :cond_8

    goto :goto_5

    :cond_8
    move v9, v10

    :cond_9
    :goto_5
    if-gez v5, :cond_a

    goto :goto_6

    :cond_a
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_6
    if-gez v6, :cond_b

    goto :goto_7

    :cond_b
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_7
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v9

    invoke-virtual/range {p1 .. p6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    :cond_c
    :goto_8
    return-void
.end method


# virtual methods
.method protected greylist-max-o attachToAnchor(Landroid/view/View;III)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    iget-object p1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return-void
.end method

.method protected greylist createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x3

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_0
    iget p1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez p1, :cond_1

    iput p1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    iget p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput p1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_1
    iget p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez p1, :cond_2

    iput p1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2

    :cond_2
    iget p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput p1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_2
    const/16 p1, 0x4000

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x20000

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "PopupWindow:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method protected greylist-max-o detachFromAnchor()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    return-void
.end method

.method public whitelist dismiss()V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->unregisterBackCallback(Landroid/window/OnBackInvokedDispatcher;)V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    iget-object v3, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-nez v5, :cond_5

    :cond_3
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v7, -0x20001

    and-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6, v0, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    :cond_4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v5

    new-instance v6, Landroid/widget/PopupWindow$3;

    invoke-direct {v6, p0, v0, v2, v1}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    :goto_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    iget-object p0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_6
    :goto_2
    return-void
.end method

.method protected greylist-max-o findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v1, p2

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v11

    iget-boolean v2, v0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v2, :cond_0

    sub-int v2, p4, v4

    goto :goto_0

    :cond_0
    move/from16 v2, p4

    :goto_0
    iget-object v12, v0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    invoke-direct/range {p0 .. p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v13, v0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    invoke-virtual {v10, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v14, v0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    const/4 v15, 0x0

    aget v5, v13, v15

    aget v6, v12, v15

    sub-int/2addr v5, v6

    aput v5, v14, v15

    const/4 v6, 0x1

    aget v7, v13, v6

    aget v8, v12, v6

    sub-int/2addr v7, v8

    aput v7, v14, v6

    add-int v5, v5, p3

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    aget v5, v14, v6

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v3, v5}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v3, -0x1

    move/from16 v7, p5

    if-ne v7, v3, :cond_1

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    :cond_1
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->semGetCenterPointForFoldable()I

    move-result v8

    if-eqz v8, :cond_2

    aget v9, v14, v6

    if-ge v9, v8, :cond_2

    move/from16 v16, v8

    goto :goto_1

    :cond_2
    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v9

    :goto_1
    if-eqz v8, :cond_3

    aget v9, v14, v6

    if-lt v9, v8, :cond_3

    move/from16 v17, v8

    goto :goto_2

    :cond_3
    iget v9, v5, Landroid/graphics/Rect;->top:I

    move/from16 v17, v9

    :goto_2
    aget v9, v12, v6

    if-lt v9, v8, :cond_4

    move/from16 v18, v15

    goto :goto_3

    :cond_4
    move/from16 v18, v6

    :goto_3
    move/from16 v8, p6

    if-ne v8, v3, :cond_6

    if-eqz v18, :cond_5

    sub-int v3, v16, v17

    goto :goto_4

    :cond_5
    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v8

    goto :goto_4

    :cond_6
    move v3, v8

    :goto_4
    invoke-direct {v0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v10}, Landroid/view/View;->getLayoutDirection()I

    move-result v8

    move/from16 v9, p7

    invoke-static {v9, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    const/4 v9, 0x5

    move/from16 p4, v6

    if-ne v8, v9, :cond_7

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v19, v7, v11

    sub-int v6, v6, v19

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_7
    aget v6, v14, p4

    move/from16 v19, v6

    aget v6, v13, p4

    if-eqz v18, :cond_8

    move/from16 v9, v17

    goto :goto_5

    :cond_8
    iget v9, v5, Landroid/graphics/Rect;->top:I

    :goto_5
    move/from16 v20, v15

    if-eqz v18, :cond_9

    move/from16 v15, v16

    goto :goto_6

    :cond_9
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    :goto_6
    move/from16 v21, v7

    move v7, v9

    const/4 v9, 0x0

    move-object/from16 v26, v12

    move/from16 v12, p4

    move-object/from16 p4, v26

    move/from16 v26, v15

    move-object v15, v5

    move/from16 v5, v19

    move/from16 v19, v11

    move v11, v8

    move/from16 v8, v26

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v22

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v23, v4

    aget v5, v14, v20

    aget v6, v13, v20

    iget v7, v15, Landroid/graphics/Rect;->left:I

    iget v8, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, v19

    move/from16 v3, v21

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v5

    if-eqz v22, :cond_a

    if-nez v5, :cond_e

    :cond_a
    invoke-virtual {v10}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v10}, Landroid/view/View;->getScrollY()I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    add-int v7, v2, v21

    add-int v7, v7, p3

    add-int v5, v3, v25

    add-int v5, v5, v23

    add-int v5, v5, v24

    invoke-direct {v4, v2, v3, v7, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p8, :cond_b

    invoke-virtual {v10, v4, v12}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v10, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v13, v20

    aget v3, p4, v20

    sub-int/2addr v2, v3

    aput v2, v14, v20

    aget v3, v13, v12

    aget v4, p4, v12

    sub-int/2addr v3, v4

    aput v3, v14, v12

    add-int v2, v2, p3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    aget v2, v14, v12

    add-int v2, v2, v23

    add-int v2, v2, v24

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, 0x5

    if-ne v11, v2, :cond_b

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v7, v21, v19

    sub-int/2addr v2, v7

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_b
    aget v5, v14, v12

    aget v6, v13, v12

    if-eqz v18, :cond_c

    move/from16 v7, v17

    goto :goto_7

    :cond_c
    iget v2, v15, Landroid/graphics/Rect;->top:I

    move v7, v2

    :goto_7
    if-eqz v18, :cond_d

    move/from16 v8, v16

    goto :goto_8

    :cond_d
    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    move v8, v2

    :goto_8
    iget-boolean v9, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v4, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    aget v5, v14, v20

    aget v6, v13, v20

    iget v7, v15, Landroid/graphics/Rect;->left:I

    iget v8, v15, Landroid/graphics/Rect;->right:I

    iget-boolean v9, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, v19

    move/from16 v3, v21

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    :cond_e
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    aget v1, v14, v12

    if-ge v0, v1, :cond_f

    return v12

    :cond_f
    return v20
.end method

.method protected final greylist-max-o getAllowScrollingAnchorParent()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return p0
.end method

.method protected greylist-max-o getAnchor()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getAnimationStyle()I
    .locals 0

    iget p0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return p0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public whitelist getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method protected greylist-max-o getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public whitelist getElevation()F
    .locals 0

    iget p0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return p0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method public whitelist getEpicenterBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-object p0
.end method

.method public whitelist getHeight()I
    .locals 0

    iget p0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return p0
.end method

.method public whitelist getInputMethodMode()I
    .locals 0

    iget p0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return p0
.end method

.method public whitelist getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method public whitelist getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result p0

    return p0
.end method

.method public whitelist getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_1

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p3, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p3, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->NAVIBAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    :cond_0
    move-object v0, p3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-eqz v1, :cond_2

    instance-of v1, p3, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    check-cast p3, Landroid/view/WindowManager$LayoutParams;

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v2, p3, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v1, v2

    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p3, p3, 0x400

    if-nez p3, :cond_2

    and-int/lit16 p3, v1, 0x404

    if-nez p3, :cond_2

    iget p3, v0, Landroid/graphics/Rect;->top:I

    if-nez p3, :cond_2

    iget p3, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput p3, v0, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_0
    iget-object p3, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->semGetCenterPointForFoldable()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    aget v3, p3, v2

    if-ge v3, v1, :cond_3

    goto :goto_1

    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_1
    iget-boolean v3, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v3, :cond_4

    aget p1, p3, v2

    sub-int/2addr v1, p1

    goto :goto_2

    :cond_4
    aget v3, p3, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v3, p1

    sub-int/2addr v1, v3

    :goto_2
    sub-int/2addr v1, p2

    aget p1, p3, v2

    iget p3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    add-int/2addr p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    iget-object p3, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object p2, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p0

    sub-int/2addr p1, p2

    :cond_5
    return p1
.end method

.method protected final greylist-max-o getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object p0
.end method

.method public whitelist getOverlapAnchor()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return p0
.end method

.method public whitelist getSoftInputMode()I
    .locals 0

    iget p0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return p0
.end method

.method protected final greylist-max-o getTransitionEpicenter()Landroid/graphics/Rect;
    .locals 6

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_3

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v2}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    aget v0, v1, v5

    aget v4, v2, v5

    sub-int/2addr v0, v4

    const/4 v4, 0x1

    aget v1, v1, v4

    aget v2, v2, v4

    sub-int/2addr v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v1, v3, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    return-object v1
.end method

.method public whitelist getWidth()I
    .locals 0

    iget p0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return p0
.end method

.method public whitelist getWindowLayoutType()I
    .locals 0

    iget p0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return p0
.end method

.method protected greylist-max-o hasContentView()Z
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist-max-o hasDecorView()Z
    .locals 0

    iget-object p0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isAboveAnchor()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return p0
.end method

.method public whitelist isAttachedInDecor()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    return p0
.end method

.method public greylist isClipToScreenEnabled()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return p0
.end method

.method public whitelist isClippedToScreen()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return p0
.end method

.method public whitelist isClippingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return p0
.end method

.method public whitelist isFocusable()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return p0
.end method

.method public whitelist isLaidOutInScreen()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return p0
.end method

.method public greylist isLayoutInScreenEnabled()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return p0
.end method

.method protected final greylist-max-o isLayoutInsetDecor()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return p0
.end method

.method public whitelist isOutsideTouchable()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return p0
.end method

.method public whitelist isShowing()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return p0
.end method

.method public whitelist isSplitTouchEnabled()Z
    .locals 3

    iget v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    iget-object p0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0xb

    if-lt p0, v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    if-ne v0, v2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public whitelist isTouchModal()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public whitelist isTouchable()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return p0
.end method

.method protected final greylist-max-o isTransitioningToDismiss()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return p0
.end method

.method blacklist semGetCenterPointForFoldable()I
    .locals 4

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/view/SemWindowManager;->isTableMode()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Landroid/widget/PopupWindow;->mIsDeviceDefault:Z

    if-nez v2, :cond_4

    return v1

    :cond_4
    :try_start_0
    new-instance v2, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v2}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_5

    return v1

    :cond_5
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-static {}, Lcom/samsung/android/rune/ViewRune;->supportFoldableDualDisplay()Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_7

    iget-object p0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v3, :cond_9

    iget p0, v2, Landroid/graphics/Point;->y:I

    iget v0, v2, Landroid/graphics/Point;->x:I

    if-le p0, v0, :cond_6

    iget p0, v2, Landroid/graphics/Point;->x:I

    div-int/2addr p0, v3

    return p0

    :cond_6
    iget p0, v2, Landroid/graphics/Point;->y:I

    div-int/2addr p0, v3

    return p0

    :cond_7
    invoke-static {}, Lcom/samsung/android/rune/ViewRune;->supportFoldableNoSubDisplay()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_9

    iget p0, v2, Landroid/graphics/Point;->y:I

    iget v0, v2, Landroid/graphics/Point;->x:I

    if-le p0, v0, :cond_8

    iget p0, v2, Landroid/graphics/Point;->y:I

    div-int/2addr p0, v3

    return p0

    :cond_8
    iget p0, v2, Landroid/graphics/Point;->x:I

    div-int/2addr p0, v3

    return p0

    :catch_0
    :cond_9
    return v1
.end method

.method blacklist semIsAvailableBlurBackground()Z
    .locals 5

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_reduce_transparency"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    iget-boolean p0, p0, Landroid/widget/PopupWindow;->mIsReplacedPoupBackground:Z

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public whitelist semShowPopupWindow(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public greylist semShowWhenLocked(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/PopupWindow;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mShowWhenLocked:Z

    :cond_0
    return-void
.end method

.method greylist setAllowScrollingAnchorParent(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return-void
.end method

.method public whitelist setAnimationStyle(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return-void
.end method

.method public whitelist setAttachedInDecor(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsReplacedPoupBackground:Z

    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->findStateDrawableIndex([I)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_1

    if-eq v2, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-eq v0, v3, :cond_2

    if-eq v2, v3, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    return-void
.end method

.method public greylist setClipToScreenEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return-void
.end method

.method public whitelist setClippingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    :cond_1
    iget-object p1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    :cond_2
    iget-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x16

    if-lt p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected final greylist-max-o setDropDown(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    return-void
.end method

.method public whitelist setElevation(F)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    return-void
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-void
.end method

.method public whitelist setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-void
.end method

.method public whitelist setFocusable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return-void
.end method

.method public whitelist setHeight(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    return-void
.end method

.method public whitelist setIgnoreCheekPress()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    return-void
.end method

.method public whitelist setInputMethodMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return-void
.end method

.method public whitelist setIsClippedToScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return-void
.end method

.method public whitelist setIsLaidOutInScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return-void
.end method

.method public greylist setLayoutInScreenEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return-void
.end method

.method public greylist setLayoutInsetDecor(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return-void
.end method

.method public whitelist setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public whitelist setOutsideTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return-void
.end method

.method public whitelist setOverlapAnchor(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return-void
.end method

.method protected final greylist-max-o setShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return-void
.end method

.method public whitelist setSoftInputMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return-void
.end method

.method public whitelist setSplitTouchEnabled(Z)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    return-void
.end method

.method public whitelist setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public whitelist setTouchModal(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    return-void
.end method

.method public whitelist setTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return-void
.end method

.method protected final greylist-max-o setTransitioningToDismiss(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return-void
.end method

.method public whitelist setWidth(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    return-void
.end method

.method public whitelist setWindowLayoutMode(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    return-void
.end method

.method public whitelist setWindowLayoutType(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return-void
.end method

.method public whitelist showAsDropDown(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public whitelist showAsDropDown(Landroid/view/View;II)V
    .locals 1

    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public whitelist showAsDropDown(Landroid/view/View;III)V
    .locals 10

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-boolean v9, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p0

    int-to-long p0, p0

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x1

    :goto_0
    iput-wide p0, v3, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    invoke-direct {v1, v3}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public greylist showAtLocation(Landroid/os/IBinder;III)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    iput p2, p0, Landroid/widget/PopupWindow;->mGravity:I

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist showAtLocation(Landroid/view/View;III)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    return-void
.end method

.method public whitelist update()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v2, v4, :cond_2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v1, v3

    :cond_2
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v2, v4, :cond_3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    if-eqz v3, :cond_5

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v1, v0}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public whitelist update(II)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method

.method public whitelist update(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method

.method public whitelist update(IIIIZ)V
    .locals 4

    if-ltz p3, :cond_0

    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    :cond_0
    if-ltz p4, :cond_1

    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_3

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p3, v2, :cond_4

    iget p3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq p3, v1, :cond_4

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move p5, v3

    :cond_4
    iget p3, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez p3, :cond_5

    goto :goto_1

    :cond_5
    iget p3, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    :goto_1
    if-eq p4, v2, :cond_6

    iget p4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq p4, p3, :cond_6

    iput p3, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move p5, v3

    :cond_6
    iget p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq p3, p1, :cond_7

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move p5, v3

    :cond_7
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq p1, p2, :cond_8

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move p5, v3

    :cond_8
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result p1

    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq p1, p2, :cond_9

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move p5, v3

    :cond_9
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result p1

    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq p1, p2, :cond_a

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move p5, v3

    :cond_a
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result p1

    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq p1, p2, :cond_b

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move p5, v3

    :cond_b
    iget-object p1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    goto :goto_2

    :cond_c
    const/4 p1, 0x0

    :goto_2
    int-to-long p2, v2

    iget-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    cmp-long p4, p2, v1

    if-eqz p4, :cond_d

    iput-wide p2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    goto :goto_3

    :cond_d
    move v3, p5

    :goto_3
    if-eqz v3, :cond_e

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :cond_e
    :goto_4
    return-void
.end method

.method public whitelist update(Landroid/view/View;II)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    return-void
.end method

.method public whitelist update(Landroid/view/View;IIII)V
    .locals 7

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    return-void
.end method

.method protected greylist-max-o update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    iget-object p1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {p1, p0, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final greylist updateAboveAnchor(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    :cond_2
    return-void
.end method
