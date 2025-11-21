.class public abstract Landroid/widget/SemHorizontalAbsListView;
.super Landroid/widget/AdapterView;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemHorizontalAbsListView$RecycleBin;,
        Landroid/widget/SemHorizontalAbsListView$OnScrollListener;,
        Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;,
        Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;,
        Landroid/widget/SemHorizontalAbsListView$PositionScroller;,
        Landroid/widget/SemHorizontalAbsListView$SavedState;,
        Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;,
        Landroid/widget/SemHorizontalAbsListView$LayoutParams;,
        Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;,
        Landroid/widget/SemHorizontalAbsListView$FlingRunnable;,
        Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;,
        Landroid/widget/SemHorizontalAbsListView$PerformClick;,
        Landroid/widget/SemHorizontalAbsListView$CheckForTap;,
        Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;,
        Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;,
        Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;,
        Landroid/widget/SemHorizontalAbsListView$RecyclerListener;,
        Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final blacklist CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final blacklist CHOICE_MODE_MULTIPLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CHOICE_MODE_MULTIPLE_MODAL:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CHOICE_MODE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CHOICE_MODE_SINGLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static blacklist DEBUG_VELOCITY_TRACKER_TRACE:Z = false

.field private static final blacklist DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final blacklist HOVERSCROLL_LEFT:I = 0x1

.field private static final blacklist HOVERSCROLL_RIGHT:I = 0x2

.field private static final blacklist HOVERSCROLL_WIDTH_LEFT_DP:I = 0x19

.field private static final blacklist HOVERSCROLL_WIDTH_RIGHT_DP:I = 0x19

.field private static final blacklist INVALID_POINTER:I = -0x1

.field private static blacklist JUMP_SCROLL_TO_TOP_FINISHING:I = 0x0

.field private static blacklist JUMP_SCROLL_TO_TOP_IDLE:I = 0x0

.field private static blacklist JUMP_SCROLL_TO_TOP_INITIATED:I = 0x0

.field static final blacklist LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final blacklist LAYOUT_FORCE_TOP:I = 0x1

.field static final blacklist LAYOUT_MOVE_SELECTION:I = 0x6

.field static final blacklist LAYOUT_NORMAL:I = 0x0

.field static final blacklist LAYOUT_SET_SELECTION:I = 0x2

.field static final blacklist LAYOUT_SPECIFIC:I = 0x4

.field static final blacklist LAYOUT_SYNC:I = 0x5

.field private static final blacklist MSG_HOVERSCROLL_MOVE:I = 0x1

.field static final blacklist OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final blacklist PROFILE_FLINGING:Z = false

.field private static final blacklist PROFILE_SCROLLING:Z = false

.field private static final blacklist SAVED_STATE_KEY_FOR_BUNDLE:Ljava/lang/String; = "android.widget.SemHorizontalAbsListView.SavedState"

.field private static final blacklist TAG:Ljava/lang/String; = "SemHorizontalAbsListView"

.field static final blacklist TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final blacklist TOUCH_MODE_DOWN:I = 0x0

.field static final blacklist TOUCH_MODE_FLING:I = 0x4

.field private static final blacklist TOUCH_MODE_OFF:I = 0x1

.field private static final blacklist TOUCH_MODE_ON:I = 0x0

.field static final blacklist TOUCH_MODE_OVERFLING:I = 0x6

.field static final blacklist TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final blacklist TOUCH_MODE_REST:I = -0x1

.field static final blacklist TOUCH_MODE_SCROLL:I = 0x3

.field static final blacklist TOUCH_MODE_TAP:I = 0x1

.field private static final blacklist TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final blacklist TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TRANSCRIPT_MODE_DISABLED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TRANSCRIPT_MODE_NORMAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static blacklist mSemScrollAmount:I

.field static final blacklist sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist HOVERSCROLL_DELAY:I

.field private blacklist HOVERSCROLL_SPEED:F

.field private blacklist mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

.field private blacklist mActivePointerId:I

.field blacklist mAdapter:Landroid/widget/ListAdapter;

.field blacklist mAdapterHasStableIds:Z

.field private blacklist mCacheColorHint:I

.field blacklist mCachingActive:Z

.field blacklist mCachingStarted:Z

.field blacklist mCheckStates:Landroid/util/SparseBooleanArray;

.field blacklist mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mCheckedItemCount:I

.field blacklist mChoiceActionMode:Landroid/view/ActionMode;

.field blacklist mChoiceMode:I

.field private blacklist mClearScrollingCache:Ljava/lang/Runnable;

.field private blacklist mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private blacklist mCurrentKeyCode:I

.field private blacklist mDVFSLockAcquired:Z

.field blacklist mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

.field private blacklist mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private blacklist mDeferNotifyDataSetChanged:Z

.field private blacklist mDensityScale:F

.field private blacklist mDirection:I

.field private blacklist mDragScrollWorkingZonePx:I

.field blacklist mDrawSelectorOnTop:Z

.field private blacklist mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private blacklist mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private blacklist mEnableVibrationAtLongPress:Z

.field private blacklist mExtraPaddingInLeftHoverArea:I

.field private blacklist mExtraPaddingInRightHoverArea:I

.field private blacklist mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

.field blacklist mFastScrollAlwaysVisible:Z

.field blacklist mFastScrollEnabled:Z

.field private blacklist mFastScrollStyle:I

.field private blacklist mFiltered:Z

.field private blacklist mFirstPositionDistanceGuess:I

.field private blacklist mFirstPressedPoint:I

.field private blacklist mFlingProfilingStarted:Z

.field private blacklist mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

.field private blacklist mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private blacklist mForceTranscriptScroll:Z

.field private blacklist mForcedClick:Z

.field private blacklist mGlobalLayoutListenerAddedFilter:Z

.field private blacklist mGlowPaddingBottom:I

.field private blacklist mGlowPaddingTop:I

.field private blacklist mHapticOverScroll:Z

.field private blacklist mHasWindowFocusForMotion:Z

.field blacklist mHeightMeasureSpec:I

.field public blacklist mHoverAreaEnter:Z

.field private blacklist mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

.field private blacklist mHoverLeftAreaWidth:I

.field private blacklist mHoverPosition:I

.field private blacklist mHoverRecognitionCurrentTime:J

.field private blacklist mHoverRecognitionDurationTime:J

.field private blacklist mHoverRecognitionStartTime:J

.field private blacklist mHoverRightAreaWidth:I

.field private blacklist mHoverScrollDirection:I

.field private blacklist mHoverScrollEnable:Z

.field private blacklist mHoverScrollSpeed:I

.field private blacklist mHoverScrollStartTime:J

.field private blacklist mHoverScrollStateChanged:Z

.field private blacklist mHoverScrollStateForListener:I

.field private blacklist mHoverScrollTimeInterval:J

.field private blacklist mHoveredOnEllipsizedText:Z

.field blacklist mHoveringEnabled:Z

.field private blacklist mIsChildViewEnabled:Z

.field private blacklist mIsCloseChildSetted:Z

.field private blacklist mIsCtrlkeyPressed:Z

.field private blacklist mIsDetaching:Z

.field private blacklist mIsDragBlockEnabled:Z

.field private blacklist mIsDragScrolled:Z

.field private blacklist mIsEnabledPaddingInHoverScroll:Z

.field private blacklist mIsHoverOverscrolled:Z

.field private blacklist mIsHoveredByMouse:Z

.field private blacklist mIsMultiFocusEnabled:Z

.field private blacklist mIsNeedPenSelectIconSet:Z

.field private blacklist mIsNeedPenSelection:Z

.field private blacklist mIsPenHovered:Z

.field private blacklist mIsPenPressed:Z

.field private blacklist mIsPenSelectPointerSetted:Z

.field blacklist mIsRTL:Z

