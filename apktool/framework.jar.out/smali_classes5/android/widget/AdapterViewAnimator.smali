.class public abstract Landroid/widget/AdapterViewAnimator;
.super Landroid/widget/AdapterView;
.source "AdapterViewAnimator.java"

# interfaces
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
.implements Landroid/widget/Advanceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterViewAnimator$ViewAndMetaData;,
        Landroid/widget/AdapterViewAnimator$CheckForTap;,
        Landroid/widget/AdapterViewAnimator$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/Adapter;",
        ">;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
        "Landroid/widget/Advanceable;"
    }
.end annotation


# static fields
.field private static final blacklist APPWIDGET_CURRENT_DISPLAYED_POSITION_ACTION:Ljava/lang/String; = "android.widget.AdapterViewAnimator.APPWIDGET_CURRENT_DISPLAYED_POSITION"

.field private static final blacklist APPWIDGET_EXTRA_CURRENT_DISPLAYED_POSITION:Ljava/lang/String; = "appwidgetCurrentDisplayedPosition"

.field private static final blacklist APP_WIDGET_BROADCAST_CURRENT_DISPLAYED_POSITION_TYPE:I = 0x1

.field private static final greylist-max-o DEFAULT_ANIMATION_DURATION:I = 0xc8

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RemoteViewAnimator"

.field static final greylist-max-o TOUCH_MODE_DOWN_IN_CURRENT_VIEW:I = 0x1

.field static final greylist-max-o TOUCH_MODE_HANDLED:I = 0x2

.field static final greylist-max-o TOUCH_MODE_NONE:I


# instance fields
.field greylist-max-o mActiveOffset:I

.field greylist-max-o mAdapter:Landroid/widget/Adapter;

.field greylist-max-o mAnimateFirstTime:Z

.field private blacklist mAppWidgetGetCurrentDisplayedPosition:Ljava/lang/String;

.field greylist-max-o mCurrentWindowEnd:I

.field greylist-max-o mCurrentWindowStart:I

.field greylist-max-o mCurrentWindowStartUnbounded:I

.field greylist-max-o mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "Landroid/widget/Adapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field greylist-max-o mDeferNotifyDataSetChanged:Z

.field private blacklist mDeferSetDisplayedChild:Z

.field private blacklist mDeferSetDisplayedChildIndex:I

.field greylist-max-o mFirstTime:Z

.field greylist-max-o mInAnimation:Landroid/animation/ObjectAnimator;

.field private blacklist mInAnimationDuration:J

.field greylist-max-o mLoopViews:Z

.field greylist-max-o mMaxNumActiveViews:I

.field greylist-max-o mOutAnimation:Landroid/animation/ObjectAnimator;

.field private blacklist mOutAnimationDuration:J

.field private greylist-max-o mPendingCheckForTap:Ljava/lang/Runnable;

.field greylist-max-o mPreviousViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mReferenceChildHeight:I

.field greylist-max-o mReferenceChildWidth:I

.field greylist-max-o mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

.field private greylist-max-o mRestoreWhichChild:I

.field private greylist-max-o mTouchMode:I

