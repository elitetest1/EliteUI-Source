.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;,
        Landroid/widget/LinearLayout$DividerMode;,
        Landroid/widget/LinearLayout$OrientationMode;
    }
.end annotation


# static fields
.field public static final whitelist HORIZONTAL:I = 0x0

.field private static final greylist-max-r INDEX_BOTTOM:I = 0x2

.field private static final greylist-max-o INDEX_CENTER_VERTICAL:I = 0x0

.field private static final greylist-max-o INDEX_FILL:I = 0x3

.field private static final greylist-max-r INDEX_TOP:I = 0x1

.field public static final whitelist SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final whitelist SHOW_DIVIDER_END:I = 0x4

.field public static final whitelist SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final whitelist SHOW_DIVIDER_NONE:I = 0x0

.field public static final whitelist VERTICAL:I = 0x1

.field private static final greylist-max-o VERTICAL_GRAVITY_COUNT:I = 0x4

.field private static greylist-max-o sCompatibilityDone:Z = false

.field private static greylist-max-o sRemeasureWeightedChildren:Z = true


# instance fields
.field private final greylist-max-o mAllowInconsistentMeasurement:Z

.field private greylist-max-o mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private greylist mDivider:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mDividerHeight:I

.field private greylist-max-o mDividerPadding:I

.field private greylist-max-o mDividerWidth:I

.field private greylist-max-p mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private greylist-max-o mLayoutDirection:I

