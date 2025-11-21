.class public Landroid/widget/RelativeLayout;
.super Landroid/view/ViewGroup;
.source "RelativeLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$DependencyGraph;,
        Landroid/widget/RelativeLayout$LayoutParams;,
        Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;,
        Landroid/widget/RelativeLayout$ExpandTopBarRunnable;,
        Landroid/widget/RelativeLayout$ReleaseScrollRunnable;,
        Landroid/widget/RelativeLayout$AppWidgetListScrollListener;
    }
.end annotation


# static fields
.field public static final whitelist ABOVE:I = 0x2

.field public static final whitelist ALIGN_BASELINE:I = 0x4

.field public static final whitelist ALIGN_BOTTOM:I = 0x8

.field public static final whitelist ALIGN_END:I = 0x13

.field public static final whitelist ALIGN_LEFT:I = 0x5

.field public static final whitelist ALIGN_PARENT_BOTTOM:I = 0xc

.field public static final whitelist ALIGN_PARENT_END:I = 0x15

.field public static final whitelist ALIGN_PARENT_LEFT:I = 0x9

.field public static final whitelist ALIGN_PARENT_RIGHT:I = 0xb

.field public static final whitelist ALIGN_PARENT_START:I = 0x14

.field public static final whitelist ALIGN_PARENT_TOP:I = 0xa

.field public static final whitelist ALIGN_RIGHT:I = 0x7

.field public static final whitelist ALIGN_START:I = 0x12

.field public static final whitelist ALIGN_TOP:I = 0x6

.field private static final blacklist APPWIDGET_EXPAND_ACTION_DELAY:I = 0x5dc

.field private static final blacklist APPWIDGET_RELEASE_ACTION_DELAY:I = 0x32

.field private static final blacklist APPWIDGET_RELEASE_SCROLL_DURATION:I = 0x190

.field public static final whitelist BELOW:I = 0x3

.field public static final whitelist CENTER_HORIZONTAL:I = 0xe

.field public static final whitelist CENTER_IN_PARENT:I = 0xd

.field public static final whitelist CENTER_VERTICAL:I = 0xf

.field private static final greylist-max-o DEFAULT_WIDTH:I = 0x10000

.field public static final whitelist END_OF:I = 0x11

.field public static final whitelist LEFT_OF:I = 0x0

.field public static final whitelist RIGHT_OF:I = 0x1