.field final blacklist mIsScrap:[Z

.field private blacklist mIsSendHoverScrollState:Z

.field private blacklist mIsShiftkeyPressed:Z

.field private blacklist mIsTextSelectionStarted:Z

.field private blacklist mIsfirstMoveEvent:Z

.field private blacklist mJumpScrollToTopState:I

.field private blacklist mLastAccessibilityScrollEventFromIndex:I

.field private blacklist mLastAccessibilityScrollEventToIndex:I

.field private blacklist mLastHandledItemCount:I

.field private blacklist mLastPosition:I

.field private blacklist mLastPositionDistanceGuess:I

.field blacklist mLastScrollState:I

.field private blacklist mLastTouchMode:I

.field blacklist mLastX:I

.field blacklist mLayoutMode:I

.field blacklist mListPadding:Landroid/graphics/Rect;

.field private blacklist mMaximumVelocity:I

.field private blacklist mMinimumVelocity:I

.field blacklist mMotionCorrection:I

.field blacklist mMotionPosition:I

.field blacklist mMotionViewNewLeft:I

.field blacklist mMotionViewOriginalLeft:I

.field blacklist mMotionX:I

.field blacklist mMotionY:I

.field blacklist mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

.field private blacklist mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field private blacklist mNeedsHoverScroll:Z

.field private blacklist mNestedXOffset:I

.field private blacklist mNewTextViewHoverState:Z

.field private blacklist mOldAdapterItemCount:I

.field private blacklist mOldHoverScrollDirection:I

.field private blacklist mOldKeyCode:I

.field private blacklist mOldTextViewHoverState:Z

.field private blacklist mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

.field blacklist mOverflingDistance:I

.field blacklist mOverscrollDistance:I

.field blacklist mOverscrollMax:I

.field private final blacklist mOwnerThread:Ljava/lang/Thread;

.field private blacklist mPenDragScrollTimeInterval:J

.field private blacklist mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

.field private blacklist mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

.field private blacklist mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

.field private blacklist mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

.field private blacklist mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

.field private blacklist mPointerCount:I

.field blacklist mPopup:Landroid/widget/PopupWindow;

.field private blacklist mPopupHidden:Z

.field blacklist mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field blacklist mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

.field private blacklist mPreviousTextViewScroll:Z

.field private blacklist mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

.field final blacklist mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

.field private blacklist mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field blacklist mResurrectToPosition:I

.field private final blacklist mScrollConsumed:[I

.field blacklist mScrollLeft:Landroid/view/View;

.field private final blacklist mScrollOffset:[I

.field private blacklist mScrollProfilingStarted:Z

.field blacklist mScrollRight:Landroid/view/View;

.field private blacklist mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field blacklist mScrollingCacheEnabled:Z

.field private blacklist mSecondPressedPoint:I

.field blacklist mSelectedLeft:I

.field blacklist mSelectionBottomPadding:I

.field blacklist mSelectionLeftPadding:I

.field blacklist mSelectionRightPadding:I

.field blacklist mSelectionTopPadding:I

.field blacklist mSelector:Landroid/graphics/drawable/Drawable;

.field blacklist mSelectorPosition:I

.field blacklist mSelectorRect:Landroid/graphics/Rect;

.field private blacklist mSemCloseChildByLeft:Landroid/view/View;

.field private blacklist mSemCloseChildByRight:Landroid/view/View;

.field private blacklist mSemCloseChildPositionByLeft:I

.field private blacklist mSemCloseChildPositionByRight:I

.field protected blacklist mSemCurrentFocusPosition:I

.field private blacklist mSemCustomMultiChoiceMode:Z

.field private blacklist mSemDistanceFromCloseChildLeft:I

.field private blacklist mSemDistanceFromCloseChildRight:I

.field private blacklist mSemDistanceFromTrackedChildLeft:I

.field private blacklist mSemDragBlockBottom:I

.field private blacklist mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private blacklist mSemDragBlockLeft:I

.field private blacklist mSemDragBlockRect:Landroid/graphics/Rect;

.field private blacklist mSemDragBlockRight:I

.field private blacklist mSemDragBlockTop:I

.field private blacklist mSemDragEndX:I

.field private blacklist mSemDragEndY:I

.field private blacklist mSemDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSemDragSelectedItemSize:I

.field private blacklist mSemDragSelectedViewPosition:I

.field private blacklist mSemDragStartX:I

.field private blacklist mSemDragStartY:I

.field private blacklist mSemIsOnClickEnabled:Z

.field private blacklist mSemPressItemListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSemScrollRemains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

.field private blacklist mSemTrackedChild:Landroid/view/View;

.field private blacklist mSemTrackedChildPosition:I

.field private blacklist mSmoothScrollbarEnabled:Z

.field blacklist mStackFromBottom:Z

.field blacklist mTextFilter:Landroid/widget/EditText;

.field private blacklist mTextFilterEnabled:Z

.field private blacklist mTouchFrame:Landroid/graphics/Rect;

.field blacklist mTouchMode:I

.field private blacklist mTouchModeReset:Ljava/lang/Runnable;

.field private blacklist mTouchSlop:I

.field private blacklist mTranscriptMode:I

.field private blacklist mVelocityScale:F

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivePointerId(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefInputConnection(Landroid/widget/SemHorizontalAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEdgeGlowLeft(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEdgeGlowRight(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFastScroll(Landroid/widget/SemHorizontalAbsListView;)Lcom/samsung/android/widget/SemHorizontalFastScroller;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFirstPressedPoint(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlingRunnable(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$FlingRunnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlingStrictSpan(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForcedClick(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsCtrlkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDetaching(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsShiftkeyPressed(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJumpScrollToTopState(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaximumVelocity(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinimumVelocity(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingCheckForLongPress(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemCustomMultiChoiceMode(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemScrollRemains(Landroid/widget/SemHorizontalAbsListView;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVelocityTracker(Landroid/widget/SemHorizontalAbsListView;)Landroid/view/VelocityTracker;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFirstPressedPoint(Landroid/widget/SemHorizontalAbsListView;I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlingStrictSpan(Landroid/widget/SemHorizontalAbsListView;Landroid/os/StrictMode$Span;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsChildViewEnabled(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmJumpScrollToTopState(Landroid/widget/SemHorizontalAbsListView;I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingCheckForLongPress(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTouchModeReset(Landroid/widget/SemHorizontalAbsListView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddToPressItemListArray(Landroid/widget/SemHorizontalAbsListView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearScrollingCache(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcontentFits(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTextFilterInput(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EditText;
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMessage(Landroid/widget/SemHorizontalAbsListView;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostOnJumpScrollToFinished(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->postOnJumpScrollToFinished()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFastScrollerAlwaysVisibleUiThread(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetJUMP_SCROLL_TO_TOP_IDLE()I
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetJUMP_SCROLL_TO_TOP_INITIATED()I
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/SemHorizontalAbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    sput v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    const/4 v0, 0x1

    sput v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    const/4 v0, 0x2

    sput v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    const/16 v0, 0x1f4

    sput v0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollProfilingStarted:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingProfilingStarted:Z

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    new-array v4, v2, [Z

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    const/4 v4, 0x2

    new-array v5, v4, [I

    iput-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    new-array v4, v4, [I

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticOverScroll:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    iput-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iput-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v6, 0x12c

    iput-wide v6, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    const-wide/16 v6, 0x1f4

    iput-wide v6, p0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    iput-wide v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateChanged:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    const/high16 v4, 0x40c00000    # 6.0f

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    sget v4, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initAbsListView()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setHorizontalScrollBarEnabled(Z)V

    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SemHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SemHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollProfilingStarted:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingProfilingStarted:Z

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    new-array v4, v2, [Z

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    const/4 v4, 0x2

    new-array v5, v4, [I

    iput-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    new-array v5, v4, [I

    iput-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticOverScroll:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v7, 0x12c

    iput-wide v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    const-wide/16 v7, 0x1f4

    iput-wide v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateChanged:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    const/high16 v5, 0x40c00000    # 6.0f

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    sget v5, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initAbsListView()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

    sget-object v1, Lcom/android/internal/R$styleable;->AbsListView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/SemHorizontalAbsListView;->setStackFromBottom(Z)V

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/SemHorizontalAbsListView;->setScrollingCacheEnabled(Z)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/SemHorizontalAbsListView;->setTextFilterEnabled(Z)V

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/SemHorizontalAbsListView;->setTranscriptMode(I)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollEnabled(Z)V

    const/16 p2, 0xb

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollStyle(I)V

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/SemHorizontalAbsListView;->setSmoothScrollbarEnabled(Z)V

    const/16 p2, 0xa

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollAlwaysVisible(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private blacklist acceptFilter()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    check-cast p0, Landroid/widget/Filterable;

    invoke-interface {p0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist access$000(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$100(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$1000(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z
    .locals 0

    invoke-virtual/range {p0 .. p9}, Landroid/widget/SemHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$1100(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    return p0
.end method

.method static synthetic blacklist access$1200(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z
    .locals 0

    invoke-virtual/range {p0 .. p9}, Landroid/widget/SemHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$1300(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic blacklist access$1400(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPersistentDrawingCache:I

    return p0
.end method

.method static synthetic blacklist access$1500(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic blacklist access$1600(Landroid/widget/SemHorizontalAbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic blacklist access$1700(Landroid/widget/SemHorizontalAbsListView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic blacklist access$200(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    return p0
.end method

.method static synthetic blacklist access$300(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    return p0
.end method

.method static synthetic blacklist access$400(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    return p0
.end method

.method static synthetic blacklist access$500(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    return p0
.end method

.method static synthetic blacklist access$600(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    return p0
.end method

.method static synthetic blacklist access$700(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    return p0
.end method

.method static synthetic blacklist access$800(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    return p0
.end method

.method static synthetic blacklist access$900(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    return p0
.end method

.method private blacklist addToPressItemListArray(II)V
    .locals 3

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_1
    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_2
    const/4 v0, 0x0

    if-ge p1, p2, :cond_4

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    :goto_0
    if-ge v0, p2, :cond_8

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-le p1, p2, :cond_6

    sub-int p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    :goto_2
    if-ge v0, p2, :cond_8

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    return-void
.end method

.method private blacklist clearScrollingCache()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$4;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private blacklist contentFits()Z
    .locals 6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    :cond_1
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-gt v2, v4, :cond_2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    if-lt v0, p0, :cond_2

    return v1

    :cond_2
    return v3

    :cond_3
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v2, v4, :cond_4

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p0

    if-gt v0, v2, :cond_4

    return v1

    :cond_4
    return v3
.end method

.method private blacklist createScrollingCache()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingActive:Z

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    :cond_0
    return-void
.end method

.method private blacklist createTextFilter(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const p1, 0x1030323

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void

    :cond_1
    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const p1, 0x1030324

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method private blacklist dismissPopup()V
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private blacklist drawSelector(Landroid/graphics/Canvas;)V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist finishGlows()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_0
    return-void
.end method

.method static blacklist getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p2, v0, :cond_4

    if-eq p2, v1, :cond_4

    const/16 v0, 0x11

    if-eq p2, v0, :cond_3

    const/16 v0, 0x21

    if-eq p2, v0, :cond_2

    const/16 v0, 0x42

    if-eq p2, v0, :cond_1

    const/16 v0, 0x82

    if-ne p2, v0, :cond_0

    iget p2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v1

    add-int/2addr p2, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p2, p0, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, v1

    add-int/2addr p0, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v1

    goto :goto_0

    :cond_2
    iget p2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v1

    add-int/2addr p2, v0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, v1

    add-int/2addr p0, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v1

    goto :goto_0

    :cond_4
    iget p2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v1

    add-int/2addr p2, v0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, v1

    add-int/2addr p0, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v1

    :goto_0
    add-int/2addr p1, v2

    :goto_1
    sub-int/2addr v0, p2

    sub-int/2addr p1, p0

    mul-int/2addr p1, p1

    mul-int/2addr v0, v0

    add-int/2addr p1, v0

    return p1
.end method

.method private blacklist getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090204

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object p0
.end method

.method private blacklist handleMessage(Landroid/os/Message;)V
    .locals 7

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v3, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-eqz p1, :cond_1

    iget-wide v3, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    sub-long v3, v1, v3

    iget-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    cmp-long p1, v3, v5

    if-gez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    if-eqz p1, :cond_2

    iget-wide v3, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    cmp-long p1, v1, v3

    if-gez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    iget-wide v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v3, 0x3

    cmp-long v3, v1, v3

    if-nez v3, :cond_3

    int-to-double v1, p1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr p1, v1

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    goto :goto_0

    :cond_3
    const-wide/16 v3, 0x4

    cmp-long v3, v1, v3

    if-nez v3, :cond_4

    int-to-double v1, p1

    const-wide v3, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr p1, v1

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    goto :goto_0

    :cond_4
    const-wide/16 v3, 0x5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5

    int-to-double v1, p1

    const-wide v3, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr p1, v1

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    :cond_5
    :goto_0
    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v1, 0x2

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    if-ne p1, v1, :cond_6

    neg-int v2, v2

    :cond_6
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v3, :cond_7

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    if-nez v3, :cond_8

    :cond_7
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    if-eq v3, p1, :cond_9

    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    :cond_9
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_a

    goto/16 :goto_2

    :cond_a
    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    const/4 v3, 0x0

    if-eqz p1, :cond_c

    if-gez v2, :cond_c

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v4

    add-int/2addr p1, v4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v4

    if-ne p1, v4, :cond_b

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    if-eq p1, v4, :cond_c

    :cond_b
    invoke-virtual {p0, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_c
    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz p1, :cond_e

    if-lez v2, :cond_e

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-nez p1, :cond_d

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    if-eq p1, v4, :cond_e

    :cond_d
    invoke-virtual {p0, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_e
    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez p1, :cond_10

    if-gez v2, :cond_10

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-nez p1, :cond_f

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    if-eq p1, v4, :cond_10

    :cond_f
    invoke-virtual {p0, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_10
    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez p1, :cond_12

    if-lez v2, :cond_12

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v4

    add-int/2addr p1, v4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v4

    if-ne p1, v4, :cond_11

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    if-eq p1, v4, :cond_12

    :cond_11
    invoke-virtual {p0, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_12
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getOverScrollMode()I

    move-result p1

    if-eqz p1, :cond_13

    if-ne p1, v0, :cond_14

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result p1

    if-nez p1, :cond_14

    :cond_13
    move v3, v0

    :cond_14
    if-eqz v3, :cond_19

    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez p1, :cond_19

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const v2, 0x3ecccccd    # 0.4f

    if-ne p1, v1, :cond_15

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p1, v2}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    :cond_15
    if-ne p1, v0, :cond_16

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p1, v2}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_16
    :goto_1
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_18

    :cond_17
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    :cond_18
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    :cond_19
    if-nez v3, :cond_1a

    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez p1, :cond_1a

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    :cond_1a
    :goto_2
    return-void
.end method

.method private blacklist initAbsListView()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setFocusableInTouchMode(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->semEnableHorizontalScrollbar()V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDensityScale:F

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1120174

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1120173

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void
.end method

.method private blacklist initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    return-void
.end method

.method private blacklist initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private blacklist isLockScreenMode()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    const-string p0, "keyguard"

    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p0

    return p0
.end method

.method private blacklist isOwnerThread()Z
    .locals 1

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SemHorizontalAbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v2, 0x7

    const/16 v3, 0x9

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    goto :goto_0

    :cond_1
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    :cond_2
    :goto_0
    if-eq p1, v4, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    move v1, v4

    :cond_3
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    return-void

    :cond_4
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    if-ne v0, v3, :cond_6

    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-nez p1, :cond_6

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_6
    :goto_1
    return-void
.end method

.method private blacklist onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    :cond_1
    return-void
.end method

.method private blacklist onTouchCancel()V
    .locals 4

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v1, 0x5

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startSpringback()V

    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_4
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    return-void
.end method

.method private blacklist onTouchDown(Landroid/view/MotionEvent;)V
    .locals 6

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v3

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez v4, :cond_2

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    if-nez v2, :cond_0

    new-instance v2, Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Landroid/widget/SemHorizontalAbsListView$CheckForTap;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView-IA;)V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v2, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-ne v4, v5, :cond_2

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->createScrollingCache()V

    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result v3

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->flywheelTouch()V

    :cond_2
    :goto_0
    if-ltz v3, :cond_3

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v2, v3, v2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    :cond_3
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_5
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-nez p1, :cond_6

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method private blacklist onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 6

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    move v0, v2

    :cond_0
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_3

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2

    const/4 v2, 0x5

    if-eq v3, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v1, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    return-void

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v1, v3, p2}, Landroid/widget/SemHorizontalAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    int-to-float p2, v1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    int-to-float v0, v0

    invoke-virtual {p0, p2, p1, v0}, Landroid/widget/SemHorizontalAbsListView;->pointInView(FFF)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget p2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_5
    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-nez p1, :cond_6

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    goto :goto_0

    :cond_6
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    :cond_7
    :goto_1
    return-void
.end method

.method private blacklist onTouchUp(Landroid/view/MotionEvent;)V
    .locals 11

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_c

    if-eq v0, v3, :cond_c

    const/4 v5, 0x2

    if-eq v0, v5, :cond_c

    const/4 p1, 0x3

    const/16 v3, 0x3e8

    if-eq v0, p1, :cond_3

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez p1, :cond_1

    new-instance p1, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {p1, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_1
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    if-le v0, v3, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_4

    :cond_2
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_b

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_4

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    :goto_0
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v8

    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-nez v9, :cond_5

    if-lt v0, v7, :cond_5

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v9, p1

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v9, v10, :cond_5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v9

    sub-int/2addr v9, v8

    if-gt v6, v9, :cond_5

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    :cond_5
    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v9, v3, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {v9, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    mul-float/2addr v3, v9

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    if-le v9, v10, :cond_9

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-nez v9, :cond_6

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    sub-int/2addr v7, v9

    if-eq v0, v7, :cond_9

    :cond_6
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v0, p1

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v0, p1, :cond_7

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    add-int/2addr v8, p1

    if-eq v6, v8, :cond_9

    :cond_7
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez p1, :cond_8

    new-instance p1, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {p1, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_8
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    neg-int v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_4

    :cond_9
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    :cond_a
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    goto/16 :goto_4

    :cond_b
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    :cond_c
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v5, v0, v5

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_17

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eqz v6, :cond_d

    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_17

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v7

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_17

    invoke-virtual {v5}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v7

    if-nez v7, :cond_17

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    if-nez v7, :cond_e

    new-instance v7, Landroid/widget/SemHorizontalAbsListView$PerformClick;

    invoke-direct {v7, p0, v1}, Landroid/widget/SemHorizontalAbsListView$PerformClick;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView-IA;)V

    iput-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    :cond_e
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    iput v0, v7, Landroid/widget/SemHorizontalAbsListView$PerformClick;->mClickMotionPosition:I

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->rememberWindowAttachCount()V

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eqz v8, :cond_11

    if-ne v8, v3, :cond_f

    goto :goto_1

    :cond_f
    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    if-nez p1, :cond_10

    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez p1, :cond_17

    :cond_10
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->run()V

    goto/16 :goto_3

    :cond_11
    :goto_1
    if-nez v8, :cond_12

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    goto :goto_2

    :cond_12
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez v1, :cond_16

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_16

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    invoke-virtual {v5, v3}, Landroid/view/View;->setPressed(Z)V

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    invoke-virtual {p0, v0, v5}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_13

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_13
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0, p1, v6}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_14
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz p1, :cond_15

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_15
    new-instance p1, Landroid/widget/SemHorizontalAbsListView$2;

    invoke-direct {p1, p0, v5, v7}, Landroid/widget/SemHorizontalAbsListView$2;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/view/View;Landroid/widget/SemHorizontalAbsListView$PerformClick;)V

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/SemHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_16
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    if-eqz p1, :cond_1a

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->run()V

    return-void

    :cond_17
    :goto_3
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    :cond_18
    :goto_4
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_19
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_1a
    return-void
.end method

.method private blacklist positionPopup()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v2, v1, v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDensityScale:F

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v1, v1, v3

    invoke-virtual {v2, p0, v4, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v1, v1, v3

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void
.end method

.method private blacklist positionSelector(ILandroid/view/View;ZFF)V
    .locals 8

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    :cond_1
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    if-eqz v0, :cond_2

    invoke-virtual {v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    sget-object v5, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v4, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_5
    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eq p2, p1, :cond_6

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedItemPosition()I

    move-result p1

    if-eq p1, v3, :cond_6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->refreshDrawableState()V

    :cond_6
    return-void
.end method

.method private blacklist postOnJumpScrollToFinished()V
    .locals 1

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$3;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$3;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private blacklist releaseAllBoosters()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    :cond_0
    return-void
.end method

.method private blacklist scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v6, p3

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    sub-int v1, v10, v1

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    sub-int/2addr v1, v4

    :cond_0
    if-eq v2, v3, :cond_1

    sub-int/2addr v2, v10

    goto :goto_0

    :cond_1
    neg-int v2, v1

    :goto_0
    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v2, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    aget v2, v2, v12

    add-int/2addr v1, v2

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    aget v4, v4, v12

    neg-int v5, v4

    if-eqz v6, :cond_2

    int-to-float v4, v4

    invoke-virtual {v6, v4, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    aget v8, v8, v12

    add-int/2addr v4, v8

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    :cond_2
    move v14, v5

    goto :goto_1

    :cond_3
    move v2, v12

    move v14, v2

    :goto_1
    move v13, v1

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    if-eq v1, v3, :cond_4

    sub-int v3, v10, v1

    add-int/2addr v3, v2

    move v15, v3

    goto :goto_2

    :cond_4
    move v15, v13

    :goto_2
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/high16 v16, 0x3f800000    # 1.0f

    const/4 v8, 0x5

    const/4 v3, 0x3

    const/4 v9, 0x1

    if-ne v2, v3, :cond_14

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_5

    const-string v1, "SemHorizontalAbsListView-scroll"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_5
    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    if-eq v10, v1, :cond_23

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-nez v1, :cond_6

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    if-le v1, v2, :cond_6

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    if-ltz v1, :cond_7

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_4

    :cond_8
    move v2, v12

    :goto_4
    if-eqz v15, :cond_9

    invoke-virtual {v0, v13, v15}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v3

    goto :goto_5

    :cond_9
    move v3, v12

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-eqz v3, :cond_12

    neg-int v3, v15

    sub-int/2addr v1, v2

    sub-int v1, v3, v1

    move v4, v1

    sub-int v1, v4, v15

    const/4 v3, 0x0

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SemHorizontalAbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    aget v1, v1, v12

    rsub-int/lit8 v2, v1, 0x0

    if-eqz v6, :cond_a

    int-to-float v1, v1

    invoke-virtual {v6, v1, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    aget v3, v3, v12

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    :cond_a
    move v12, v2

    goto/16 :goto_6

    :cond_b
    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    move v1, v8

    const/4 v8, 0x0

    move v2, v9

    const/4 v9, 0x1

    move v5, v2

    const/4 v2, 0x0

    move v6, v1

    move v1, v4

    const/4 v4, 0x0

    move v13, v5

    const/4 v5, 0x0

    move/from16 v17, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/widget/SemHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v2

    move v4, v1

    if-eqz v2, :cond_c

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :cond_c
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getOverScrollMode()I

    move-result v1

    if-eqz v1, :cond_d

    if-ne v1, v13, :cond_12

    invoke-direct {v0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v1

    if-nez v1, :cond_12

    :cond_d
    if-nez v2, :cond_e

    iput v12, v0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    const/4 v6, 0x5

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    :cond_e
    if-lez v15, :cond_10

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v11

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v3, v16, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_f
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v12, v12, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    goto :goto_6

    :cond_10
    if-gez v15, :cond_12

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v2, v4

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v11

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_11
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    :cond_12
    :goto_6
    add-int v1, v10, v12

    add-int/2addr v1, v14

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    :cond_13
    add-int v1, v10, v12

    add-int/2addr v1, v14

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    return-void

    :cond_14
    move v6, v8

    move v5, v9

    if-ne v2, v6, :cond_23

    if-eq v10, v1, :cond_23

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    sub-int v2, v1, v15

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    if-le v10, v4, :cond_15

    move v4, v5

    goto :goto_7

    :cond_15
    const/4 v9, -0x1

    move v4, v9

    :goto_7
    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    if-nez v6, :cond_16

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    :cond_16
    neg-int v6, v15

    if-gez v2, :cond_17

    if-gez v1, :cond_18

    :cond_17
    if-lez v2, :cond_19

    if-gtz v1, :cond_19

    :cond_18
    neg-int v6, v1

    add-int/2addr v15, v6

    goto :goto_8

    :cond_19
    move v15, v12

    :goto_8
    move v1, v6

    if-eqz v1, :cond_1f

    move v2, v3

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v6, v2

    const/4 v2, 0x0

    move/from16 v17, v4

    const/4 v4, 0x0

    move/from16 v18, v5

    const/4 v5, 0x0

    move/from16 v19, v6

    const/4 v6, 0x0

    move/from16 v20, v17

    move/from16 v12, v18

    invoke-virtual/range {v0 .. v9}, Landroid/widget/SemHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getOverScrollMode()I

    move-result v2

    if-eqz v2, :cond_1b

    if-ne v2, v12, :cond_1a

    invoke-direct {v0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_9

    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_a

    :cond_1b
    :goto_9
    if-lez v13, :cond_1d

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v3, v11

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v3, v16, v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1c
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    move v4, v3

    goto :goto_a

    :cond_1d
    if-gez v13, :cond_1a

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v3, v11

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1e
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    goto :goto_a

    :cond_1f
    move/from16 v20, v4

    move v4, v12

    :goto_a
    if-eqz v15, :cond_22

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    if-eqz v1, :cond_20

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->invalidateParentIfNeeded()V

    :cond_20
    invoke-virtual {v0, v15, v15}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    const/4 v2, 0x3

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->findClosestMotionRow(I)I

    move-result v1

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v12

    goto :goto_b

    :cond_21
    move v12, v4

    :goto_b
    iput v12, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    iput v10, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    :cond_22
    add-int v1, v10, v14

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    move/from16 v5, v20

    iput v5, v0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    :cond_23
    return-void
.end method

.method private blacklist semGetEnableVibrationAtLongPress()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    return p0
.end method

.method private blacklist semNotifyMultiSelectState(Landroid/view/View;IJ)Z
    .locals 8

    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-super/range {v0 .. v7}, Landroid/widget/AdapterView;->semNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result p0

    return p0
.end method

.method private blacklist setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setAlwaysShow(Z)V

    :cond_0
    return-void
.end method

.method private blacklist setFastScrollerEnabledUiThread(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lcom/samsung/android/widget/SemHorizontalFastScroller;

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollStyle:I

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;I)V

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setEnabled(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resolvePadding()V

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    :cond_2
    return-void
.end method

.method private blacklist setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    :goto_0
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    :cond_2
    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p0

    iput p0, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private blacklist showPointerIcon(Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/InputDevice;->semSetPointerType(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed to change PointerIcon to "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemHorizontalAbsListView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist showPopup()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->positionPopup()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->checkFocus()V

    :cond_0
    return-void
.end method

.method private blacklist startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 6

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_1

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    if-le v1, v5, :cond_7

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getNestedScrollAxes()I

    move-result v1

    and-int/2addr v1, v3

    if-nez v1, :cond_7

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->createScrollingCache()V

    if-eqz v2, :cond_2

    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-lez v0, :cond_3

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    goto :goto_1

    :cond_3
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    :goto_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    if-le v0, v3, :cond_5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_3
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    return v3

    :cond_7
    return v4
.end method

.method private blacklist updateOnScreenCheckedViews()V
    .locals 7

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-ge v4, v1, :cond_3

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v5, v0, v4

    instance-of v6, v3, Landroid/widget/Checkable;

    if-eqz v6, :cond_1

    check-cast v3, Landroid/widget/Checkable;

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-interface {v3, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setActivated(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private blacklist useDefaultSelector()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public blacklist addExtraPaddingInLeftHoverArea(I)V
    .locals 2

    int-to-float p1, p1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    return-void
.end method

.method public blacklist addExtraPaddingInRightHoverArea(I)V
    .locals 2

    int-to-float p1, p1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    return-void
.end method

.method public whitelist addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v1, v3

    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public blacklist canScrollList(I)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    const/4 v4, 0x1

    if-lez p1, :cond_6

    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, v0, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    :goto_0
    add-int/2addr v0, v2

    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_3

    if-lez v2, :cond_2

    return v4

    :cond_2
    return v1

    :cond_3
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-lt v0, v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result p0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v0

    if-le p1, p0, :cond_4

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v4

    :cond_6
    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz p1, :cond_7

    add-int/lit8 p1, v0, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    :goto_2
    add-int/2addr v0, v2

    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_9

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v0, p0, :cond_8

    return v4

    :cond_8
    return v1

    :cond_9
    if-gtz v2, :cond_b

    iget p0, v3, Landroid/graphics/Rect;->left:I

    if-ge p1, p0, :cond_a

    goto :goto_3

    :cond_a
    return v1

    :cond_b
    :goto_3
    return v4
.end method

.method public whitelist checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    instance-of p0, p1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    return p0
.end method

.method public blacklist clearChoices()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    return-void
.end method

.method public blacklist clearTextFilter()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    :cond_0
    return-void
.end method

.method protected whitelist computeHorizontalScrollExtent()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    mul-int/lit8 v2, v0, 0x64

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_2

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result p0

    sub-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    :goto_0
    sub-int/2addr v2, v1

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v1

    add-int/2addr v2, v4

    :cond_3
    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result p0

    sub-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    return v3

    :cond_6
    return v1
.end method

.method protected whitelist computeHorizontalScrollOffset()I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_4

    if-lez v1, :cond_4

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    const/high16 v5, 0x42c80000    # 100.0f

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_4

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    sub-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x64

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    sub-int/2addr v4, v1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, v5

    float-to-int p0, v0

    add-int/2addr v4, p0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x64

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v1

    sub-int/2addr v0, v2

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    int-to-float p0, p0

    mul-float/2addr v1, p0

    mul-float/2addr v1, v5

    float-to-int p0, v1

    add-int/2addr v0, p0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    add-int v2, v0, v1

    if-ne v2, p0, :cond_3

    move v3, p0

    goto :goto_0

    :cond_3
    div-int/lit8 v2, v1, 0x2

    add-int v3, v0, v2

    :goto_0
    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v3

    int-to-float p0, p0

    div-float/2addr v2, p0

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int p0, v0

    return p0

    :cond_4
    return v3
.end method

.method protected whitelist computeHorizontalScrollRange()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    int-to-float p0, p0

    mul-float/2addr v1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v1, p0

    float-to-int p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0

    :cond_1
    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    return p0
.end method

.method blacklist confirmCheckedPositionsById()V
    .locals 13

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    cmp-long v3, v7, v3

    const/4 v10, 0x1

    if-eqz v3, :cond_3

    add-int/lit8 v3, v6, -0x14

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v6, 0x14

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_1

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    cmp-long v5, v7, v11

    if-nez v5, :cond_0

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v7, v8}, Landroid/util/LongSparseArray;->delete(J)V

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    sub-int/2addr v2, v10

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_2

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v4, :cond_2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_2
    move v2, v10

    goto :goto_2

    :cond_3
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v6, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_2
    add-int/2addr v1, v10

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/ActionMode;->invalidate()V

    :cond_5
    return-void
.end method

.method blacklist createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 0

    new-instance p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object p0
.end method

.method blacklist createPositionScroller()Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;
    .locals 1

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-object v0
.end method

.method public blacklist deferNotifyDataSetChanged()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    return-void
.end method

.method public whitelist dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    if-eqz v1, :cond_1d

    const-string v2, "cropUri"

    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v4

    goto :goto_0

    :cond_3
    move v4, v6

    :goto_0
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v7, v5

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v7, v8, :cond_4

    move v7, v1

    goto :goto_1

    :cond_4
    move v7, v6

    :goto_1
    if-nez v7, :cond_7

    if-lez v5, :cond_7

    sub-int/2addr v5, v1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v7

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    if-le v5, v7, :cond_5

    goto :goto_2

    :cond_5
    move v7, v6

    goto :goto_3

    :cond_6
    :goto_2
    move v7, v1

    :cond_7
    :goto_3
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v5, :cond_8

    move v5, v1

    goto :goto_4

    :cond_8
    move v5, v6

    :goto_4
    if-nez v5, :cond_a

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_a

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v5, v8, :cond_9

    move v5, v1

    goto :goto_5

    :cond_9
    move v5, v6

    :cond_a
    :goto_5
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    if-le v2, v8, :cond_b

    sub-int v8, v4, v8

    if-lt v2, v8, :cond_18

    :cond_b
    if-lez v3, :cond_18

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getBottom()I

    move-result v8

    if-gt v3, v8, :cond_18

    if-nez v5, :cond_c

    if-nez v7, :cond_c

    goto/16 :goto_7

    :cond_c
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    if-nez v3, :cond_d

    new-instance v3, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-direct {v3, p0}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    :cond_d
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v3, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    :cond_e
    if-eq v0, v9, :cond_14

    const/4 v3, 0x3

    if-eq v0, v3, :cond_11

    const/4 v3, 0x4

    if-eq v0, v3, :cond_12

    const/4 v3, 0x5

    if-eq v0, v3, :cond_f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_12

    goto/16 :goto_6

    :cond_f
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-ltz v2, :cond_10

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v2, v0, :cond_10

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_17

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput v9, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    :cond_10
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v0, v4, v0

    if-lt v2, v0, :cond_17

    if-gt v2, v4, :cond_17

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_17

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_6

    :cond_11
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    if-eqz v0, :cond_12

    iput-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    :cond_12
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_13
    iput-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    iput-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iput-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    iput-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    goto :goto_6

    :cond_14
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_15

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    :cond_15
    if-ltz v2, :cond_16

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v2, v0, :cond_16

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_17

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput v9, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_6

    :cond_16
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v0, v4, v0

    if-lt v2, v0, :cond_17

    if-gt v2, v4, :cond_17

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_17

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    :cond_17
    :goto_6
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_18
    :goto_7
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    if-eqz v2, :cond_19

    invoke-virtual {v2, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v2, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_19
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v1, :cond_1a

    iget-wide v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    cmp-long v1, v1, v10

    if-eqz v1, :cond_1b

    :cond_1a
    iput-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    :cond_1b
    iput-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iput-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-ne v0, v9, :cond_1c

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    if-eqz v0, :cond_1c

    iput-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    :cond_1c
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_1d
    :goto_8
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollY:I

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingTop:I

    add-int/2addr v7, v5

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    add-int/2addr v4, v8

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLeft:I

    sub-int/2addr v4, v8

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    sub-int/2addr v4, v8

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mBottom:I

    add-int/2addr v5, v8

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mTop:I

    sub-int/2addr v5, v8

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingBottom:I

    sub-int/2addr v5, v8

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    and-int/lit8 v4, v4, -0x23

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v4, :cond_3

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    :cond_4
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    if-nez v0, :cond_5

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v1

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    if-lt v3, v0, :cond_7

    if-gt v3, v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    :cond_6
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    :cond_7
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    if-ge v0, v1, :cond_8

    move v2, v0

    goto :goto_2

    :cond_8
    move v2, v1

    :goto_2
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    if-le v1, v0, :cond_9

    move v0, v1

    :cond_9
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    :goto_3
    return-void
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    if-nez v3, :cond_1

    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-static {}, Landroid/widget/TextView;->semIsTextViewHovered()Z

    move-result v3

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v3, :cond_2

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-ne v3, v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v6

    :goto_0
    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    iput-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    const/16 v3, 0x4e35

    const/4 v7, 0x7

    const/16 v8, 0x9

    const/16 v9, 0xa

    const/16 v10, 0x4e21

    if-eq v2, v8, :cond_8

    iget-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateChanged:Z

    if-eqz v11, :cond_3

    goto :goto_1

    :cond_3
    if-ne v2, v7, :cond_7

    iget-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v11, :cond_4

    iget-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    if-nez v11, :cond_4

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    if-ne v11, v5, :cond_4

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    if-eq v11, v5, :cond_5

    :cond_4
    iget-boolean v11, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    if-eqz v11, :cond_6

    :cond_5
    invoke-direct {v0, v1, v3}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    :cond_6
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v3, :cond_10

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    if-eqz v3, :cond_10

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v5, :cond_10

    invoke-direct {v0, v1, v10}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    :cond_7
    if-ne v2, v9, :cond_10

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    if-eqz v3, :cond_10

    invoke-direct {v0, v1, v10}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_4

    :cond_8
    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateChanged:Z

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->isHoveringUIEnabled()Z

    move-result v12

    if-eqz v12, :cond_9

    iget-boolean v12, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    if-nez v12, :cond_a

    :cond_9
    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    :cond_a
    iget-boolean v12, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    if-eqz v12, :cond_f

    if-ne v11, v5, :cond_f

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "pen_hovering"

    invoke-static {v12, v13, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v4, :cond_b

    move v12, v4

    goto :goto_2

    :cond_b
    move v12, v6

    :goto_2
    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "car_mode_on"

    const/4 v15, -0x3

    invoke-static {v13, v14, v6, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-ne v13, v4, :cond_c

    move v13, v4

    goto :goto_3

    :cond_c
    move v13, v6

    :goto_3
    if-eqz v12, :cond_d

    if-eqz v13, :cond_e

    :cond_d
    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    :cond_e
    if-eqz v12, :cond_f

    iget-boolean v12, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v12, :cond_f

    iget-boolean v12, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    if-nez v12, :cond_f

    if-ne v11, v5, :cond_f

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v12

    if-ne v12, v5, :cond_f

    invoke-direct {v0, v1, v3}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    :cond_f
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x3

    if-ne v11, v3, :cond_10

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    :cond_10
    :goto_4
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    if-nez v3, :cond_11

    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_11
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v12

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    if-nez v13, :cond_12

    new-instance v13, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-direct {v13, v0}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    :cond_12
    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    if-lez v13, :cond_13

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    if-gtz v13, :cond_14

    :cond_13
    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    const/high16 v14, 0x41c80000    # 25.0f

    invoke-static {v4, v14, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v13, v15

    float-to-int v13, v13

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-static {v4, v14, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    add-float/2addr v13, v15

    float-to-int v13, v13

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    :cond_14
    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v13, :cond_15

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v14

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :cond_15
    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v14

    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    :goto_5
    sub-int/2addr v14, v15

    iget-boolean v15, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v15, :cond_1c

    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v15, :cond_16

    move v15, v4

    goto :goto_6

    :cond_16
    move v15, v6

    :goto_6
    if-nez v15, :cond_19

    if-lez v12, :cond_19

    invoke-virtual {v0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v10

    move/from16 v16, v4

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v9

    if-gt v10, v4, :cond_18

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v9

    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    if-le v4, v9, :cond_17

    goto :goto_7

    :cond_17
    move v15, v6

    goto :goto_8

    :cond_18
    :goto_7
    move/from16 v15, v16

    goto :goto_8

    :cond_19
    move/from16 v16, v4

    :goto_8
    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v4, v12

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v4, v9, :cond_1a

    move/from16 v4, v16

    goto :goto_9

    :cond_1a
    move v4, v6

    :goto_9
    if-nez v4, :cond_22

    if-lez v12, :cond_22

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v0, v12}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    if-ge v4, v9, :cond_1b

    :goto_a
    move/from16 v4, v16

    goto :goto_f

    :cond_1b
    move v4, v6

    goto :goto_f

    :cond_1c
    move/from16 v16, v4

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v4, v12

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v4, v9, :cond_1d

    move/from16 v4, v16

    goto :goto_b

    :cond_1d
    move v4, v6

    :goto_b
    if-nez v4, :cond_20

    if-lez v12, :cond_20

    add-int/lit8 v4, v12, -0x1

    invoke-virtual {v0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v15

    if-gt v9, v10, :cond_1f

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v9

    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    if-le v4, v9, :cond_1e

    goto :goto_c

    :cond_1e
    move v4, v6

    goto :goto_d

    :cond_1f
    :goto_c
    move/from16 v4, v16

    :cond_20
    :goto_d
    move v15, v4

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v4, :cond_21

    move/from16 v4, v16

    goto :goto_e

    :cond_21
    move v4, v6

    :goto_e
    if-nez v4, :cond_22

    if-lez v12, :cond_22

    invoke-virtual {v0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    if-ge v4, v9, :cond_1b

    goto :goto_a

    :cond_22
    :goto_f
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    if-ne v9, v5, :cond_23

    move/from16 v9, v16

    goto :goto_10

    :cond_23
    move v9, v6

    :goto_10
    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    add-int/2addr v10, v13

    const/4 v12, 0x4

    move/from16 v17, v9

    const-wide/16 v8, 0x0

    if-le v3, v10, :cond_24

    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    sub-int v10, v14, v10

    if-lt v3, v10, :cond_3f

    :cond_24
    if-lez v11, :cond_3f

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getBottom()I

    move-result v10

    if-gt v11, v10, :cond_3f

    if-nez v4, :cond_25

    if-eqz v15, :cond_3f

    :cond_25
    if-lt v3, v13, :cond_26

    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    add-int/2addr v10, v13

    if-gt v3, v10, :cond_26

    if-nez v4, :cond_26

    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v4, :cond_3f

    :cond_26
    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    sub-int v4, v14, v4

    if-lt v3, v4, :cond_27

    if-gt v3, v14, :cond_27

    if-nez v15, :cond_27

    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v4, :cond_3f

    :cond_27
    if-eqz v17, :cond_28

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    if-eq v4, v5, :cond_3f

    :cond_28
    if-eqz v17, :cond_3f

    invoke-direct {v0}, Landroid/widget/SemHorizontalAbsListView;->isLockScreenMode()Z

    move-result v4

    if-eqz v4, :cond_29

    goto/16 :goto_17

    :cond_29
    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v4, :cond_2a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    :cond_2a
    if-lt v3, v13, :cond_2b

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    add-int/2addr v13, v4

    if-gt v3, v13, :cond_2b

    move/from16 v4, v16

    goto :goto_11

    :cond_2b
    move v4, v6

    :goto_11
    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    sub-int v10, v14, v10

    if-lt v3, v10, :cond_2c

    if-gt v3, v14, :cond_2c

    move/from16 v3, v16

    goto :goto_12

    :cond_2c
    move v3, v6

    :goto_12
    const/16 v10, 0x4e31

    const/16 v11, 0x4e2d

    if-eq v2, v7, :cond_34

    const/16 v7, 0x9

    if-eq v2, v7, :cond_30

    const/16 v7, 0xa

    if-eq v2, v7, :cond_2d

    move/from16 v4, v16

    goto/16 :goto_16

    :cond_2d
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move/from16 v3, v16

    invoke-virtual {v2, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v2, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_2e
    const/16 v2, 0x4e21

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput-wide v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput-wide v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    if-eqz v2, :cond_2f

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v2, :cond_2f

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eq v3, v12, :cond_2f

    invoke-interface {v2, v0, v6}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    :cond_2f
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_30
    move/from16 v2, v16

    iput-boolean v2, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v4, :cond_31

    if-eqz v3, :cond_33

    :cond_31
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v3, v2}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    if-eqz v4, :cond_32

    invoke-direct {v0, v1, v10}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    goto :goto_13

    :cond_32
    invoke-direct {v0, v1, v11}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    :goto_13
    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    :cond_33
    move v4, v2

    goto/16 :goto_16

    :cond_34
    move/from16 v2, v16

    iget-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v7, :cond_35

    iput-boolean v2, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_35
    if-nez v4, :cond_38

    if-eqz v3, :cond_36

    goto :goto_14

    :cond_36
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v3, v2}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v3, v2}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_37
    const/16 v2, 0x4e21

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    iput-wide v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput-wide v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    const/4 v4, 0x1

    goto :goto_16

    :cond_38
    :goto_14
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    if-eqz v4, :cond_3b

    iget-boolean v2, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-eqz v2, :cond_39

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    if-ne v2, v3, :cond_3a

    :cond_39
    invoke-direct {v0, v1, v10}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_3a
    iput v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v4, 0x1

    goto :goto_15

    :cond_3b
    iget-boolean v2, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-eqz v2, :cond_3c

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    if-ne v2, v5, :cond_3d

    :cond_3c
    invoke-direct {v0, v1, v11}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_3d
    const/4 v4, 0x1

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    :goto_15
    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v0, v4}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_16

    :cond_3e
    move v4, v3

    :goto_16
    return v4

    :cond_3f
    :goto_17
    move/from16 v4, v16

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v5, v4}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_40

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v5, v4}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    const/16 v4, 0x4e21

    invoke-direct {v0, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_40
    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    add-int/2addr v13, v4

    if-le v3, v13, :cond_41

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    sub-int/2addr v14, v4

    if-lt v3, v14, :cond_42

    :cond_41
    if-lez v11, :cond_42

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getBottom()I

    move-result v3

    if-le v11, v3, :cond_43

    :cond_42
    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    :cond_43
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v3, :cond_44

    iget-wide v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_45

    :cond_44
    const/16 v4, 0x4e21

    invoke-direct {v0, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_45
    iput-wide v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput-wide v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    const/16 v7, 0xa

    if-ne v2, v7, :cond_46

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    if-eqz v2, :cond_46

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v2, :cond_46

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eq v3, v12, :cond_46

    invoke-interface {v2, v0, v6}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    :cond_46
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist dispatchSetPressed(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v4

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    :cond_0
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    if-nez v5, :cond_1

    new-instance v5, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-direct {v5, v0}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    :cond_1
    invoke-static {}, Landroid/widget/TextView;->semIsTextSelectionProgressing()Z

    move-result v5

    iput-boolean v5, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    const/16 v5, 0xd3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v5, :cond_2

    iput-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "car_mode_on"

    const/4 v9, -0x3

    invoke-static {v5, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v7, :cond_2

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    :cond_2
    iget-boolean v5, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    if-eqz v5, :cond_3

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    :cond_3
    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    if-lez v5, :cond_4

    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    if-gtz v5, :cond_5

    :cond_4
    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-static {v7, v8, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v8, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    :cond_5
    iget-boolean v5, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v5, :cond_6

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v8

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v8

    move v5, v6

    :goto_0
    iget-boolean v9, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    const/16 v10, 0xd4

    if-eqz v9, :cond_8

    if-lt v1, v5, :cond_7

    if-le v1, v8, :cond_8

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-eq v9, v7, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-eq v9, v10, :cond_8

    return v7

    :cond_8
    const/4 v11, 0x3

    const/4 v14, -0x1

    if-eq v3, v7, :cond_31

    if-eq v3, v11, :cond_31

    if-eq v3, v10, :cond_31

    const/16 v10, 0xd5

    if-eq v3, v10, :cond_9

    goto/16 :goto_13

    :cond_9
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    if-eqz v3, :cond_25

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v3

    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    if-eqz v4, :cond_13

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    iput-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v4

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    if-ne v4, v14, :cond_10

    add-int/lit8 v4, v3, -0x1

    move v10, v4

    move v11, v6

    move v15, v11

    :goto_1
    if-ltz v10, :cond_e

    invoke-virtual {v0, v10}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v13

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    if-lt v14, v12, :cond_a

    if-gt v14, v13, :cond_a

    iput-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v10, v4

    iput v10, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    goto :goto_4

    :cond_a
    sub-int/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-ne v10, v4, :cond_b

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v11

    add-int/2addr v11, v4

    iput v11, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v11

    add-int/2addr v11, v4

    iput v11, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    move v11, v9

    :goto_2
    move v15, v12

    goto :goto_3

    :cond_b
    if-gt v9, v11, :cond_c

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v11

    add-int/2addr v11, v10

    iput v11, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    move v11, v9

    :cond_c
    if-gt v12, v15, :cond_d

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v9

    add-int/2addr v9, v10

    iput v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    goto :goto_2

    :cond_d
    :goto_3
    add-int/lit8 v10, v10, -0x1

    const/4 v14, -0x1

    goto :goto_1

    :cond_e
    :goto_4
    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v4, :cond_11

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v4, v9

    invoke-virtual {v0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    if-eqz v4, :cond_f

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v9, v4

    iput v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    :cond_f
    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v4, v9

    invoke-virtual {v0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    if-eqz v4, :cond_11

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v9, v4

    iput v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    goto :goto_5

    :cond_10
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v4, v9

    invoke-virtual {v0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    :cond_11
    :goto_5
    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v4, :cond_12

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v9, v4

    iput v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    :cond_12
    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    :cond_13
    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    if-nez v4, :cond_14

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    if-nez v4, :cond_14

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    iput-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    :cond_14
    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    if-gez v1, :cond_15

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    goto :goto_6

    :cond_15
    if-le v1, v8, :cond_16

    iput v8, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    :cond_16
    :goto_6
    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v2

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    if-ge v2, v4, :cond_17

    move v9, v2

    goto :goto_7

    :cond_17
    move v9, v4

    :goto_7
    iput v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    if-ge v9, v10, :cond_18

    move v11, v9

    goto :goto_8

    :cond_18
    move v11, v10

    :goto_8
    iput v11, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    if-le v4, v2, :cond_19

    move v2, v4

    :cond_19
    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    if-le v10, v9, :cond_1a

    move v9, v10

    :cond_1a
    iput v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    move v2, v6

    :goto_9
    if-ge v2, v3, :cond_24

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_23

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_23

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    if-le v13, v10, :cond_1b

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    if-le v14, v9, :cond_1b

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    if-ge v14, v12, :cond_1b

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    if-lt v14, v11, :cond_21

    :cond_1b
    if-le v13, v10, :cond_1c

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    if-lt v14, v12, :cond_1e

    :cond_1c
    if-ge v13, v10, :cond_1d

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    if-gt v14, v10, :cond_1e

    :cond_1d
    if-ge v13, v12, :cond_22

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    if-le v13, v12, :cond_22

    :cond_1e
    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    if-lt v12, v9, :cond_1f

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    if-le v13, v11, :cond_21

    :cond_1f
    if-gt v12, v9, :cond_20

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    if-gt v13, v9, :cond_21

    :cond_20
    if-ge v12, v11, :cond_22

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    if-lt v12, v11, :cond_22

    :cond_21
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v9

    iput v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_23

    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_23

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_23

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    const/4 v10, -0x1

    invoke-direct {v0, v9, v10}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {v0, v9}, Landroid/widget/SemHorizontalAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v10

    invoke-direct {v0, v4, v9, v10, v11}, Landroid/widget/SemHorizontalAbsListView;->semNotifyMultiSelectState(Landroid/view/View;IJ)Z

    goto :goto_a

    :cond_22
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v9

    iput v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_23

    iget-object v10, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_23

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    const/4 v10, -0x1

    invoke-direct {v0, v9, v10}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {v0, v9}, Landroid/widget/SemHorizontalAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v10

    invoke-direct {v0, v4, v9, v10, v11}, Landroid/widget/SemHorizontalAbsListView;->semNotifyMultiSelectState(Landroid/view/View;IJ)Z

    :cond_23
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    :cond_24
    move v4, v7

    :cond_25
    if-eqz v4, :cond_2f

    if-lt v1, v5, :cond_26

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    add-int/2addr v5, v2

    if-gt v1, v5, :cond_26

    move v2, v7

    goto :goto_b

    :cond_26
    move v2, v6

    :goto_b
    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    sub-int v3, v8, v3

    if-lt v1, v3, :cond_27

    if-gt v1, v8, :cond_27

    move v1, v7

    goto :goto_c

    :cond_27
    move v1, v6

    :goto_c
    if-nez v2, :cond_2b

    if-eqz v1, :cond_28

    goto :goto_d

    :cond_28
    iget-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-eqz v1, :cond_29

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v1, :cond_29

    invoke-interface {v1, v0, v6}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    :cond_29
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iput-wide v1, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_2a
    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto :goto_f

    :cond_2b
    :goto_d
    iget-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v1, :cond_2c

    iput-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v1, :cond_2c

    invoke-interface {v1, v0, v7}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    :cond_2c
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    if-eqz v2, :cond_2d

    const/4 v9, 0x2

    goto :goto_e

    :cond_2d
    move v9, v7

    :goto_e
    iput v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    :cond_2e
    :goto_f
    iget-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    goto :goto_10

    :cond_2f
    iget-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    if-eqz v1, :cond_30

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_30
    :goto_10
    iput-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    goto/16 :goto_13

    :cond_31
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    const/4 v4, 0x0

    if-nez v3, :cond_39

    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-eqz v3, :cond_32

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v3, :cond_32

    invoke-interface {v3, v0, v6}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    :cond_32
    const-wide/16 v8, 0x0

    iput-wide v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    iput-wide v8, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    if-eqz v3, :cond_39

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_38

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_33

    if-ne v3, v11, :cond_38

    :cond_33
    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v6

    :cond_34
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    iget-object v9, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v9, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_34

    move v5, v7

    goto :goto_11

    :cond_35
    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v3, v11, :cond_36

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_36

    if-eqz v5, :cond_36

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, v3}, Landroid/widget/SemHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_36
    iget-boolean v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    if-eqz v3, :cond_38

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_37
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_37

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/SemHorizontalAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v9

    invoke-virtual {v0, v4, v8, v9, v10}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_12

    :cond_38
    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStop(II)V

    :cond_39
    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    iput-boolean v7, v0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    const/4 v10, -0x1

    iput v10, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    iput-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    iput-boolean v6, v0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    const/4 v10, -0x1

    iput v10, v0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    iput-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    iput v10, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    iput-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    iput v10, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    iput v6, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    iget-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v1, :cond_3a

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    :cond_3a
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    invoke-virtual {v1, v7}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_3b
    :goto_13
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v4

    invoke-virtual {p0, v2, v2, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v0, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v4, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHeight()I

    move-result v4

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->invalidate(IIII)V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    return-void
.end method

.method abstract blacklist fillGap(Z)V
.end method

.method abstract blacklist fillGapRTL(Z)V
.end method

.method blacklist findClosestMotionRow(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result p1

    if-eq p1, v1, :cond_1

    return p1

    :cond_1
    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method abstract blacklist findMotionRow(I)I
.end method

.method public blacklist findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public blacklist finishMultiChoiceMode()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method public blacklist fling(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    return-void
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0, v1}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(III)V

    return-object p0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public blacklist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method blacklist getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object p1
.end method

.method protected whitelist getBottomPaddingOffset()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingBottom:I

    return p0
.end method

.method public blacklist getCacheColorHint()I
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    return p0
.end method

.method public blacklist getCheckedItemCount()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    return p0
.end method

.method public blacklist getCheckedItemIds()[J
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    new-array v2, p0, [J

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    new-array p0, v1, [J

    return-object p0
.end method

.method public blacklist getCheckedItemPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getChoiceMode()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    return p0
.end method

.method protected whitelist getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object p0
.end method

.method public whitelist getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, p1}, Landroid/widget/SemHorizontalAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method blacklist getFooterViewsCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method blacklist getHeaderViewsCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getHorizontalScrollbarHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result p0

    return p0
.end method

.method protected whitelist getLeftFadingEdgeStrength()F
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    invoke-super {p0}, Landroid/widget/AdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v2, :cond_2

    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_2
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    if-ge v0, v3, :cond_4

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    sub-int/2addr v0, p0

    neg-int p0, v0

    int-to-float p0, p0

    div-float/2addr p0, v2

    return p0

    :cond_4
    :goto_2
    return v1
.end method

.method protected whitelist getLeftPaddingOffset()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    neg-int p0, p0

    return p0
.end method

.method public blacklist getListPaddingBottom()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public blacklist getListPaddingLeft()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public blacklist getListPaddingRight()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public blacklist getListPaddingTop()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method protected whitelist getRightFadingEdgeStrength()F
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    invoke-super {p0}, Landroid/widget/AdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v2, :cond_2

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_2
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    sub-int v4, v2, v4

    if-le v0, v4, :cond_4

    sub-int/2addr v0, v2

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    div-float/2addr p0, v3

    return p0

    :cond_4
    :goto_2
    return v1
.end method

.method protected whitelist getRightPaddingOffset()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    return p0
.end method

.method public whitelist getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method blacklist getSelectionModeForAccessibility()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChoiceMode()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public blacklist getSelector()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public whitelist getSolidColor()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    return p0
.end method

.method public blacklist getTextFilter()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected whitelist getTopPaddingOffset()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingTop:I

    neg-int p0, p0

    return p0
.end method

.method public blacklist getTouchSlop()I
    .locals 0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    return p0
.end method

.method public blacklist getTranscriptMode()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    return p0
.end method

.method blacklist getWidthForPosition(I)I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    sub-int v0, p1, v0

    if-ltz v0, :cond_0

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {p0, v0, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    return v1
.end method

.method protected blacklist handleDataChanged()V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    :cond_0
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->confirmCheckedPositionsById()V

    :cond_1
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clearTransientStateViews()V

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v0, :cond_11

    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    if-eqz v6, :cond_c

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v6, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    return-void

    :cond_2
    if-ne v6, v5, :cond_7

    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    if-eqz v6, :cond_3

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget-boolean v9, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v9, :cond_4

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    goto :goto_0

    :cond_4
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    :goto_0
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    goto :goto_1

    :cond_5
    move v9, v8

    :goto_1
    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v10, v6

    if-lt v10, v1, :cond_6

    if-gt v9, v8, :cond_6

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    return-void

    :cond_6
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->awakenScrollBars()Z

    :cond_7
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncMode:I

    const/4 v6, 0x5

    if-eqz v1, :cond_9

    if-eq v1, v5, :cond_8

    goto :goto_3

    :cond_8
    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    return-void

    :cond_9
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_a

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->findSyncPosition()I

    move-result v1

    if-ltz v1, :cond_c

    invoke-virtual {p0, v1, v5}, Landroid/widget/SemHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result v8

    if-ne v8, v1, :cond_c

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    iget-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_b

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    goto :goto_2

    :cond_b
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    return-void

    :cond_c
    :goto_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedItemPosition()I

    move-result v1

    if-lt v1, v0, :cond_d

    add-int/lit8 v1, v0, -0x1

    :cond_d
    if-gez v1, :cond_e

    move v1, v4

    :cond_e
    invoke-virtual {p0, v1, v5}, Landroid/widget/SemHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result v0

    if-ltz v0, :cond_f

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    return-void

    :cond_f
    invoke-virtual {p0, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result v0

    if-ltz v0, :cond_11

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    return-void

    :cond_10
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    if-ltz v0, :cond_11

    return-void

    :cond_11
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-eqz v0, :cond_12

    goto :goto_4

    :cond_12
    move v3, v5

    :goto_4
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    const-wide/high16 v5, -0x8000000000000000L

    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedRowId:J

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNextSelectedPosition:I

    iput-wide v5, p0, Landroid/widget/SemHorizontalAbsListView;->mNextSelectedRowId:J

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->checkSelectionChanged()V

    return-void
.end method

.method public blacklist hasTextFilter()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    return p0
.end method

.method blacklist hideSelector()V
    .locals 3

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNextSelectedPosition:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    :cond_2
    return-void
.end method

.method public blacklist invalidateViews()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    return-void
.end method

.method blacklist invokeOnItemScrollListener()V
    .locals 4

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onScroll(III)V

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScroll(Landroid/widget/SemHorizontalAbsListView;III)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/SemHorizontalAbsListView;->onScrollChanged(IIII)V

    return-void
.end method

.method public blacklist isFastScrollAlwaysVisible()Z
    .locals 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isAlwaysShowEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public blacklist isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-nez v0, :cond_0

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result p0

    return p0
.end method

.method protected blacklist isInFilterMode()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    return p0
.end method

.method public blacklist isItemChecked(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMultiFocusEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    return p0
.end method

.method public blacklist isMultiWindows()Z
    .locals 1

    const-string/jumbo p0, "sys.multiwindow.running"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected whitelist isPaddingOffsetRequired()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v0, 0x22

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isScrollingCacheEnabled()Z
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    return p0
.end method

.method protected blacklist isSemUsingAdapterView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isSmoothScrollbarEnabled()Z
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    return p0
.end method

.method public blacklist isStackFromBottom()Z
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    return p0
.end method

.method public blacklist isTextFilterEnabled()Z
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    return p0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method blacklist keyPressed()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isLongClickable()Z

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    :cond_4
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_5
    :goto_0
    if-eqz v1, :cond_7

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    if-nez v0, :cond_6

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView-IA;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_2
    return-void
.end method

.method protected blacklist layoutChildren()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method blacklist obtainView(I[Z)Landroid/view/View;
    .locals 7

    const-string v0, "obtainView"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    aput-boolean v0, p2, v0

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v1, v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    goto :goto_0

    :cond_1
    check-cast v2, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    :goto_0
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-eq v1, v3, :cond_3

    invoke-direct {p0, v1, p1}, Landroid/widget/SemHorizontalAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_3
    aput-boolean v4, p2, v0

    return-object v3

    :cond_4
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_5

    const/4 p0, 0x0

    return-object p0

    :cond_5
    if-eqz v3, :cond_8

    if-eq v5, v3, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->clearAccessibilityFocus()V

    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_6
    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {p2, v3, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_1

    :cond_7
    aput-boolean v4, p2, v0

    invoke-virtual {v5}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    :cond_8
    :goto_1
    iget p2, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    if-eqz p2, :cond_9

    invoke-virtual {v5, p2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {v5, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_a
    invoke-direct {p0, v5, p1}, Landroid/widget/SemHorizontalAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    if-nez p1, :cond_b

    new-instance p1, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    invoke-direct {p1, p0}, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    :cond_b
    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    if-nez p1, :cond_c

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v5, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v5
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldItemCount:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getVerticalScrollbarPosition()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollbarPosition(I)V

    :cond_2
    return-void
.end method

.method public whitelist onCancelPendingInputEvents()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method protected whitelist onCreateDrawableState(I)[I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Landroid/widget/SemHorizontalAbsListView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object p0

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    aget v1, p0, p1

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object p0
.end method

.method public whitelist onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clear()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_3
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_5
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_6
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_8
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    :cond_9
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    return-void
.end method

.method protected whitelist onDisplayHint(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    :cond_2
    :goto_0
    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    return-void
.end method

.method public whitelist onFilterComplete(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    :cond_0
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_1

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-gez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldItemCount:I

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    :cond_1
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalScrollFactor()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0, v0}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-nez v0, :cond_4

    return v4

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    and-int/2addr v0, v4

    if-eqz v0, :cond_4

    :cond_3
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v1, v0, v2

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getVerticalScrollFactor()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0, v0}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-nez v0, :cond_4

    return v4

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public whitelist onGlobalLayout()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    :cond_1
    return-void
.end method

.method public whitelist onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result p0

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_1

    const/16 p0, 0x1000

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_1
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x1

    if-ne p2, p1, :cond_2

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    const/16 p1, 0x8

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x10

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isLongClickable()Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x20

    invoke-virtual {p3, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    return-void

    :cond_4
    :goto_1
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public whitelist onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_0
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    const/4 v2, 0x0

    if-nez v1, :cond_d

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    const/4 v1, 0x6

    const/4 v4, 0x2

    if-eqz v0, :cond_8

    const/4 v5, -0x1

    if-eq v0, v3, :cond_7

    if-eq v0, v4, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eqz v0, :cond_5

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v5, :cond_6

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    move v0, v2

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initVelocityTrackerIfNotExists()V

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v0}, Landroid/widget/SemHorizontalAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_b

    return v3

    :cond_7
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->stopNestedScroll()V

    goto :goto_0

    :cond_8
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eq v0, v1, :cond_c

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result v6

    const/4 v7, 0x4

    if-eq v0, v7, :cond_a

    if-ltz v6, :cond_a

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v8, v6, v8

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    :cond_a
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initOrResetVelocityTracker()V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->startNestedScroll(I)Z

    if-ne v0, v7, :cond_b

    return v3

    :cond_b
    :goto_0
    return v2

    :cond_c
    :goto_1
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    return v3

    :cond_d
    :goto_2
    return v2
.end method

.method blacklist onJumpScrollToTopFinished()V
    .locals 1

    const-string p0, "SemHorizontalAbsListView"

    const-string v0, "onJumpScrollToTopFinished()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 p2, 0x1f

    if-eq p1, p2, :cond_2

    const/16 p2, 0x3b

    const/4 v0, 0x1

    if-eq p1, p2, :cond_1

    const/16 p2, 0x3c

    if-eq p1, p2, :cond_1

    const/16 p2, 0x71

    if-eq p1, p2, :cond_0

    const/16 p2, 0x72

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-ltz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget p2, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget p2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-wide v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    return v3

    :cond_2
    const/16 v1, 0x1f

    if-eq p1, v1, :cond_9

    const/16 v1, 0x3b

    if-eq p1, v1, :cond_8

    const/16 v1, 0x3c

    if-eq p1, v1, :cond_8

    const/16 v1, 0x71

    if-eq p1, v1, :cond_7

    const/16 v1, 0x72

    if-eq p1, v1, :cond_7

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    if-nez v1, :cond_3

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    goto :goto_0

    :cond_3
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-ltz v1, :cond_a

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_a

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_a

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iget-wide v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    invoke-direct {p0, v0, v1}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    :cond_6
    :goto_1
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    if-eqz v0, :cond_a

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    goto :goto_2

    :cond_7
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_2

    :cond_8
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    goto :goto_2

    :cond_9
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    :cond_a
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroid/widget/SemHorizontalAbsListView;->mInLayout:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result p3

    const/4 p5, 0x0

    if-eqz p1, :cond_1

    move p1, p5

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->markChildrenDirty()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    iput-boolean p5, p0, Landroid/widget/SemHorizontalAbsListView;->mInLayout:Z

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x3

    iput p4, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollMax:I

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result p2

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onItemCountChanged(II)V

    :cond_2
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->useDefaultSelector()V

    :cond_0
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingTop:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget p2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPaddingBottom:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v3, p1

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    if-lt v3, p1, :cond_3

    if-gt v1, v0, :cond_3

    goto :goto_2

    :cond_3
    move p2, v2

    :goto_2
    iput-boolean p2, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    :cond_4
    return-void
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result p1

    if-nez p4, :cond_2

    if-lez p1, :cond_2

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->canScrollList(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 p3, 0x2

    invoke-virtual {p0, p3}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    iget-object p3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez p3, :cond_0

    new-instance p3, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {p3, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object p3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->dispatchNestedPreFling(FF)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    if-eqz p1, :cond_2

    neg-int p5, p4

    invoke-virtual {p0, p5, p5}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result p5

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int p2, p1, p3

    sub-int/2addr p4, p2

    :cond_3
    move v1, p2

    move v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SemHorizontalAbsListView;->dispatchNestedScroll(IIII[I)Z

    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->startNestedScroll(I)Z

    return-void
.end method

.method protected whitelist onOverScrolled(IIZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    if-eq p2, p1, :cond_0

    iget p2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollY:I

    iget p3, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    iget p4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollY:I

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->onScrollChanged(IIII)V

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidateParentIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->awakenScrollBars()Z

    :cond_0
    return-void
.end method

.method public blacklist onRemoteAdapterConnected()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setAdapter(Landroid/widget/Adapter;)V

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    :cond_0
    return v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public blacklist onRemoteAdapterDisconnected()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    instance-of v0, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/SemHorizontalAbsListView$SavedState;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_6

    check-cast p1, Landroid/os/Bundle;

    const-class v0, Landroid/widget/SemHorizontalAbsListView$SavedState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "android.widget.SemHorizontalAbsListView.SavedState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/widget/SemHorizontalAbsListView$SavedState;

    :goto_0
    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    iget v1, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncHeight:J

    iget-wide v1, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-wide v0, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    iput-wide v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncRowId:J

    iget v0, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    iget v0, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncMode:I

    goto :goto_1

    :cond_1
    iget-wide v1, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-wide v1, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncRowId:J

    iget v1, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    iget v1, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncMode:I

    :cond_2
    :goto_1
    iget-object v0, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setFilterText(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :cond_3
    iget-object v0, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_4
    iget v0, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    iget-boolean p1, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    if-eqz p1, :cond_5

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayout()V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SemHorizontalAbsListView.onRestoreInstanceState() is of neither SavedState type nor Bundle type, but of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/os/Parcelable;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemHorizontalAbsListView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isLayoutRtl()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->semGetHorizontalScrollbarPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollbarPosition(I)V

    :cond_0
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/widget/SemHorizontalAbsListView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/SemHorizontalAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    iput-wide v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    iput-wide v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object p0, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedItemId()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v6

    iput v6, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const-wide/16 v5, -0x1

    if-ltz v4, :cond_2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput-wide v5, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v0, :cond_4

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-lt v0, v4, :cond_3

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    sub-int/2addr v0, v2

    :cond_3
    iput v0, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    goto :goto_1

    :cond_4
    iput v3, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput-wide v5, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    iput v3, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    :goto_1
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    :cond_5
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    iput-boolean v2, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    :cond_7
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_9

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    :goto_3
    if-ge v3, v2, :cond_8

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    :cond_9
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    :cond_a
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "android.widget.SemHorizontalAbsListView.SavedState"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    :cond_0
    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onSizeChanged(IIII)V

    :cond_1
    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    const/4 p0, 0x1

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isTextFilterEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    iget-object p4, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p4

    if-nez p4, :cond_0

    if-lez p3, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    iput-boolean p2, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    if-nez p3, :cond_1

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    :cond_1
    :goto_0
    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of p3, p2, Landroid/widget/Filterable;

    if-eqz p3, :cond_3

    check-cast p2, Landroid/widget/Filterable;

    invoke-interface {p2}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isClickable()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isLongClickable()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_3
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_2

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->startNestedScroll(I)Z

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v3, :cond_5

    invoke-virtual {v3, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initVelocityTrackerIfNotExists()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_6

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    :cond_6
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    if-eqz v4, :cond_e

    if-eq v4, v2, :cond_d

    if-eq v4, v0, :cond_c

    const/4 v0, 0x3

    if-eq v4, v0, :cond_b

    const/4 v0, 0x5

    if-eq v4, v0, :cond_9

    const/4 v0, 0x6

    if-eq v4, v0, :cond_7

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result p1

    if-ltz p1, :cond_8

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_f

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    invoke-virtual {p0, v5, p1}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result p1

    if-ltz p1, :cond_a

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    :cond_a
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->onTouchCancel()V

    goto :goto_1

    :cond_c
    invoke-direct {p0, p1, v3}, Landroid/widget/SemHorizontalAbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_d
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_e
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    :cond_f
    :goto_1
    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_10

    invoke-virtual {p0, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_10
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    return v2

    :cond_11
    :goto_2
    return v1
.end method

.method public whitelist onTouchModeChanged(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    return-void

    :cond_1
    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    :cond_2
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    :cond_3
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_4
    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollX:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidateParentCaches()V

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->finishGlows()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    :cond_5
    return-void
.end method

.method protected whitelist onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    :cond_0
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_0
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidateParentCaches()V

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->finishGlows()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    if-ne v0, v1, :cond_5

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    if-nez v3, :cond_3

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    :cond_3
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_5

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    :cond_5
    :goto_0
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    if-nez p1, :cond_6

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    :cond_6
    return-void
.end method

.method public whitelist performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x1000

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq p1, p2, :cond_3

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result p1

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    neg-int p1, p1

    invoke-virtual {p0, p1, v1}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    return v0

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result p1

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1, v1}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    return v0

    :cond_4
    return v2
.end method

.method public whitelist performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_5

    :cond_0
    invoke-virtual {v3, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_1

    :cond_3
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    :goto_1
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_4

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    move v5, p2

    move-wide v6, p3

    invoke-virtual/range {v3 .. v8}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_2

    :cond_4
    move v5, p2

    move-wide v6, p3

    move v1, v2

    :goto_2
    move p2, v1

    move v1, v2

    goto :goto_4

    :cond_5
    move v5, p2

    move-wide v6, p3

    if-eqz v3, :cond_a

    if-ne v0, v2, :cond_a

    invoke-virtual {v3, v5, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {p2}, Landroid/util/LongSparseArray;->clear()V

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object p3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, p4, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_6
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_3

    :cond_7
    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p2

    if-nez p2, :cond_9

    :cond_8
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    :cond_9
    :goto_3
    move p2, v2

    move v1, p2

    goto :goto_4

    :cond_a
    move p2, v2

    :goto_4
    if-eqz v1, :cond_b

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->updateOnScreenCheckedViews()V

    :cond_b
    move v1, v2

    move v2, p2

    goto :goto_5

    :cond_c
    move v5, p2

    move-wide v6, p3

    :goto_5
    if-eqz v2, :cond_d

    invoke-super {p0, p1, v5, v6, v7}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result p0

    or-int/2addr p0, v1

    return p0

    :cond_d
    return v1
.end method

.method blacklist performLongPress(Landroid/view/View;IJ)Z
    .locals 8

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_1

    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne p1, v2, :cond_0

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    :cond_0
    invoke-virtual {p0, p2, v1}, Landroid/widget/SemHorizontalAbsListView;->setItemChecked(IZ)V

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->performHapticFeedback(I)Z

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p0

    goto :goto_0

    :cond_3
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_4

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p0

    iput-object p0, v3, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {v3, v3}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p0

    :cond_4
    if-eqz p0, :cond_6

    invoke-direct {v3}, Landroid/widget/SemHorizontalAbsListView;->semGetEnableVibrationAtLongPress()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/SemHorizontalAbsListView;->performHapticFeedback(I)Z

    return p0

    :cond_5
    const-string p1, "SemHorizontalAbsListView"

    const-string p2, " does not need vibration"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return p0
.end method

.method public blacklist pointToPosition(II)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    instance-of v1, p0, Landroid/widget/SemHorizontalListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/widget/SemHorizontalListView;

    iget v1, v1, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v3, 0x1

    if-lez v1, :cond_2

    move-object v4, p0

    check-cast v4, Landroid/widget/SemHorizontalListView;

    iget-object v4, v4, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_1
    if-ltz v4, :cond_5

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    if-eqz v2, :cond_3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr p0, v4

    return p0

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist pointToRowId(II)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0
.end method

.method blacklist positionSelector(ILandroid/view/View;)V
    .locals 6

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    return-void
.end method

.method blacklist positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 7

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    return-void

    :cond_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    return-void
.end method

.method blacklist positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public blacklist reclaimViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->-$$Nest$fgetmRecyclerListener(Landroid/widget/SemHorizontalAbsListView$RecycleBin;)Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    iget v4, v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v4}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    if-eqz v1, :cond_0

    invoke-interface {v1, v3}, Landroid/widget/SemHorizontalAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->removeAllViewsInLayout()V

    return-void
.end method

.method blacklist reconcileSelectedPosition()I
    .locals 2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method blacklist rememberSyncState()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncStateHorizontal()V

    return-void
.end method

.method blacklist removePendingCallbacks()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    return-void
.end method

.method public blacklist reportScrollStateChange(I)V
    .locals 2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollingByScrollbar:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    :cond_1
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v1, :cond_2

    invoke-interface {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    :cond_2
    return-void
.end method

.method blacklist requestLayoutIfNecessary()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetList()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    :cond_0
    return-void
.end method

.method blacklist resetList()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->removeAllViewsInLayout()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldSelectedPosition:I

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOldSelectedRowId:J

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    return-void
.end method

.method public blacklist resetPressItemListArray()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    return-void
.end method

.method blacklist resurrectSelection()Z
    .locals 13

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mLeft:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    const/4 v6, 0x1

    if-lt v5, v4, :cond_2

    add-int v7, v4, v0

    if-ge v5, v7, :cond_2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v0, v5, v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v7, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    add-int v7, v2, v0

    goto :goto_1

    :cond_1
    if-le v8, v3, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    sub-int v7, v3, v0

    goto :goto_1

    :cond_2
    if-ge v5, v4, :cond_9

    move v3, v1

    move v5, v3

    move v7, v5

    :goto_0
    if-ge v3, v0, :cond_7

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    if-nez v3, :cond_5

    if-gtz v4, :cond_3

    if-ge v9, v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    add-int/2addr v2, v5

    :cond_4
    move v7, v8

    move v5, v9

    :cond_5
    if-lt v9, v2, :cond_6

    add-int/2addr v3, v4

    move v5, v3

    move v7, v9

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    move v8, v7

    move v7, v5

    move v5, v4

    :cond_8
    :goto_1
    move v0, v6

    goto :goto_3

    :cond_9
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    add-int v5, v4, v0

    add-int/lit8 v7, v5, -0x1

    sub-int/2addr v0, v6

    move v10, v0

    move v8, v1

    move v9, v8

    :goto_2
    if-ltz v10, :cond_e

    invoke-virtual {p0, v10}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    if-ne v10, v0, :cond_c

    if-lt v5, v2, :cond_a

    if-le v11, v3, :cond_b

    :cond_a
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v8

    sub-int/2addr v3, v8

    :cond_b
    move v9, v11

    move v8, v12

    :cond_c
    if-gt v11, v3, :cond_d

    add-int v5, v4, v10

    move v0, v1

    move v8, v11

    move v7, v12

    goto :goto_3

    :cond_d
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    :cond_e
    move v0, v1

    move v5, v7

    move v7, v8

    move v8, v9

    :goto_3
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_f
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v3, :cond_10

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    goto :goto_4

    :cond_10
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    :goto_4
    invoke-virtual {p0, v5, v0}, Landroid/widget/SemHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result v0

    if-lt v0, v4, :cond_11

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v3

    if-gt v0, v3, :cond_11

    const/4 v2, 0x4

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    move v2, v0

    :cond_11
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    if-ltz v2, :cond_12

    return v6

    :cond_12
    return v1
.end method

.method blacklist resurrectSelectionIfNeeded()Z
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist semGetItemCount()I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result p0

    return p0
.end method

.method protected blacklist semGetScaledMinScrollbarTouchTarget(Landroid/view/ViewConfiguration;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist semIsHorizontalScrollBarHidden()Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isFastScrollEnabled()Z

    move-result p0

    return p0
.end method

.method protected blacklist semIsShowingScrollbar()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/AdapterView;->semIsShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist semNotifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 6

    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v5, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-super/range {v0 .. v5}, Landroid/widget/AdapterView;->semNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist semSetClickableInMultiSelectMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    return-void
.end method

.method public blacklist semSetCustomMultiChoiceMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    return-void
.end method

.method public blacklist semSetDragBlockEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    return-void
.end method

.method public blacklist semSetEnableVibrationAtLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    return-void
.end method

.method public blacklist semSetHoverScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateChanged:Z

    return-void
.end method

.method public blacklist semSetMultiFocusEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    return-void
.end method

.method public blacklist semSetSelection(I)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result p1

    sub-int p1, v0, p1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setSelection(I)V

    return-void
.end method

.method public blacklist semSmoothScrollBy(I)V
    .locals 3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView-IA;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    const/high16 v0, 0x43160000    # 150.0f

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDensityScale:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    if-le v1, v2, :cond_3

    if-lez p1, :cond_2

    :goto_0
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    if-le p1, v1, :cond_3

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    neg-int v2, v1

    if-ge p1, v2, :cond_3

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method blacklist sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 9

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->acceptFilter()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    move v3, v1

    move v0, v2

    goto :goto_2

    :cond_1
    :pswitch_0
    move v0, v1

    move v3, v0

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    move v3, v1

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_4
    :goto_0
    move v0, v2

    goto :goto_1

    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_1
    move v3, v0

    move v0, v1

    :goto_2
    if-eqz v0, :cond_13

    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {p3, v4, v5, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, p3

    :goto_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/16 v5, 0x72

    const/16 v6, 0x71

    const/16 v7, 0x3c

    const/16 v8, 0x3b

    if-eqz v4, :cond_e

    if-eq v4, v2, :cond_9

    const/4 v0, 0x2

    if-eq v4, v0, :cond_8

    goto :goto_8

    :cond_8
    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_9
    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p2, p1, v0}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eq p1, v8, :cond_d

    if-ne p1, v7, :cond_a

    goto :goto_5

    :cond_a
    if-eq p1, v6, :cond_c

    if-ne p1, v5, :cond_b

    goto :goto_4

    :cond_b
    return p2

    :cond_c
    :goto_4
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    return p2

    :cond_d
    :goto_5
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    return p2

    :cond_e
    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p2, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eq p1, v8, :cond_12

    if-ne p1, v7, :cond_f

    goto :goto_7

    :cond_f
    if-eq p1, v6, :cond_11

    if-ne p1, v5, :cond_10

    goto :goto_6

    :cond_10
    return p2

    :cond_11
    :goto_6
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    return p2

    :cond_12
    :goto_7
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    return p2

    :cond_13
    :goto_8
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setChoiceMode(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez p1, :cond_1

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :cond_1
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_2
    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->clearChoices()V

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setLongClickable(Z)V

    :cond_3
    iget p1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    return-void

    :cond_4
    if-ne p1, v0, :cond_5

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    return-void

    :cond_5
    if-eqz p1, :cond_7

    if-ne p1, v2, :cond_6

    goto :goto_0

    :cond_6
    return-void

    :cond_7
    :goto_0
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    return-void
.end method

.method public blacklist setDrawSelectorOnTop(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public blacklist setEnableHoverDrawable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    return-void
.end method

.method public blacklist setEnablePaddingInHoverScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    return-void
.end method

.method public blacklist setFastScrollAlwaysVisible(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollEnabled(Z)V

    :cond_0
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void

    :cond_1
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$1;-><init>(Landroid/widget/SemHorizontalAbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public blacklist setFastScrollEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerEnabledUiThread(Z)V

    :cond_0
    return-void
.end method

.method public blacklist setFastScrollStyle(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-nez v0, :cond_0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollStyle:I

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setStyle(I)V

    return-void
.end method

.method public blacklist setFilterText(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->clearSavedState()V

    :cond_1
    return-void
.end method

.method public blacklist setForcedClick(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    return-void
.end method

.method protected blacklist setFrame(IIII)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWindowVisibility()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-boolean p3, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->positionPopup()V

    :cond_1
    return p1
.end method

.method public blacklist setFriction(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_0
    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-static {p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->-$$Nest$fgetmScroller(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    return-void
.end method

.method public blacklist setItemChecked(IZ)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x3

    if-eqz p2, :cond_2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SemHorizontalAbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_a

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    if-nez p2, :cond_5

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz v0, :cond_6

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    :cond_6
    if-eqz p2, :cond_8

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v0, :cond_7

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_7
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_5

    :cond_8
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p1

    if-nez p1, :cond_f

    :cond_9
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_5

    :cond_a
    :goto_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p2, :cond_b

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    :cond_b
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    :cond_c
    :goto_3
    if-eq v0, p2, :cond_e

    if-eqz p2, :cond_d

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_4

    :cond_d
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    :cond_e
    :goto_4
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v6, p1

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_f
    :goto_5
    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mInLayout:Z

    if-nez p1, :cond_11

    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mBlockLayoutRequests:Z

    if-nez p1, :cond_11

    iget-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    if-nez p1, :cond_10

    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    :cond_10
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayout()V

    :cond_11
    :goto_6
    return-void
.end method

.method public blacklist setMultiChoiceModeListener(Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    :cond_0
    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;)V

    return-void
.end method

.method public blacklist setOnScrollListener(Landroid/widget/SemHorizontalAbsListView$OnScrollListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    return-void
.end method

.method public blacklist setOverScrollEffectPadding(II)V
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mGlowPaddingTop:I

    iput p2, p0, Landroid/widget/SemHorizontalAbsListView;->mGlowPaddingBottom:I

    return-void
.end method

.method public whitelist setOverScrollMode(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p0, v1}, Landroid/widget/EdgeEffect;->semSetHostView(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    return-void
.end method

.method public blacklist setRecyclerListener(Landroid/widget/SemHorizontalAbsListView$RecyclerListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-static {p0, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->-$$Nest$fputmRecyclerListener(Landroid/widget/SemHorizontalAbsListView$RecycleBin;Landroid/widget/SemHorizontalAbsListView$RecyclerListener;)V

    return-void
.end method

.method public blacklist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    return-void
.end method

.method public blacklist setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .locals 3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    new-instance v0, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setAdapter(Landroid/widget/Adapter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public blacklist setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    :cond_0
    return-void
.end method

.method public whitelist setScrollBarStyle(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollBarStyle(I)V

    :cond_0
    return-void
.end method

.method public blacklist setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    iput-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    return-void
.end method

.method public blacklist setScrollingCacheEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    :cond_0
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    return-void
.end method

.method public blacklist setSelectionFromStart(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalAbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :cond_1
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    :cond_2
    :goto_0
    if-ltz p1, :cond_6

    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSpecificTop:I

    :goto_1
    iget-boolean p2, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedSync:Z

    if-eqz p2, :cond_4

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncPosition:I

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSyncRowId:J

    :cond_4
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayout()V

    :cond_6
    :goto_2
    return-void
.end method

.method abstract blacklist setSelectionInt(I)V
.end method

.method public blacklist setSelector(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public blacklist setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    return-void
.end method

.method public blacklist setSmoothScrollbarEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public blacklist setStackFromBottom(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public blacklist setTextFilterEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    return-void
.end method

.method public blacklist setTiltMotionEvent(Z)V
    .locals 0

    return-void
.end method

.method public blacklist setTouchSlop(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    return-void
.end method

.method public blacklist setTranscriptMode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    return-void
.end method

.method public blacklist setVelocityScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    return-void
.end method

.method blacklist setVisibleRangeHint(II)V
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    :cond_0
    return-void
.end method

.method blacklist shouldShowSelector()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isPressed()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method blacklist shouldShowSelectorDefault()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isPressed()Z

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

.method public blacklist showContextMenu(FFI)Z
    .locals 1

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->showContextMenu()Z

    move-result p0

    return p0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    const/4 v0, 0x0

    if-ltz v3, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    :goto_0
    if-nez v0, :cond_1

    iget p0, v1, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int p0, v3, p0

    invoke-virtual {v1, p0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0, v3, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p0

    iput-object p0, v1, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {v1, v2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public blacklist smoothScrollBy(II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    return-void
.end method

.method blacklist smoothScrollBy(IIZ)V
    .locals 8

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    add-int v2, v0, v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :goto_0
    if-eqz p1, :cond_6

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-eqz v7, :cond_6

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ne v1, v3, :cond_2

    if-ltz p1, :cond_6

    :cond_2
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez v1, :cond_3

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v2, v1, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v1

    if-ne v1, v4, :cond_3

    if-gtz p1, :cond_6

    :cond_3
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    if-ne v0, v4, :cond_4

    if-gtz p1, :cond_6

    :cond_4
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v2, v0, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ne v0, v3, :cond_5

    if-gez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startScroll(IIZ)V

    return-void

    :cond_6
    :goto_1
    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_7
    return-void
.end method

.method blacklist smoothScrollByOffset(I)V
    .locals 4

    const/4 v0, -0x1

    if-gez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-le v1, v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/2addr v3, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v0, v2

    int-to-float v0, v0

    int-to-float v2, v3

    div-float/2addr v0, v2

    const/high16 v2, 0x3f400000    # 0.75f

    if-gez p1, :cond_2

    cmpg-float v3, v0, v2

    if-gez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-lez p1, :cond_3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getCount()I

    move-result v0

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    :cond_4
    return-void
.end method

.method public blacklist smoothScrollToPosition(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    :cond_0
    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->start(I)V

    return-void
.end method

.method public blacklist smoothScrollToPosition(II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    :cond_0
    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->start(II)V

    return-void
.end method

.method public blacklist smoothScrollToPositionFromTop(II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    :cond_0
    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->startWithOffset(II)V

    return-void
.end method

.method public blacklist smoothScrollToPositionFromTop(III)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    :cond_0
    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->startWithOffset(III)V

    return-void
.end method

.method public blacklist startMultiChoiceMode()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method blacklist touchModeDrawsInPressedState()Z
    .locals 2

    iget p0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method blacklist trackMotionScroll(II)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    return v4

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v0, v7}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v0, v5}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v0, v7}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v11, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    const/16 v13, 0x22

    and-int/2addr v12, v13

    if-ne v12, v13, :cond_1

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v14, v11, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    move v12, v5

    move v14, v12

    :goto_0
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v15

    sub-int/2addr v15, v14

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v14, :cond_2

    sub-int v14, v9, v15

    sub-int/2addr v12, v10

    goto :goto_1

    :cond_2
    sub-int v14, v12, v6

    sub-int v12, v8, v15

    :goto_1
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v15

    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mPaddingRight:I

    sub-int/2addr v15, v5

    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mPaddingLeft:I

    sub-int/2addr v15, v5

    if-gez v1, :cond_3

    add-int/lit8 v5, v15, -0x1

    neg-int v5, v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v15, -0x1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    if-gez v2, :cond_4

    sub-int/2addr v15, v4

    neg-int v5, v15

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3

    :cond_4
    sub-int/2addr v15, v4

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_3
    iget v5, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-nez v5, :cond_6

    iget-boolean v15, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v15, :cond_5

    iget v15, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v15, v9

    iput v15, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_4

    :cond_5
    iget v15, v11, Landroid/graphics/Rect;->left:I

    sub-int v15, v6, v15

    iput v15, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_4

    :cond_6
    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v15, v2

    iput v15, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    :goto_4
    add-int v15, v5, v3

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v15, v4, :cond_8

    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_7

    iget v4, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v10

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_5

    :cond_7
    iget v4, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v8

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    goto :goto_5

    :cond_8
    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    :goto_5
    iget-boolean v4, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_b

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v15, v4, :cond_9

    iget v4, v11, Landroid/graphics/Rect;->left:I

    if-lt v10, v4, :cond_9

    if-ltz v2, :cond_9

    const/4 v4, 0x1

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    if-nez v5, :cond_a

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v6

    iget v8, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v8

    if-gt v9, v6, :cond_a

    if-gtz v2, :cond_a

    :goto_7
    const/4 v6, 0x1

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    goto :goto_9

    :cond_b
    if-nez v5, :cond_c

    iget v4, v11, Landroid/graphics/Rect;->left:I

    if-lt v6, v4, :cond_c

    if-ltz v2, :cond_c

    const/4 v4, 0x1

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    :goto_8
    iget v6, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ne v15, v6, :cond_a

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v6

    iget v9, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v9

    if-gt v8, v6, :cond_a

    if-gtz v2, :cond_a

    goto :goto_7

    :goto_9
    if-nez v4, :cond_2e

    if-eqz v6, :cond_d

    goto/16 :goto_17

    :cond_d
    if-gez v2, :cond_e

    const/4 v4, 0x1

    goto :goto_a

    :cond_e
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->isInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    :cond_f
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getHeaderViewsCount()I

    move-result v8

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getFooterViewsCount()I

    move-result v10

    sub-int/2addr v9, v10

    iget-boolean v10, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v10, :cond_19

    if-eqz v4, :cond_14

    neg-int v3, v2

    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    and-int/2addr v10, v13

    if-ne v10, v13, :cond_10

    iget v10, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v10

    :cond_10
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_b
    if-ltz v7, :cond_13

    invoke-virtual {v0, v7}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v15

    if-lt v15, v3, :cond_11

    goto :goto_c

    :cond_11
    add-int/lit8 v10, v10, 0x1

    add-int v11, v5, v7

    invoke-virtual {v13}, Landroid/view/View;->clearAccessibilityFocus()V

    if-lt v11, v8, :cond_12

    if-ge v11, v9, :cond_12

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v15, v13, v11}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_12
    add-int/lit8 v11, v7, -0x1

    move/from16 v17, v11

    move v11, v7

    move/from16 v7, v17

    goto :goto_b

    :cond_13
    :goto_c
    move/from16 p1, v1

    goto/16 :goto_13

    :cond_14
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v2

    iget v10, v0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    and-int/2addr v10, v13

    if-ne v10, v13, :cond_15

    iget v10, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v10

    :cond_15
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v3, :cond_18

    invoke-virtual {v0, v11}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    if-gt v15, v7, :cond_16

    goto :goto_f

    :cond_16
    add-int/lit8 v10, v10, 0x1

    add-int v15, v5, v11

    invoke-virtual {v13}, Landroid/view/View;->clearAccessibilityFocus()V

    if-lt v15, v8, :cond_17

    if-ge v15, v9, :cond_17

    move/from16 p1, v1

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v1, v13, v15}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_e

    :cond_17
    move/from16 p1, v1

    :goto_e
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    goto :goto_d

    :cond_18
    :goto_f
    move/from16 p1, v1

    goto :goto_11

    :cond_19
    move/from16 p1, v1

    if-eqz v4, :cond_1e

    neg-int v1, v2

    iget v7, v0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    and-int/2addr v7, v13

    if-ne v7, v13, :cond_1a

    iget v7, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v7

    :cond_1a
    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_10
    if-ge v7, v3, :cond_1d

    invoke-virtual {v0, v7}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v13

    if-lt v13, v1, :cond_1b

    goto :goto_11

    :cond_1b
    add-int/lit8 v10, v10, 0x1

    add-int v13, v5, v7

    invoke-virtual {v11}, Landroid/view/View;->clearAccessibilityFocus()V

    if-lt v13, v8, :cond_1c

    if-ge v13, v9, :cond_1c

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v15, v11, v13}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_1d
    :goto_11
    const/4 v11, 0x0

    goto :goto_13

    :cond_1e
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mGroupFlags:I

    and-int/2addr v3, v13

    if-ne v3, v13, :cond_1f

    iget v3, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    :cond_1f
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_12
    if-ltz v7, :cond_22

    invoke-virtual {v0, v7}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v13

    if-gt v13, v1, :cond_20

    goto :goto_13

    :cond_20
    add-int/lit8 v10, v10, 0x1

    add-int v11, v5, v7

    invoke-virtual {v3}, Landroid/view/View;->clearAccessibilityFocus()V

    if-lt v11, v8, :cond_21

    if-ge v11, v9, :cond_21

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v13, v3, v11}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_21
    add-int/lit8 v3, v7, -0x1

    move v11, v7

    move v7, v3

    goto :goto_12

    :cond_22
    :goto_13
    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    add-int v1, v1, p1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewNewLeft:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView;->mBlockLayoutRequests:Z

    if-lez v10, :cond_23

    invoke-virtual {v0, v11, v10}, Landroid/widget/SemHorizontalAbsListView;->detachViewsFromParent(II)V

    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeSkippedScrap()V

    :cond_23
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    :cond_24
    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->semOffsetChildrenLeftAndRight(I)V

    iget-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v1, :cond_25

    if-nez v4, :cond_25

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v1, v10

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    goto :goto_14

    :cond_25
    if-nez v1, :cond_26

    if-eqz v4, :cond_26

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v1, v10

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    :cond_26
    :goto_14
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-boolean v2, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v2, :cond_28

    if-lt v14, v1, :cond_27

    if-ge v12, v1, :cond_2a

    :cond_27
    invoke-virtual {v0, v4}, Landroid/widget/SemHorizontalAbsListView;->fillGapRTL(Z)V

    goto :goto_15

    :cond_28
    if-lt v14, v1, :cond_29

    if-ge v12, v1, :cond_2a

    :cond_29
    invoke-virtual {v0, v4}, Landroid/widget/SemHorizontalAbsListView;->fillGap(Z)V

    :cond_2a
    :goto_15
    const/4 v1, -0x1

    if-nez v6, :cond_2b

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    if-eq v2, v1, :cond_2b

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_2d

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2d

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_16

    :cond_2b
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    if-eq v2, v1, :cond_2c

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    if-ltz v2, :cond_2d

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2d

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_16

    :cond_2c
    iget-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_2d
    :goto_16
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView;->mBlockLayoutRequests:Z

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    return v1

    :cond_2e
    :goto_17
    const/4 v1, 0x0

    if-eqz v2, :cond_2f

    const/16 v16, 0x1

    return v16

    :cond_2f
    return v1
.end method

.method blacklist triggerDoubleFling(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getLastVisiblePosition()I

    move-result p1

    mul-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->setSelection(I)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    return-void

    :cond_1
    if-gez p1, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result p1

    sub-int p1, v0, p1

    mul-int/lit8 v1, v1, 0x3

    if-le p1, v1, :cond_2

    sub-int p1, v0, v1

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setSelection(I)V

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    :cond_3
    return-void
.end method

.method blacklist triggerJumpScrollToTop()V
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->triggerDoubleFling(I)V

    return-void
.end method

.method public blacklist updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method blacklist updateScrollIndicators()V
    .locals 6

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v4, v0

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v4, v5, :cond_1

    goto :goto_0

    :cond_0
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v4, :cond_1

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-nez v4, :cond_4

    if-lez v0, :cond_4

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v0, v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v3

    :cond_4
    :goto_3
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_4

    :cond_5
    move v4, v1

    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v0

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lez v4, :cond_8

    goto :goto_5

    :cond_7
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int/2addr v4, v0

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-ge v4, v5, :cond_8

    :goto_5
    move v4, v2

    goto :goto_6

    :cond_8
    move v4, v3

    :goto_6
    if-nez v4, :cond_b

    if-lez v0, :cond_b

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_9

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_7

    :cond_9
    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mRight:I

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_a

    goto :goto_8

    :cond_a
    move v2, v3

    :goto_8
    move v4, v2

    :cond_b
    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v4, :cond_c

    move v1, v3

    :cond_c
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method blacklist updateSelectorState()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    :cond_2
    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