.field greylist-max-o mViewsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/AdapterViewAnimator$ViewAndMetaData;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mWhichChild:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTouchMode(Landroid/widget/AdapterViewAnimator;)I
    .locals 0

    iget p0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    iput v2, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mFirstTime:Z

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    const-wide/16 v3, 0xc8

    iput-wide v3, p0, Landroid/widget/AdapterViewAnimator;->mInAnimationDuration:J

    iput-wide v3, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimationDuration:J

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferSetDisplayedChild:Z

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferSetDisplayedChildIndex:I

    const-string v1, ""

    iput-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAppWidgetGetCurrentDisplayedPosition:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/R$styleable;->AdapterViewAnimator:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    sget-object v5, Lcom/android/internal/R$styleable;->AdapterViewAnimator:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/AdapterViewAnimator;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v7, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {v3, v4, p0}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/widget/AdapterViewAnimator;->getDefaultInAnimation()Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    :goto_0
    invoke-virtual {v7, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v3, v4, p0}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/widget/AdapterViewAnimator;->getDefaultOutAnimation()Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    :goto_1
    const/4 p0, 0x2

    invoke-virtual {v7, p0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-virtual {v3, p0}, Landroid/widget/AdapterViewAnimator;->setAnimateFirstView(Z)V

    const/4 p0, 0x3

    invoke-virtual {v7, p0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    iput-boolean p0, v3, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {v3}, Landroid/widget/AdapterViewAnimator;->initViewAnimator()V

    return-void
.end method

.method private greylist-max-o addChild(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/AdapterViewAnimator;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    return-void
.end method

.method private greylist-max-o getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    .locals 2

    iget-object p0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private greylist-max-o initViewAnimator()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    return-void
.end method

.method private greylist-max-o measureChildren()V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist semSendBroadcastPosition(II)V
    .locals 1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroid/widget/AdapterViewAnimator;->mAppWidgetGetCurrentDisplayedPosition:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.widget.AdapterViewAnimator.APPWIDGET_CURRENT_DISPLAYED_POSITION"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "appwidgetCurrentDisplayedPosition"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "appWidgetId"

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mAppWidgetId:I

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAppWidgetGetCurrentDisplayedPosition:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->semSendBroadcastPositionInternal(Ljava/lang/String;Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist semSendBroadcastPositionInternal(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v2, p1, v0

    if-eqz v2, :cond_1

    aget-object v3, p1, v1

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    aget-object v0, p1, v0

    aget-object v1, p1, v1

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Landroid/widget/AdapterViewAnimator;->mContext:Landroid/content/Context;

    aget-object p1, p1, v0

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/widget/AdapterViewAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private greylist-max-o setDisplayedChild(IZ)V
    .locals 3

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    const/4 v2, 0x0

    if-lt p1, v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    goto :goto_2

    :cond_1
    if-gez p1, :cond_3

    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    move v2, v1

    :cond_4
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    if-eqz v2, :cond_5

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/widget/AdapterViewAnimator;->requestFocus(I)Z

    :cond_5
    invoke-direct {p0, p1, v1}, Landroid/widget/AdapterViewAnimator;->semSendBroadcastPosition(II)V

    return-void
.end method


# virtual methods
.method public whitelist advance()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    return-void
.end method

.method greylist-max-o applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method greylist-max-o cancelHandleClick()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    return-void
.end method

.method greylist-max-o checkForAndHandleDataChanged()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDataChanged:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/AdapterViewAnimator$2;

    invoke-direct {v0, p0}, Landroid/widget/AdapterViewAnimator$2;-><init>(Landroid/widget/AdapterViewAnimator;)V

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDataChanged:Z

    return-void
.end method

.method greylist-max-o configureViewAnimator(II)V
    .locals 0

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    iput p2, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->removeAllViewsInLayout()V

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    return-void
.end method

.method greylist-max-o createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public whitelist deferNotifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    return-void
.end method

.method public whitelist fyiWillBeAdvancedByHostKThx()V
    .locals 0

    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/AdapterViewAnimator;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getAdapter()Landroid/widget/Adapter;
    .locals 0

    iget-object p0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    return-object p0
.end method

.method public whitelist getBaseline()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBaseline()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getBaseline()I

    move-result p0

    return p0
.end method

.method public whitelist getCurrentView()Landroid/view/View;
    .locals 1

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method greylist-max-o getDefaultInAnimation()Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    const/4 v0, 0x0

    const-string v1, "alpha"

    invoke-static {v0, v1, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method greylist-max-o getDefaultOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    const/4 v0, 0x0

    const-string v1, "alpha"

    invoke-static {v0, v1, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public whitelist getDisplayedChild()I
    .locals 0

    iget p0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    return p0
.end method

.method greylist-max-o getFrameForChild()Landroid/widget/FrameLayout;
    .locals 1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object p0, p0, Landroid/widget/AdapterViewAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public whitelist getInAnimation()Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method greylist-max-o getNumActiveViews()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget p0, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    return p0
.end method

.method public whitelist getOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public whitelist getSelectedView()Landroid/view/View;
    .locals 1

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method greylist-max-o getViewAtRelativeIndex(I)Landroid/view/View;
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result p1

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object p0, p0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method greylist-max-o getWindowSize()I
    .locals 2

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v1, :cond_0

    iget p0, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    mul-int/2addr v0, p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method greylist-max-o hideTapFeedback(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method greylist-max-o modulo(II)I
    .locals 0

    if-lez p2, :cond_0

    rem-int/2addr p1, p2

    add-int/2addr p1, p2

    rem-int/2addr p1, p2

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkForAndHandleDataChanged()V

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    iget p4, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p4, p5

    iget p5, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {p3, v0, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-eq v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/high16 v4, 0x1000000

    const/high16 v5, -0x80000000

    if-nez p2, :cond_2

    if-eqz v2, :cond_1

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v1, v6

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    add-int/2addr v1, v6

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    if-ne p2, v5, :cond_4

    if-eqz v2, :cond_4

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    add-int/2addr v6, v7

    if-le v6, v1, :cond_3

    or-int/2addr v1, v4

    goto :goto_1

    :cond_3
    move v1, v6

    :cond_4
    :goto_1
    if-nez p1, :cond_6

    if-eqz v2, :cond_5

    iget p1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget p2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    add-int/2addr p1, p2

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    if-ne p2, v5, :cond_8

    if-eqz v2, :cond_8

    iget p1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget p2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    add-int/2addr p1, p2

    if-le p1, v0, :cond_7

    or-int/2addr v0, v4

    goto :goto_3

    :cond_7
    :goto_2
    move v0, p1

    :cond_8
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/widget/AdapterViewAnimator;->setMeasuredDimension(II)V

    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->measureChildren()V

    return-void
.end method

.method public whitelist onRemoteAdapterConnected()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferSetDisplayedChild:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferSetDisplayedChildIndex:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mDeferSetDisplayedChild:Z

    :cond_1
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    invoke-direct {p0, v0, v2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    :cond_2
    return v2

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    const/4 p0, 0x1

    return p0

    :cond_4
    return v2
.end method

.method public whitelist onRemoteAdapterDisconnected()V
    .locals 0

    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroid/widget/AdapterViewAnimator$SavedState;

    invoke-virtual {p1}, Landroid/widget/AdapterViewAnimator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Landroid/widget/AdapterViewAnimator$SavedState;->whichChild:I

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    :cond_0
    new-instance v1, Landroid/widget/AdapterViewAnimator$SavedState;

    iget p0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-direct {v1, v0, p0}, Landroid/widget/AdapterViewAnimator$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    :cond_1
    iput v3, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    return v3

    :cond_2
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/AdapterViewAnimator;->getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-result-object v4

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v5, p1, v0, v1}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->showTapFeedback(Landroid/view/View;)V

    new-instance p1, Landroid/widget/AdapterViewAnimator$1;

    invoke-direct {p1, p0, v0, v4}, Landroid/widget/AdapterViewAnimator$1;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    iput v3, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    return v2

    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v4, p1, v0, v1}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez p1, :cond_6

    new-instance p1, Landroid/widget/AdapterViewAnimator$CheckForTap;

    invoke-direct {p1, p0}, Landroid/widget/AdapterViewAnimator$CheckForTap;-><init>(Landroid/widget/AdapterViewAnimator;)V

    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    :cond_6
    iput v2, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_1
    return v3
.end method

.method greylist-max-o refreshChildren()V
    .locals 6

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    :goto_0
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    :goto_1
    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    if-gt v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v0, :cond_1

    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {p0, v1, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v5

    invoke-interface {v4, v5, v3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v2, v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public blacklist semSetAppWidgetGetCurrentDisplayedPosition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAppWidgetGetCurrentDisplayedPosition:Ljava/lang/String;

    return-void
.end method

.method public blacklist semSetDisplayedChild(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    return-void
.end method

.method public blacklist semUsePreloadPositionIndices(Z)V
    .locals 0

    iget-object p0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsAdapter;->semUsePreloadPositionIndices(Z)V

    :cond_0
    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/Adapter;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkFocus()V

    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz p1, :cond_1

    new-instance p1, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {p1, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p1

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mItemCount:I

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setFocusable(Z)V

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, p1, p1}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    return-void
.end method

.method public whitelist setAnimateFirstView(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    return-void
.end method

.method public whitelist setDisplayedChild(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mDeferSetDisplayedChild:Z

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mDeferSetDisplayedChildIndex:I

    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    return-void
.end method

.method public whitelist setInAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public whitelist setInAnimation(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    return-void
.end method

.method public whitelist setOutAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public whitelist setOutAnimation(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    return-void
.end method

.method public greylist-max-o setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .locals 3

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    new-instance v0, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public greylist-max-o setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public blacklist setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 0

    iget-object p0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    :cond_0
    return-void
.end method

.method public whitelist setSelection(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method public whitelist showNext()V
    .locals 1

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method greylist-max-o showOnly(IZ)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v7, p2

    iget-object v0, v1, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v3, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v9, -0x1

    if-ge v2, v3, :cond_3

    iget-object v3, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    iget-object v4, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v3, v3, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    iget-object v4, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    iget-object v5, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_2
    invoke-virtual {v1, v3, v9}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    invoke-virtual {v1, v3}, Landroid/widget/AdapterViewAnimator;->removeViewInLayout(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget v2, v1, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    sub-int v10, p1, v2

    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v2

    add-int/2addr v2, v10

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v8, -0x1

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-boolean v6, v1, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v6, :cond_4

    move v11, v2

    move v12, v10

    goto :goto_2

    :cond_4
    move v12, v4

    move v11, v5

    :goto_2
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v2

    invoke-virtual {v1, v12, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v4

    invoke-virtual {v1, v11, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v4

    if-le v2, v4, :cond_5

    move v0, v3

    :cond_5
    iget-object v3, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v0, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v2, :cond_8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v4, :cond_7

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v4, :cond_6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v2, :cond_6

    :cond_8
    :goto_4
    iget-object v6, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v6, v6, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    iget-object v13, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v13, v13, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    iget-object v14, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v13, v9, v6, v7}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    goto :goto_3

    :cond_9
    iget v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    if-ne v12, v0, :cond_a

    iget v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    if-ne v11, v0, :cond_a

    iget v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    if-eq v10, v0, :cond_f

    :cond_a
    move v13, v12

    :goto_5
    if-gt v13, v11, :cond_e

    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    invoke-virtual {v1, v13, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v14

    iget-object v0, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    goto :goto_6

    :cond_b
    move v0, v9

    :goto_6
    sub-int v3, v13, v10

    iget-object v2, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v1, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v2, v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    iget-object v4, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iput v3, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    invoke-virtual {v1, v0, v3, v2, v7}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    move v0, v9

    goto :goto_7

    :cond_c
    invoke-virtual {v1, v13, v8}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v4

    iget-object v0, v1, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2, v1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, v1, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2, v4}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getFrameForChild()Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v0, :cond_d

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_d
    iget-object v15, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v16, v0

    new-instance v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-object/from16 v9, v16

    invoke-direct/range {v0 .. v6}, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;IIJ)V

    invoke-virtual {v15, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v2}, Landroid/widget/AdapterViewAnimator;->addChild(Landroid/view/View;)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0, v3, v2, v7}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    :goto_7
    iget-object v2, v1, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v2, v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    add-int/lit8 v13, v13, 0x1

    move v9, v0

    goto/16 :goto_5

    :cond_e
    iput v12, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    iput v11, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    iput v10, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    iget-object v0, v1, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_f

    invoke-virtual {v1, v12, v8}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v0

    iget v2, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    invoke-virtual {v1, v2, v8}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v2

    iget-object v3, v1, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v3, v0, v2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    :cond_f
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->requestLayout()V

    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->invalidate()V

    return-void
.end method

.method public whitelist showPrevious()V
    .locals 1

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method greylist-max-o showTapFeedback(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method greylist-max-o transformViewForTransition(IILandroid/view/View;Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p4, :cond_2

    iget-object p4, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p4}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v2

    cmp-long p4, v2, v0

    if-eqz p4, :cond_0

    iget-object p4, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p4}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/AdapterViewAnimator;->mInAnimationDuration:J

    :cond_0
    iget-object p4, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p4}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v2

    cmp-long p4, v2, v0

    if-eqz p4, :cond_1

    iget-object p4, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p4}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimationDuration:J

    :cond_1
    iget-object p4, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p4, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    iget-object p4, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p4}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v2

    cmp-long p4, v2, v0

    if-nez p4, :cond_3

    iget-object p4, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    iget-wide v2, p0, Landroid/widget/AdapterViewAnimator;->mInAnimationDuration:J

    invoke-virtual {p4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_3
    iget-object p4, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p4}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v2

    cmp-long p4, v2, v0

    if-nez p4, :cond_4

    iget-object p4, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    iget-wide v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimationDuration:J

    invoke-virtual {p4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_4
    :goto_0
    const/4 p4, -0x1

    if-ne p1, p4, :cond_5

    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object p0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_5
    if-ne p2, p4, :cond_6

    iget-object p1, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object p0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_6
    return-void
.end method