.field private greylist mMaxAscent:[I

.field private greylist mMaxDescent:[I

.field private greylist-max-o mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private greylist-max-o mShowDividers:I

.field private greylist mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private greylist mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    const v3, 0x800033

    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    iput v1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    sget-boolean v3, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sput-boolean v3, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    sput-boolean v0, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    :cond_1
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    sget-object v6, Lcom/android/internal/R$styleable;->LinearLayout:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/widget/LinearLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    if-ltz p0, :cond_2

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_2
    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    if-ltz p0, :cond_3

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_3
    const/4 p0, 0x2

    invoke-virtual {v8, p0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    :cond_4
    const/4 p0, 0x4

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {v8, p0, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    iput p0, v4, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 p0, 0x3

    invoke-virtual {v8, p0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    iput p0, v4, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    const/4 p0, 0x6

    invoke-virtual {v8, p0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    iput-boolean p0, v4, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const/4 p0, 0x7

    invoke-virtual {v8, p0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    iput p0, v4, Landroid/widget/LinearLayout;->mShowDividers:I

    const/16 p0, 0x8

    invoke-virtual {v8, p0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    iput p0, v4, Landroid/widget/LinearLayout;->mDividerPadding:I

    const/4 p0, 0x5

    invoke-virtual {v8, p0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p1, 0x17

    if-gt p0, p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    iput-boolean v0, v4, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private blacklist allViewsAreGoneAfter(I)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private greylist-max-o allViewsAreGoneBefore(I)Z
    .locals 3

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private greylist-max-o forceUniformHeight(II)V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_0
    move-object v2, p0

    move v4, p2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object p0, v2

    move p2, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private greylist-max-o forceUniformWidth(II)V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_0
    move-object v2, p0

    move v6, p2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object p0, v2

    move p2, v6

    goto :goto_0

    :cond_1
    return-void
.end method

.method private greylist-max-o getLastNonGoneChild()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist hasDividerAfterChildAt(I)Z
    .locals 2

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneAfter(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget p0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    iget p0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method private greylist-max-o isShowingDividers()Z
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o setChildFrame(Landroid/view/View;IIII)V
    .locals 0

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return p0
.end method

.method greylist-max-o drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v3, v4

    :goto_1
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    :goto_2
    sub-int/2addr v0, v1

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    :goto_3
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_6
    return-void
.end method

.method greylist-max-o drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, p1, v2}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void
.end method

.method greylist-max-o drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method greylist-max-o drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "layout:baselineAligned"

    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v0, "layout:baselineAlignedChildIndex"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "measurement:baselineChildTop"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "measurement:orientation"

    iget v1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "measurement:gravity"

    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "measurement:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "layout:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "layout:useLargestChild"

    iget-boolean p0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    iget p0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v0, -0x2

    if-nez p0, :cond_0

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

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

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    sget-boolean p0, Landroid/widget/LinearLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz p0, :cond_1

    instance-of p0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_1
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getBaseline()I
    .locals 5

    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_6

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget p0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez p0, :cond_1

    return v2

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    iget v3, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v3, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget p0, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v2, p0

    goto :goto_0

    :cond_4
    iget v3, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v4, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget p0, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v3, p0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    iget p0, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p0

    add-int/2addr v2, v1

    return v2

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getBaselineAlignedChildIndex()I
    .locals 0

    iget p0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return p0
.end method

.method greylist-max-o getChildrenSkipCount(Landroid/view/View;I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public whitelist getDividerPadding()I
    .locals 0

    iget p0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return p0
.end method

.method public greylist-max-o getDividerWidth()I
    .locals 0

    iget p0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    return p0
.end method

.method public whitelist getGravity()I
    .locals 0

    iget p0, p0, Landroid/widget/LinearLayout;->mGravity:I

    return p0
.end method

.method greylist-max-o getLocationOffset(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method greylist-max-o getNextLocationOffset(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getOrientation()I
    .locals 0

    iget p0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return p0
.end method

.method public whitelist getShowDividers()I
    .locals 0

    iget p0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return p0
.end method

.method greylist-max-o getVirtualChildAt(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method greylist-max-o getVirtualChildCount()I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    return p0
.end method

.method public whitelist getWeightSum()F
    .locals 0

    iget p0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return p0
.end method

.method protected greylist-max-o hasDividerBeforeChildAt(I)Z
    .locals 3

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    iget p0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneBefore(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    iget p0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public whitelist isBaselineAligned()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return p0
.end method

.method public whitelist isMeasureWithLargestChildEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return p0
.end method

.method greylist-max-o layoutHorizontal(IIII)V
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v6

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int v1, p4, p2

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v8, v1, v2

    sub-int/2addr v1, v7

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v9, v1, v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v10

    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    const v2, 0x800007

    and-int/2addr v2, v1

    and-int/lit8 v11, v1, 0x70

    iget-boolean v12, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    iget-object v13, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    iget-object v14, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v1

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    const/4 v15, 0x2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    add-int v1, v1, p3

    sub-int v1, v1, p1

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v1, v3

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    sub-int v3, p3, p1

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v15

    add-int/2addr v1, v3

    :goto_0
    const/4 v3, 0x0

    if-eqz v6, :cond_2

    add-int/lit8 v5, v10, -0x1

    move/from16 v16, v5

    const/16 v17, -0x1

    goto :goto_1

    :cond_2
    move/from16 v17, v2

    move/from16 v16, v3

    :goto_1
    if-ge v3, v10, :cond_e

    mul-int v5, v17, v3

    add-int v5, v16, v5

    move/from16 v18, v1

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v1

    add-int v1, v18, v1

    move/from16 v22, v2

    move/from16 v20, v6

    move/from16 p4, v15

    const/16 v21, -0x1

    goto/16 :goto_8

    :cond_3
    move/from16 p2, v2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 p4, v15

    const/16 v15, 0x8

    if-eq v2, v15, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v4, v19

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 p3, v2

    if-eqz v12, :cond_4

    iget v2, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v19, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v3

    goto :goto_2

    :cond_4
    move/from16 v19, v3

    :cond_5
    const/4 v3, -0x1

    :goto_2
    iget v2, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v2, :cond_6

    move v2, v11

    :cond_6
    and-int/lit8 v2, v2, 0x70

    move/from16 v20, v6

    const/16 v6, 0x10

    if-eq v2, v6, :cond_9

    const/16 v6, 0x30

    if-eq v2, v6, :cond_8

    const/16 v6, 0x50

    if-eq v2, v6, :cond_7

    move v3, v7

    const/4 v6, -0x1

    goto :goto_5

    :cond_7
    sub-int v2, v8, v15

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v6

    const/4 v6, -0x1

    if-eq v3, v6, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v21, v21, v3

    aget v3, v14, p4

    sub-int v3, v3, v21

    goto :goto_3

    :cond_8
    const/4 v6, -0x1

    iget v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v7

    if-eq v3, v6, :cond_a

    aget v21, v13, p2

    sub-int v21, v21, v3

    add-int v2, v2, v21

    goto :goto_4

    :cond_9
    const/4 v6, -0x1

    sub-int v2, v9, v15

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v7

    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_3
    sub-int/2addr v2, v3

    :cond_a
    :goto_4
    move v3, v2

    :goto_5
    if-eqz v20, :cond_b

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;->hasDividerAfterChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    goto :goto_6

    :cond_b
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    :goto_6
    add-int v2, v18, v2

    goto :goto_7

    :cond_c
    move/from16 v2, v18

    :goto_7
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v6

    move/from16 p1, v15

    move v15, v5

    move/from16 v5, p1

    move/from16 v22, p2

    move/from16 p1, v6

    const/16 v21, -0x1

    move-object v6, v4

    move/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    add-int v6, p1, v2

    invoke-virtual {v0, v1, v15}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int v3, v19, v1

    move v1, v6

    goto :goto_8

    :cond_d
    move/from16 v22, p2

    move/from16 v19, v3

    move/from16 v20, v6

    const/16 v21, -0x1

    move/from16 v1, v18

    :goto_8
    add-int/lit8 v3, v3, 0x1

    move/from16 v15, p4

    move/from16 v6, v20

    move/from16 v2, v22

    goto/16 :goto_1

    :cond_e
    return-void
.end method

.method greylist-max-o layoutVertical(IIII)V
    .locals 11

    iget v0, p0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    sub-int/2addr p3, p1

    iget p1, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int p1, p3, p1

    sub-int/2addr p3, v0

    iget v1, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int/2addr p3, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v3, v2, 0x70

    const v4, 0x800007

    and-int/2addr v2, v4

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    const/16 v4, 0x50

    if-eq v3, v4, :cond_0

    iget p2, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    add-int/2addr v3, p4

    sub-int/2addr v3, p2

    iget p2, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int p2, v3, p2

    goto :goto_0

    :cond_1
    iget v3, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr p4, p2

    iget p2, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    add-int p2, v3, p4

    :goto_0
    const/4 p4, 0x0

    :goto_1
    if-ge p4, v1, :cond_8

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v9, 0x1

    if-nez v4, :cond_2

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v3

    add-int/2addr p2, v3

    goto :goto_4

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v5

    invoke-static {v3, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    if-eq v3, v9, :cond_5

    const/4 v5, 0x5

    if-eq v3, v5, :cond_4

    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v0

    goto :goto_3

    :cond_4
    sub-int v3, p1, v7

    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_5
    sub-int v3, p3, v7

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_2
    sub-int/2addr v3, v5

    :goto_3
    move v5, v3

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr p2, v3

    :cond_6
    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr p2, v3

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int v6, p2, v3

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    iget p0, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, p0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result p0

    add-int/2addr v8, p0

    add-int/2addr p2, v8

    invoke-virtual {v3, v4, p4}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result p0

    add-int/2addr p4, p0

    goto :goto_5

    :cond_7
    :goto_4
    move-object v3, p0

    :goto_5
    add-int/2addr p4, v9

    move-object p0, v3

    goto :goto_1

    :cond_8
    return-void
.end method

.method greylist-max-o measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 0

    move p2, p3

    move p3, p4

    move p4, p5

    move p5, p6

    invoke-virtual/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method greylist-max-o measureHorizontal(II)V
    .locals 41

    move-object/from16 v0, p0

    const/4 v7, 0x0

    iput v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    iget-object v1, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    const/4 v11, 0x4

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    if-nez v1, :cond_1

    :cond_0
    new-array v1, v11, [I

    iput-object v1, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    new-array v1, v11, [I

    iput-object v1, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    :cond_1
    iget-object v12, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    iget-object v13, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    const/4 v14, 0x3

    const/4 v15, -0x1

    aput v15, v12, v14

    const/16 v16, 0x2

    aput v15, v12, v16

    const/16 v17, 0x1

    aput v15, v12, v17

    aput v15, v12, v7

    aput v15, v13, v14

    aput v15, v13, v16

    aput v15, v13, v17

    aput v15, v13, v7

    iget-boolean v1, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    iget-boolean v2, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v9, v3, :cond_2

    move/from16 v18, v17

    goto :goto_0

    :cond_2
    move/from16 v18, v7

    :goto_0
    const/16 v19, 0x0

    move v5, v2

    move v2, v7

    move v6, v2

    move/from16 v22, v6

    move/from16 v24, v22

    move/from16 v25, v24

    move/from16 v27, v25

    move/from16 v29, v27

    move/from16 v21, v11

    move/from16 v23, v14

    move/from16 v28, v17

    move/from16 v20, v19

    const/high16 v15, -0x80000000

    move/from16 v11, v29

    move v14, v11

    :goto_1
    move/from16 v30, v6

    const/16 v4, 0x8

    if-ge v2, v8, :cond_16

    move/from16 v32, v1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_2
    move/from16 v3, p1

    move/from16 v31, v5

    move-object/from16 v33, v12

    move/from16 v6, v30

    move/from16 v5, p2

    goto/16 :goto_f

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v4, :cond_4

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v30, v30, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v4, v6

    iput v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v20, v20, v6

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v6, :cond_6

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v19

    if-lez v6, :cond_6

    move/from16 v34, v17

    goto :goto_3

    :cond_6
    move/from16 v34, v7

    :goto_3
    if-ne v9, v3, :cond_9

    if-eqz v34, :cond_9

    if-eqz v18, :cond_7

    iget v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v7

    add-int/2addr v6, v3

    iput v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_4

    :cond_7
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v3

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_4
    if-eqz v32, :cond_8

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v1, v3, v7}, Landroid/view/View;->measure(II)V

    move/from16 v3, p1

    move-object v7, v4

    move/from16 v31, v5

    move-object/from16 v33, v12

    goto :goto_5

    :cond_8
    move/from16 v3, p1

    move-object v7, v4

    move/from16 v31, v5

    move-object/from16 v33, v12

    move/from16 v25, v17

    :goto_5
    const/high16 v12, 0x40000000    # 2.0f

    const/16 v35, -0x2

    move/from16 v5, p2

    goto/16 :goto_8

    :cond_9
    const/4 v3, -0x2

    if-eqz v34, :cond_a

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_a
    cmpl-float v6, v20, v19

    if-nez v6, :cond_b

    iget v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v40, v6

    move-object v6, v4

    move/from16 v4, v40

    goto :goto_6

    :cond_b
    move-object v6, v4

    const/4 v4, 0x0

    :goto_6
    const/4 v7, 0x0

    move/from16 v31, v7

    move-object v7, v6

    move/from16 v6, v31

    move/from16 v35, v3

    move/from16 v31, v5

    move-object/from16 v33, v12

    const/high16 v12, 0x40000000    # 2.0f

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-eqz v34, :cond_c

    const/4 v6, 0x0

    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int v22, v22, v4

    :cond_c
    if-eqz v18, :cond_d

    iget v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v12, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v4

    move/from16 v38, v6

    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v12, v6

    add-int v6, v38, v12

    iput v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_7

    :cond_d
    iget v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v12, v6, v4

    move/from16 v38, v12

    iget v12, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v12, v38, v12

    move/from16 v38, v12

    iget v12, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v12, v38, v12

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v38

    add-int v12, v12, v38

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_7
    if-eqz v31, :cond_e

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    :cond_e
    const/high16 v12, 0x40000000    # 2.0f

    :goto_8
    if-eq v10, v12, :cond_f

    iget v4, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_f

    move/from16 v4, v17

    move/from16 v29, v4

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    :goto_9
    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v12, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v12

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v6

    move/from16 v38, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    move/from16 v39, v6

    move/from16 v6, v27

    invoke-static {v6, v4}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v27

    if-eqz v32, :cond_11

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_11

    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v6, :cond_10

    iget v6, v0, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_a

    :cond_10
    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_a
    and-int/lit8 v6, v6, 0x70

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, -0x2

    shr-int/lit8 v6, v6, 0x1

    move/from16 v35, v6

    aget v6, v33, v35

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v33, v35

    aget v6, v13, v35

    sub-int v4, v12, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v13, v35

    :cond_11
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-eqz v28, :cond_12

    iget v4, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_12

    move/from16 v28, v17

    goto :goto_b

    :cond_12
    const/16 v28, 0x0

    :goto_b
    iget v4, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v4, v4, v19

    if-lez v4, :cond_14

    if-eqz v38, :cond_13

    move/from16 v6, v39

    goto :goto_c

    :cond_13
    move v6, v12

    :goto_c
    move/from16 v7, v24

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v24

    goto :goto_e

    :cond_14
    move/from16 v7, v24

    if-eqz v38, :cond_15

    move/from16 v6, v39

    goto :goto_d

    :cond_15
    move v6, v12

    :goto_d
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    move/from16 v24, v7

    :goto_e
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v2, v1

    move/from16 v6, v30

    :goto_f
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v31

    move/from16 v1, v32

    move-object/from16 v12, v33

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_16
    move/from16 v3, p1

    move/from16 v32, v1

    move/from16 v31, v5

    move-object/from16 v33, v12

    move/from16 v7, v24

    move/from16 v6, v27

    const/16 v35, -0x2

    move/from16 v5, p2

    if-lez v30, :cond_17

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_17

    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :cond_17
    aget v1, v33, v17

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    const/16 v36, 0x0

    aget v12, v33, v36

    if-ne v12, v2, :cond_18

    aget v12, v33, v16

    if-ne v12, v2, :cond_18

    aget v12, v33, v23

    if-eq v12, v2, :cond_19

    :cond_18
    aget v2, v33, v23

    const/16 v36, 0x0

    aget v12, v33, v36

    aget v4, v33, v16

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget v2, v13, v23

    aget v4, v13, v36

    aget v12, v13, v17

    move/from16 v27, v1

    aget v1, v13, v16

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v1, v27, v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_19
    if-eqz v31, :cond_20

    const/high16 v1, -0x80000000

    if-eq v9, v1, :cond_1a

    if-nez v9, :cond_20

    :cond_1a
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-ge v1, v8, :cond_1f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1b

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v12

    add-int/2addr v4, v12

    iput v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v37, v6

    goto :goto_13

    :cond_1b
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v12

    move/from16 v27, v2

    const/16 v2, 0x8

    if-ne v12, v2, :cond_1c

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v1, v2

    move/from16 v37, v6

    move/from16 v2, v27

    goto :goto_13

    :cond_1c
    add-int/lit8 v2, v27, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v12

    if-eqz v12, :cond_1d

    iget v12, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v30, v1

    iget v1, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v12, v1

    iput v12, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_11

    :cond_1d
    move/from16 v30, v1

    :goto_11
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v18, :cond_1e

    iget v12, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v27, v2

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v15

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr v12, v2

    iput v12, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v37, v6

    goto :goto_12

    :cond_1e
    move/from16 v27, v2

    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v12, v2, v15

    move/from16 v37, v6

    iget v6, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v6

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v12, v1

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_12
    move/from16 v2, v27

    move/from16 v1, v30

    :goto_13
    add-int/lit8 v1, v1, 0x1

    move/from16 v6, v37

    goto :goto_10

    :cond_1f
    move/from16 v27, v2

    move/from16 v37, v6

    if-lez v27, :cond_21

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_21

    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_14

    :cond_20
    move/from16 v37, v6

    :cond_21
    :goto_14
    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v6, 0x0

    invoke-static {v1, v3, v6}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v2, v1

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v2, v4

    iget-boolean v4, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v4, :cond_22

    const/16 v22, 0x0

    :cond_22
    add-int v2, v2, v22

    if-nez v25, :cond_28

    sget-boolean v6, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v6, :cond_23

    if-eqz v2, :cond_24

    :cond_23
    cmpl-float v6, v20, v19

    if-lez v6, :cond_24

    goto :goto_17

    :cond_24
    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v31, :cond_27

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v9, v12, :cond_27

    const/4 v7, 0x0

    :goto_15
    if-ge v7, v8, :cond_27

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_26

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v12, 0x8

    if-ne v9, v12, :cond_25

    goto :goto_16

    :cond_25
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v9, v9, v19

    if-lez v9, :cond_26

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v15, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v6, v9, v13}, Landroid/view/View;->measure(II)V

    :cond_26
    :goto_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_27
    move/from16 v25, v1

    move/from16 v27, v37

    const/high16 v22, -0x1000000

    goto/16 :goto_26

    :cond_28
    :goto_17
    iget v6, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v7, v6, v19

    if-lez v7, :cond_29

    move/from16 v20, v6

    :cond_29
    const/16 v26, -0x1

    aput v26, v33, v23

    aput v26, v33, v16

    aput v26, v33, v17

    const/4 v6, 0x0

    aput v26, v33, v6

    aput v26, v13, v23

    aput v26, v13, v16

    aput v26, v13, v17

    aput v26, v13, v6

    iput v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v7, v37

    const/4 v6, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_18
    if-ge v11, v8, :cond_39

    const/high16 v22, -0x1000000

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    move/from16 v25, v1

    if-eqz v4, :cond_38

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v27, v12

    const/16 v12, 0x8

    if-ne v1, v12, :cond_2a

    goto/16 :goto_22

    :cond_2a
    add-int/lit8 v1, v27, 0x1

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v24

    if-eqz v24, :cond_2b

    iget v12, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v27, v1

    iget v1, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v12, v1

    iput v12, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_19

    :cond_2b
    move/from16 v27, v1

    :goto_19
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v12, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v30, v12, v19

    if-lez v30, :cond_30

    move/from16 v30, v11

    int-to-float v11, v2

    mul-float/2addr v11, v12

    div-float v11, v11, v20

    float-to-int v11, v11

    sub-int/2addr v2, v11

    sub-float v20, v20, v12

    iget-boolean v12, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v12, :cond_2c

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v9, v12, :cond_2c

    move/from16 v31, v2

    move v11, v15

    goto :goto_1b

    :cond_2c
    iget v12, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v12, :cond_2e

    iget-boolean v12, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v12, :cond_2d

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v9, v12, :cond_2f

    goto :goto_1a

    :cond_2d
    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_1a

    :cond_2e
    const/high16 v12, 0x40000000    # 2.0f

    :cond_2f
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    add-int v11, v31, v11

    :goto_1a
    move/from16 v31, v2

    :goto_1b
    const/4 v2, 0x0

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v11, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v12, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v11, v12

    iget v12, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    iget v12, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    iget v12, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {v5, v11, v12}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v11

    invoke-virtual {v4, v2, v11}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    and-int v2, v2, v22

    invoke-static {v7, v2}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v7

    move/from16 v2, v31

    goto :goto_1c

    :cond_30
    move/from16 v30, v11

    :goto_1c
    if-eqz v18, :cond_31

    iget v11, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    move/from16 v31, v2

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v2

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v2

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v12, v2

    add-int/2addr v11, v12

    iput v11, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_1d

    :cond_31
    move/from16 v31, v2

    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v2

    iget v12, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    iget v12, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_1d
    const/high16 v12, 0x40000000    # 2.0f

    if-eq v10, v12, :cond_32

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v2, v11, :cond_32

    move/from16 v2, v17

    goto :goto_1e

    :cond_32
    const/4 v2, 0x0

    :goto_1e
    iget v11, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v12, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v11

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-eqz v2, :cond_33

    goto :goto_1f

    :cond_33
    move v11, v12

    :goto_1f
    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v28, :cond_34

    iget v11, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v14, -0x1

    if-ne v11, v14, :cond_35

    move/from16 v11, v17

    goto :goto_20

    :cond_34
    const/4 v14, -0x1

    :cond_35
    const/4 v11, 0x0

    :goto_20
    if-eqz v32, :cond_37

    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v4

    if-eq v4, v14, :cond_37

    iget v14, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v14, :cond_36

    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_21

    :cond_36
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_21
    and-int/lit8 v1, v1, 0x70

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, -0x2

    shr-int/lit8 v1, v1, 0x1

    aget v14, v33, v1

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    aput v14, v33, v1

    aget v14, v13, v1

    sub-int/2addr v12, v4

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v13, v1

    :cond_37
    move v14, v2

    move/from16 v28, v11

    move/from16 v2, v31

    goto :goto_23

    :cond_38
    move/from16 v27, v12

    :goto_22
    move/from16 v30, v11

    :goto_23
    move/from16 v12, v27

    add-int/lit8 v11, v30, 0x1

    move/from16 v1, v25

    goto/16 :goto_18

    :cond_39
    move/from16 v25, v1

    move/from16 v27, v12

    const/high16 v22, -0x1000000

    if-lez v27, :cond_3a

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :cond_3a
    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    aget v1, v33, v17

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3c

    const/16 v36, 0x0

    aget v4, v33, v36

    if-ne v4, v2, :cond_3c

    aget v4, v33, v16

    if-ne v4, v2, :cond_3c

    aget v4, v33, v23

    if-eq v4, v2, :cond_3b

    goto :goto_24

    :cond_3b
    move v11, v6

    goto :goto_25

    :cond_3c
    :goto_24
    aget v2, v33, v23

    const/16 v36, 0x0

    aget v4, v33, v36

    aget v9, v33, v16

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget v2, v13, v23

    aget v4, v13, v36

    aget v9, v13, v17

    aget v11, v13, v16

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v11, v1

    :goto_25
    move/from16 v27, v7

    move v2, v14

    :goto_26
    if-nez v28, :cond_3d

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v10, v12, :cond_3d

    goto :goto_27

    :cond_3d
    move v2, v11

    :goto_27
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v1, v4

    add-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    and-int v2, v27, v22

    or-int v2, v25, v2

    shl-int/lit8 v4, v27, 0x10

    invoke-static {v1, v5, v4}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    if-eqz v29, :cond_3e

    invoke-direct {v0, v8, v3}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    :cond_3e
    return-void
.end method

.method greylist-max-o measureNullChild(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method greylist-max-o measureVertical(II)V
    .locals 29

    move-object/from16 v0, p0

    const/4 v7, 0x0

    iput v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    iget v11, v0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    iget-boolean v12, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move v1, v7

    move v2, v1

    move v4, v2

    move v5, v4

    move v13, v5

    move v14, v13

    move/from16 v16, v14

    move/from16 v17, v16

    move/from16 v21, v17

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    :goto_0
    const/16 v15, 0x8

    if-ge v2, v8, :cond_12

    move/from16 v23, v1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v7

    add-int/2addr v1, v7

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_1
    move v7, v6

    move/from16 v27, v10

    move/from16 v25, v12

    move/from16 v1, v23

    move v6, v5

    move/from16 v5, p2

    goto/16 :goto_c

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v15, :cond_1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v23, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v15

    if-eqz v15, :cond_2

    iget v15, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v25, v1

    iget v1, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v15, v1

    iput v15, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_2

    :cond_2
    move-object/from16 v25, v1

    :goto_2
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v23, v3, v1

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v1, :cond_3

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v19

    if-lez v1, :cond_3

    move/from16 v26, v18

    goto :goto_3

    :cond_3
    const/16 v26, 0x0

    :goto_3
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v10, v1, :cond_4

    if-eqz v26, :cond_4

    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v1

    move/from16 v27, v2

    iget v2, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v28, v7

    move/from16 v17, v18

    move-object/from16 v3, v25

    move/from16 v2, v27

    move v7, v4

    move/from16 v27, v10

    move/from16 v25, v12

    move v12, v5

    move/from16 v5, p2

    goto :goto_5

    :cond_4
    move/from16 v27, v2

    if-eqz v26, :cond_5

    const/4 v1, -0x2

    iput v1, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_5
    cmpl-float v1, v23, v19

    if-nez v1, :cond_6

    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v2, v6

    move v6, v1

    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v6

    const/4 v6, 0x0

    :goto_4
    move v2, v4

    const/4 v4, 0x0

    move/from16 v3, p1

    move/from16 v28, v7

    move v7, v2

    move/from16 v2, v27

    move/from16 v27, v10

    move v10, v1

    move-object/from16 v1, v25

    move/from16 v25, v12

    move v12, v5

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-eqz v26, :cond_7

    const/4 v6, 0x0

    iput v6, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int v16, v16, v4

    :cond_7
    iget v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v26, v6, v4

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v26, v26, v1

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v26, v26, v1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v1, v26, v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    if-eqz v25, :cond_8

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_5

    :cond_8
    move v6, v10

    :goto_5
    if-ltz v11, :cond_9

    add-int/lit8 v1, v2, 0x1

    if-ne v11, v1, :cond_9

    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iput v1, v0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    :cond_9
    if-ge v2, v11, :cond_b

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v19

    if-gtz v1, :cond_a

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_6
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v9, v1, :cond_c

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_c

    move/from16 v1, v18

    move/from16 v21, v1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :goto_7
    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v10, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v10

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v4

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v13

    move/from16 v24, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v14, v1}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v14

    if-eqz v20, :cond_d

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v26, v4

    const/4 v4, -0x1

    if-ne v1, v4, :cond_e

    move/from16 v20, v18

    goto :goto_8

    :cond_d
    move/from16 v26, v4

    :cond_e
    const/16 v20, 0x0

    :goto_8
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v19

    if-lez v1, :cond_10

    if-eqz v24, :cond_f

    move/from16 v4, v26

    goto :goto_9

    :cond_f
    move v4, v10

    :goto_9
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v4, v7

    goto :goto_b

    :cond_10
    if-eqz v24, :cond_11

    move/from16 v4, v26

    goto :goto_a

    :cond_11
    move v4, v10

    :goto_a
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v1, v12

    :goto_b
    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v2, v3

    move v7, v6

    move/from16 v3, v23

    move v6, v1

    move/from16 v1, v28

    :goto_c
    add-int/lit8 v2, v2, 0x1

    move v5, v6

    move v6, v7

    move/from16 v12, v25

    move/from16 v10, v27

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_12
    move/from16 v23, v1

    move v7, v4

    move/from16 v27, v10

    move/from16 v25, v12

    move v12, v5

    move v10, v6

    move/from16 v5, p2

    if-lez v23, :cond_13

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :cond_13
    move/from16 v1, v27

    if-eqz v25, :cond_17

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_14

    if-nez v1, :cond_17

    :cond_14
    const/4 v6, 0x0

    iput v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v8, :cond_17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_15

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_e

    :cond_15
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v15, :cond_16

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_e

    :cond_16
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v11, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    add-int v22, v11, v10

    iget v15, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v22, v22, v15

    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v22, v22, v6

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int v4, v22, v4

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_e
    add-int/lit8 v2, v2, 0x1

    const/16 v15, 0x8

    goto :goto_d

    :cond_17
    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v4, v6

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v2

    const v4, 0xffffff

    and-int/2addr v4, v2

    iget v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v4, v6

    iget-boolean v6, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v6, :cond_18

    const/16 v16, 0x0

    :cond_18
    add-int v4, v4, v16

    if-nez v17, :cond_1e

    sget-boolean v6, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v6, :cond_19

    if-eqz v4, :cond_1a

    :cond_19
    cmpl-float v6, v3, v19

    if-lez v6, :cond_1a

    goto :goto_11

    :cond_1a
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v25, :cond_1d

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v1, v4, :cond_1d

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v8, :cond_1d

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_1b

    goto :goto_10

    :cond_1b
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v4, v4, v19

    if-lez v4, :cond_1c

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v10, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v1, v4, v11}, Landroid/view/View;->measure(II)V

    :cond_1c
    :goto_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_1d
    move/from16 v7, p1

    goto/16 :goto_1a

    :cond_1e
    :goto_11
    iget v6, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v11, v6, v19

    if-lez v11, :cond_1f

    move v3, v6

    :cond_1f
    const/4 v6, 0x0

    iput v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v6, v4

    move v4, v7

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v8, :cond_2a

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_29

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v15, 0x8

    if-ne v12, v15, :cond_20

    goto/16 :goto_18

    :cond_20
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    iget v15, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v16, v15, v19

    if-lez v16, :cond_25

    move/from16 v16, v3

    int-to-float v3, v6

    mul-float/2addr v3, v15

    div-float v3, v3, v16

    float-to-int v3, v3

    sub-int/2addr v6, v3

    sub-float v15, v16, v15

    move/from16 v17, v3

    iget-boolean v3, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v3, :cond_21

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_21

    move/from16 v27, v1

    move/from16 v17, v6

    move v1, v10

    goto :goto_14

    :cond_21
    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_23

    iget-boolean v3, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v3, :cond_22

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_24

    goto :goto_13

    :cond_22
    const/high16 v3, 0x40000000    # 2.0f

    :goto_13
    move/from16 v27, v1

    move/from16 v1, v17

    move/from16 v17, v6

    goto :goto_14

    :cond_23
    const/high16 v3, 0x40000000    # 2.0f

    :cond_24
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v16, v17

    move/from16 v27, v1

    move/from16 v17, v6

    move/from16 v1, v16

    :goto_14
    const/4 v6, 0x0

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v3, v6

    iget v6, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    iget v6, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    iget v6, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v22, v7

    move/from16 v7, p1

    invoke-static {v7, v3, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v3

    invoke-virtual {v11, v3, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    invoke-static {v14, v1}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v14

    move v3, v15

    move/from16 v6, v17

    goto :goto_15

    :cond_25
    move/from16 v27, v1

    move/from16 v16, v3

    move v1, v6

    move/from16 v22, v7

    move/from16 v7, p1

    :goto_15
    iget v1, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v15, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v15

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v1

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    move/from16 v16, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v9, v1, :cond_26

    iget v1, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v17, v3

    const/4 v3, -0x1

    if-ne v1, v3, :cond_27

    move/from16 v1, v16

    goto :goto_16

    :cond_26
    move/from16 v17, v3

    const/4 v3, -0x1

    :cond_27
    move v1, v15

    :goto_16
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v20, :cond_28

    iget v4, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v4, v3, :cond_28

    move/from16 v4, v18

    goto :goto_17

    :cond_28
    const/4 v4, 0x0

    :goto_17
    iget v15, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v15, v16

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v16, v16, v3

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v16, v16, v3

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int v3, v16, v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v20, v4

    move/from16 v3, v17

    move v4, v1

    goto :goto_19

    :cond_29
    :goto_18
    move/from16 v27, v1

    move/from16 v16, v3

    move v1, v6

    move/from16 v22, v7

    move/from16 v7, p1

    move v6, v1

    move/from16 v3, v16

    :goto_19
    add-int/lit8 v1, v22, 0x1

    move v7, v1

    move/from16 v1, v27

    goto/16 :goto_12

    :cond_2a
    move/from16 v7, p1

    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v6

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v4

    :goto_1a
    if-nez v20, :cond_2b

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v9, v1, :cond_2b

    goto :goto_1b

    :cond_2b
    move v3, v13

    :goto_1b
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v1, v4

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v7, v14}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    if-eqz v21, :cond_2c

    invoke-direct {v0, v8, v5}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    :cond_2c
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 1

    iget p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutVertical(IIII)V

    return-void

    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutHorizontal(IIII)V

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 2

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    iget v0, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    iget p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public whitelist setBaselineAligned(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return-void
.end method

.method public whitelist setBaselineAlignedChildIndex(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "base aligned child index out of range (0, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    iput p1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    :goto_0
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public whitelist setDividerPadding(I)V
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist setGravity(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

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
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method public whitelist setHorizontalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const v0, 0x800007

    and-int/2addr p1, v0

    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    const v0, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public whitelist setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return-void
.end method

.method public whitelist setOrientation(I)V
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public whitelist setShowDividers(I)V
    .locals 1

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public whitelist setVerticalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    and-int/lit8 p1, p1, 0x70

    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v0, 0x70

    if-eq v1, p1, :cond_0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public whitelist setWeightSum(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