.field private static final greylist-max-o RULES_HORIZONTAL:[I

.field private static final greylist-max-o RULES_VERTICAL:[I

.field public static final whitelist START_OF:I = 0x10

.field private static final blacklist TAG:Ljava/lang/String; = "RelativeLayout"

.field public static final whitelist TRUE:I = -0x1

.field private static final greylist-max-o VALUE_NOT_SET:I = -0x80000000

.field private static final greylist-max-o VERB_COUNT:I = 0x16


# instance fields
.field private greylist-max-o mAllowBrokenMeasureSpecs:Z

.field private blacklist mAppWidgetImmersiveEnabled:Z

.field private blacklist mAppWidgetListView:Landroid/widget/AbsListView;

.field private blacklist mAppWidgetToolBar:Landroid/view/View;

.field private greylist-max-o mBaselineView:Landroid/view/View;

.field private final greylist-max-o mContentBounds:Landroid/graphics/Rect;

.field private greylist-max-o mDirtyHierarchy:Z

.field private blacklist mExpandOffsetAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mExpandTopBarRunnable:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

.field private final greylist-max-o mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private greylist-max-p mGravity:I

.field private greylist-max-o mIgnoreGravity:I

.field private greylist-max-o mMeasureVerticalWithPaddingMargin:Z

.field private blacklist mReleaseScrollRunnable:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

.field private blacklist mScrollListener:Landroid/widget/RelativeLayout$AppWidgetListScrollListener;

.field private final greylist-max-o mSelfBounds:Landroid/graphics/Rect;

.field private greylist-max-o mSortedHorizontalChildren:[Landroid/view/View;

.field private greylist-max-o mSortedVerticalChildren:[Landroid/view/View;

.field private greylist-max-o mTopToBottomLeftToRightSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;
    .locals 0

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpandTopBarRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ExpandTopBarRunnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mExpandTopBarRunnable:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReleaseScrollRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ReleaseScrollRunnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mReleaseScrollRunnable:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExpandTopBarRunnable(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$ExpandTopBarRunnable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RelativeLayout;->mExpandTopBarRunnable:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReleaseScrollRunnable(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$ReleaseScrollRunnable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RelativeLayout;->mReleaseScrollRunnable:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/16 v4, 0x8

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x5
        0x7
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    const v1, 0x800033

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    new-instance v1, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout-IA;)V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetImmersiveEnabled:Z

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;->queryCompatibilityModes(Landroid/content/Context;)V

    return-void
.end method

.method private greylist-max-o applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V
    .locals 3

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_1

    aget v0, p3, v0

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_3

    aget v0, p3, v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_3
    :goto_1
    const/4 v0, 0x5

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    :cond_4
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_5

    aget v0, p3, v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_5
    :goto_2
    const/4 v0, 0x7

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_3

    :cond_6
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_7

    aget v0, p3, v0

    if-eqz v0, :cond_7

    if-ltz p2, :cond_7

    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_7
    :goto_3
    const/16 v0, 0x9

    aget v0, p3, v0

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_8
    const/16 v0, 0xb

    aget p3, p3, v0

    if-eqz p3, :cond_9

    if-ltz p2, :cond_9

    iget p0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int/2addr p2, p0

    iget p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p2, p0

    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_9
    return-void
.end method

.method private greylist-max-o applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;->getRelatedViewBaselineOffset([I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-eq p3, v3, :cond_0

    sub-int/2addr v1, p3

    :cond_0
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    return-void

    :cond_1
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    const/4 p3, 0x2

    invoke-direct {p0, v0, p3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    sub-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_3

    aget p3, v0, p3

    if-eqz p3, :cond_3

    if-ltz p2, :cond_3

    iget p3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int p3, p2, p3

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_3
    :goto_0
    const/4 p3, 0x3

    invoke-direct {p0, v0, p3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    add-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    :cond_4
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_5

    aget p3, v0, p3

    if-eqz p3, :cond_5

    iget p3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_5
    :goto_1
    const/4 p3, 0x6

    invoke-direct {p0, v0, p3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    :cond_6
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_7

    aget p3, v0, p3

    if-eqz p3, :cond_7

    iget p3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_7
    :goto_2
    const/16 p3, 0x8

    invoke-direct {p0, v0, p3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_3

    :cond_8
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_9

    aget p3, v0, p3

    if-eqz p3, :cond_9

    if-ltz p2, :cond_9

    iget p3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int p3, p2, p3

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_9
    :goto_3
    const/16 p3, 0xa

    aget p3, v0, p3

    if-eqz p3, :cond_a

    iget p3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr p3, v1

    invoke-static {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_a
    const/16 p3, 0xc

    aget p3, v0, p3

    if-eqz p3, :cond_b

    if-ltz p2, :cond_b

    iget p0, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int/2addr p2, p0

    iget p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p2, p0

    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_b
    return-void
.end method

.method private static greylist-max-o centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p2, p0

    div-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    add-int/2addr p2, p0

    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    return-void
.end method

.method private static greylist-max-o centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr p2, p0

    div-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    add-int/2addr p2, p0

    invoke-static {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    return-void
.end method

.method private greylist-max-o compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1

    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    sub-int/2addr p0, v0

    if-eqz p0, :cond_0

    return p0

    :cond_0
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private greylist-max-o getChildMeasureSpec(IIIIIIII)I
    .locals 4

    const/4 v0, 0x0

    if-gez p8, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eqz v1, :cond_3

    iget-boolean p0, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez p0, :cond_3

    if-eq p1, v3, :cond_1

    if-eq p2, v3, :cond_1

    sub-int/2addr p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_1

    :cond_1
    if-ltz p3, :cond_2

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_2
    move p3, v0

    :goto_2
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_3
    if-ne p1, v3, :cond_4

    add-int/2addr p6, p4

    goto :goto_3

    :cond_4
    move p6, p1

    :goto_3
    if-ne p2, v3, :cond_5

    sub-int/2addr p8, p7

    sub-int/2addr p8, p5

    goto :goto_4

    :cond_5
    move p8, p2

    :goto_4
    sub-int/2addr p8, p6

    if-eq p1, v3, :cond_7

    if-eq p2, v3, :cond_7

    if-eqz v1, :cond_6

    move v2, v0

    :cond_6
    invoke-static {v0, p8}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_5

    :cond_7
    if-ltz p3, :cond_9

    if-ltz p8, :cond_8

    invoke-static {p8, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_8
    :goto_5
    move v0, v2

    goto :goto_6

    :cond_9
    const/4 p0, -0x1

    if-ne p3, p0, :cond_b

    if-eqz v1, :cond_a

    move v2, v0

    :cond_a
    invoke-static {v0, p8}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_5

    :cond_b
    const/4 p0, -0x2

    if-ne p3, p0, :cond_c

    if-ltz p8, :cond_c

    move p3, p8

    move v0, v3

    goto :goto_6

    :cond_c
    move p3, v0

    :goto_6
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private greylist-max-o getRelatedView([II)Landroid/view/View;
    .locals 3

    aget p1, p1, p2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->-$$Nest$fgetmKeyNodes(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v2}, Landroid/widget/RelativeLayout$DependencyGraph;->-$$Nest$fgetmKeyNodes(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v2

    aget v1, v1, p2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    return-object p1

    :cond_4
    return-object v0
.end method

.method private greylist-max-o getRelatedViewBaselineOffset([I)I
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object p0

    const/4 p1, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_0
    return p1
.end method

.method private greylist-max-o getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private greylist-max-o initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    sget-object v0, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    sget-object v3, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/RelativeLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 p0, 0x1

    const/4 p1, -0x1

    invoke-virtual {v5, p0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    iput p0, v1, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    const/4 p0, 0x0

    iget p1, v1, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {v5, p0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    iput p0, v1, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private greylist-max-o measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 9

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result p0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v6, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v7, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private greylist-max-o measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 9

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result p0

    const/high16 p3, 0x40000000    # 2.0f

    const/4 v1, 0x0

    if-gez p4, :cond_1

    iget-boolean v2, v0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez v2, :cond_1

    iget p4, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-ltz p4, :cond_0

    iget p2, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_2

    :cond_0
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_2

    :cond_1
    iget-boolean v2, v0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    sub-int/2addr p4, v2

    iget v0, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int/2addr p4, v0

    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr p4, v0

    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p4, v0

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    goto :goto_0

    :cond_2
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    :goto_0
    iget p2, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    goto :goto_1

    :cond_3
    const/high16 p3, -0x80000000

    :goto_1
    invoke-static {p4, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_2
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private greylist-max-o positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int/2addr p3, p0

    iget p0, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p3, p0

    invoke-static {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    return-void

    :cond_0
    iget p0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr p0, p3

    invoke-static {p2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    return-void
.end method

.method private greylist-max-o positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    :cond_0
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_5

    const/16 v1, 0xd

    aget v1, v0, v1

    if-nez v1, :cond_3

    const/16 v1, 0xe

    aget v1, v0, v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    :cond_3
    :goto_0
    if-nez p4, :cond_4

    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    :goto_1
    return v2

    :cond_5
    :goto_2
    const/16 p0, 0x15

    aget p0, v0, p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 4

    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    :cond_0
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_5

    const/16 v1, 0xd

    aget v1, v0, v1

    if-nez v1, :cond_3

    const/16 v1, 0xf

    aget v1, v0, v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget p0, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr p0, p3

    invoke-static {p2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    :cond_3
    :goto_0
    if-nez p4, :cond_4

    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    :cond_4
    iget p0, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr p0, p3

    invoke-static {p2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :goto_1
    return v2

    :cond_5
    :goto_2
    const/16 p0, 0xc

    aget p0, v0, p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o queryCompatibilityModes(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    const/16 v0, 0x12

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    return-void
.end method

.method private greylist-max-o sortChildren()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    if-eqz v1, :cond_0

    array-length v1, v1

    if-eq v1, v0, :cond_1

    :cond_0
    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    :cond_1
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-eq v1, v0, :cond_3

    :cond_2
    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    :cond_3
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    sget-object v2, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    sget-object v0, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    invoke-virtual {v1, p0, v0}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return p0
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout-IA;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    const/4 p0, 0x1

    return p0

    :cond_3
    iget-object p0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    return v1
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

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

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    sget-boolean p0, Landroid/widget/RelativeLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz p0, :cond_1

    instance-of p0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/widget/RelativeLayout$LayoutParams;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_1
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getBaseline()I
    .locals 1

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result p0

    return p0
.end method

.method public whitelist getGravity()I
    .locals 0

    iget p0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    return p0
.end method

.method public whitelist getIgnoreGravity()I
    .locals 0

    iget p0, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    return p0
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mExpandTopBarRunnable:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mReleaseScrollRunnable:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mExpandTopBarRunnable:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mExpandTopBarRunnable:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mReleaseScrollRunnable:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->cancel()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mReleaseScrollRunnable:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    :cond_0
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result p1

    iget-boolean p2, p0, Landroid/widget/RelativeLayout;->mAppWidgetImmersiveEnabled:Z

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    move p2, p4

    :goto_0
    if-ge p2, p1, :cond_2

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, p3

    invoke-virtual {p5, p4, p3, v1, v0}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    move p3, v0

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p4, p1, :cond_2

    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 p5, 0x8

    if-eq p3, p5, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p5

    invoke-static {p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-static {p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result p3

    invoke-virtual {p2, p5, v0, v1, p3}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 27

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    invoke-direct {v0}, Landroid/widget/RelativeLayout;->sortChildren()V

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    const/4 v6, -0x1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    const/high16 v7, 0x40000000    # 2.0f

    if-ne v1, v7, :cond_3

    move v8, v4

    goto :goto_2

    :cond_3
    move v8, v2

    :goto_2
    if-ne v3, v7, :cond_4

    move v9, v5

    goto :goto_3

    :cond_4
    move v9, v2

    :goto_3
    iget v10, v0, Landroid/widget/RelativeLayout;->mGravity:I

    const v11, 0x800007

    and-int/2addr v11, v10

    const v12, 0x800003

    if-eq v11, v12, :cond_5

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    move v11, v2

    :goto_4
    and-int/lit8 v10, v10, 0x70

    const/16 v12, 0x30

    if-eq v10, v12, :cond_6

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    goto :goto_5

    :cond_6
    move v10, v2

    :goto_5
    if-nez v11, :cond_7

    if-eqz v10, :cond_8

    :cond_7
    iget v14, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    if-eq v14, v6, :cond_8

    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    :goto_6
    if-eq v1, v7, :cond_9

    const/4 v1, 0x1

    goto :goto_7

    :cond_9
    move v1, v2

    :goto_7
    if-eq v3, v7, :cond_a

    const/4 v3, 0x1

    goto :goto_8

    :cond_a
    move v3, v2

    :goto_8
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v15

    if-eqz v15, :cond_b

    if-ne v4, v6, :cond_b

    const/high16 v4, 0x10000

    :cond_b
    iget-object v6, v0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    array-length v15, v6

    move/from16 v16, v2

    :goto_9
    const/16 v12, 0x8

    if-ge v2, v15, :cond_d

    aget-object v13, v6, v2

    move/from16 v19, v2

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v12, :cond_c

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v12

    invoke-direct {v0, v2, v4, v12}, Landroid/widget/RelativeLayout;->applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V

    invoke-direct {v0, v13, v2, v4, v5}, Landroid/widget/RelativeLayout;->measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    invoke-direct {v0, v13, v2, v4, v1}, Landroid/widget/RelativeLayout;->positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v16, 0x1

    :cond_c
    add-int/lit8 v2, v19, 0x1

    goto :goto_9

    :cond_d
    iget-object v2, v0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    array-length v6, v2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/high16 v15, -0x80000000

    const v19, 0x7fffffff

    move/from16 v21, v15

    move/from16 v22, v19

    move/from16 v23, v22

    const/4 v12, 0x0

    const/16 v19, 0x0

    :goto_a
    if-ge v12, v6, :cond_1a

    move/from16 v20, v1

    aget-object v1, v2, v12

    move-object/from16 v24, v2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v25, v10

    const/16 v10, 0x8

    if-eq v2, v10, :cond_18

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v10

    invoke-direct {v0, v2, v5, v10}, Landroid/widget/RelativeLayout;->applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    invoke-direct {v0, v1, v2, v5, v3}, Landroid/widget/RelativeLayout;->positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v10

    if-eqz v10, :cond_e

    const/16 v19, 0x1

    :cond_e
    const/16 v10, 0x13

    if-eqz v20, :cond_12

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v26

    if-eqz v26, :cond_10

    if-ge v13, v10, :cond_f

    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v26

    sub-int v10, v4, v26

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_b

    :cond_f
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v10

    sub-int v10, v4, v10

    move/from16 v26, v3

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v3

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_c

    :cond_10
    move/from16 v26, v3

    move v3, v10

    if-ge v13, v3, :cond_11

    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_c

    :cond_11
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v10

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v10, v3

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_c

    :cond_12
    :goto_b
    move/from16 v26, v3

    :goto_c
    if-eqz v26, :cond_14

    const/16 v3, 0x13

    if-ge v13, v3, :cond_13

    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_d

    :cond_13
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v10

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_14
    :goto_d
    if-ne v1, v14, :cond_15

    if-eqz v25, :cond_16

    :cond_15
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v10

    move/from16 v10, v23

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v23

    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v10

    move/from16 v10, v22

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v22

    :cond_16
    if-ne v1, v14, :cond_17

    if-eqz v11, :cond_19

    :cond_17
    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    move/from16 v2, v21

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v15, v1

    move/from16 v21, v2

    goto :goto_e

    :cond_18
    move/from16 v26, v3

    move/from16 v2, v21

    move/from16 v1, v22

    move/from16 v10, v23

    :cond_19
    :goto_e
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v20

    move-object/from16 v2, v24

    move/from16 v10, v25

    move/from16 v3, v26

    goto/16 :goto_a

    :cond_1a
    move/from16 v20, v1

    move-object/from16 v24, v2

    move/from16 v26, v3

    move/from16 v25, v10

    move/from16 v2, v21

    move/from16 v1, v22

    move/from16 v10, v23

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_f
    if-ge v5, v6, :cond_1d

    aget-object v13, v24, v5

    move/from16 v21, v1

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v17, v2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1c

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v12, :cond_1b

    if-eqz v3, :cond_1b

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout;->compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-gez v2, :cond_1c

    :cond_1b
    move-object v3, v1

    move-object v12, v13

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v17

    move/from16 v1, v21

    goto :goto_f

    :cond_1d
    move/from16 v21, v1

    move/from16 v17, v2

    iput-object v12, v0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    const/16 v1, 0xd

    if-eqz v20, :cond_22

    iget v2, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    add-int/2addr v8, v2

    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_1e

    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v2, :cond_1e

    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_1e
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v3, p1

    invoke-static {v2, v3}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v8

    if-eqz v16, :cond_22

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v6, :cond_22

    aget-object v3, v24, v2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v12, 0x8

    if-eq v5, v12, :cond_21

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v12

    aget v13, v12, v1

    if-nez v13, :cond_20

    const/16 v13, 0xe

    aget v13, v12, v13

    if-eqz v13, :cond_1f

    goto :goto_11

    :cond_1f
    const/16 v13, 0xb

    aget v12, v12, v13

    if-eqz v12, :cond_21

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v12, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v12, v8, v12

    sub-int/2addr v12, v3

    invoke-static {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v12

    add-int/2addr v12, v3

    invoke-static {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_12

    :cond_20
    :goto_11
    invoke-static {v3, v5, v8}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_21
    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_22
    if-eqz v26, :cond_27

    iget v2, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    add-int/2addr v9, v2

    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_23

    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v2, :cond_23

    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_23
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v3, p2

    invoke-static {v2, v3}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v9

    if-eqz v19, :cond_27

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v6, :cond_27

    aget-object v3, v24, v2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v12, 0x8

    if-eq v5, v12, :cond_26

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v12

    aget v13, v12, v1

    if-nez v13, :cond_25

    const/16 v13, 0xf

    aget v13, v12, v13

    if-eqz v13, :cond_24

    goto :goto_14

    :cond_24
    const/16 v13, 0xc

    aget v12, v12, v13

    if-eqz v12, :cond_26

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v12, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v12, v9, v12

    sub-int/2addr v12, v3

    invoke-static {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v12

    add-int/2addr v12, v3

    invoke-static {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_15

    :cond_25
    :goto_14
    invoke-static {v3, v5, v9}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_26
    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_27
    if-nez v11, :cond_28

    if-eqz v25, :cond_2c

    :cond_28
    iget-object v1, v0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v3, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v5, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v5, v8, v5

    iget v12, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v12, v9, v12

    invoke-virtual {v1, v2, v3, v5, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    move v3, v15

    iget v15, v0, Landroid/widget/RelativeLayout;->mGravity:I

    sub-int v16, v3, v10

    sub-int v17, v17, v21

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v7

    invoke-static/range {v15 .. v20}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    move-object/from16 v1, v19

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v10

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v1, v21

    if-nez v2, :cond_29

    if-eqz v1, :cond_2c

    :cond_29
    const/4 v3, 0x0

    :goto_16
    if-ge v3, v6, :cond_2c

    aget-object v5, v24, v3

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v12, 0x8

    if-eq v7, v12, :cond_2b

    if-eq v5, v14, :cond_2b

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v11, :cond_2a

    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_2a
    if-eqz v25, :cond_2b

    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    add-int/2addr v7, v1

    invoke-static {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    add-int/2addr v7, v1

    invoke-static {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2c
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2e

    sub-int/2addr v4, v8

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v6, :cond_2e

    aget-object v1, v24, v2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v12, 0x8

    if-eq v3, v12, :cond_2d

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2e
    invoke-virtual {v0, v8, v9}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public whitelist onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 3

    iget-boolean v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetImmersiveEnabled:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onNestedPreScroll(Landroid/view/View;II[I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x1

    if-lez p3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le p3, v0, :cond_2

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    aput v0, p4, v1

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_2
    aput p3, p4, v1

    neg-int v0, p3

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_3
    if-gez p3, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge p3, v0, :cond_4

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p3, v0

    aput v0, p4, v1

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_4
    aput p3, p4, v1

    neg-int v0, p3

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->offsetTopAndBottom(I)V

    :cond_5
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onNestedPreScroll(Landroid/view/View;II[I)V

    return-void

    :cond_6
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onNestedPreScroll(Landroid/view/View;II[I)V

    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetImmersiveEnabled:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public whitelist requestLayout()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public blacklist semEnableAppWidgetImmersiveScroll(Z)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x2

    const-string v1, "RelativeLayout"

    if-eq p1, v0, :cond_0

    const-string p0, "Invalid child count for ImmersiveScroll"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_1

    const-string p0, "Second view must ListView"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetToolBar:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setNestedScrollingEnabled(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout-IA;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mScrollListener:Landroid/widget/RelativeLayout$AppWidgetListScrollListener;

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mAppWidgetListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-boolean p1, p0, Landroid/widget/RelativeLayout;->mAppWidgetImmersiveEnabled:Z

    new-instance p1, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    invoke-direct {p1, p0, v1}, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout-IA;)V

    iput-object p1, p0, Landroid/widget/RelativeLayout;->mReleaseScrollRunnable:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    new-instance p1, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    invoke-direct {p1, p0, v1}, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout-IA;)V

    iput-object p1, p0, Landroid/widget/RelativeLayout;->mExpandTopBarRunnable:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    return-void
.end method

.method public blacklist semSetListViewId(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const-string p0, "RelativeLayout"

    const-string p1, "This appwidget feature is not supported"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist semSetToolBarViewId(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const-string p0, "RelativeLayout"

    const-string p1, "This appwidget feature is not supported"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist setGravity(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method public whitelist setHorizontalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const v0, 0x800007

    and-int/2addr p1, v0

    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    const v0, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public whitelist setIgnoreGravity(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    return-void
.end method

.method public whitelist setVerticalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    and-int/lit8 p1, p1, 0x70

    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v0, 0x70

    if-eq v1, p1, :cond_0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
