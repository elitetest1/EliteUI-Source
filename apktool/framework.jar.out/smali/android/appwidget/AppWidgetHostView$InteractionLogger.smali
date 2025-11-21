.class public Landroid/appwidget/AppWidgetHostView$InteractionLogger;
.super Ljava/lang/Object;
.source "AppWidgetHostView.java"

# interfaces
.implements Landroid/widget/RemoteViews$InteractionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InteractionLogger"
.end annotation


# static fields
.field public static final blacklist MAX_NUM_ITEMS:I = 0xa

.field private static final blacklist UPDATE_VISIBILITY_DELAY_MS:J = 0x3e8L


# instance fields
.field private final blacklist mClickedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDurationMs:J

.field private blacklist mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private blacklist mIsVisible:Z

.field private blacklist mPosition:Landroid/graphics/Rect;

.field private final blacklist mScrolledIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUpdateVisibilityScheduled:Z

.field private blacklist mVisibilityChangeMs:J

.field final synthetic blacklist this$0:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method public static synthetic blacklist $r8$lambda$k2aDTj5dRJTFprZpsZLC0Oyvlsg(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->lambda$scheduleUpdateVisibility$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDraw(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->onDraw()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monPositionChanged(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->onPositionChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monWindowFocusChanged(Landroid/appwidget/AppWidgetHostView$InteractionLogger;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->onWindowFocusChanged(Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/appwidget/AppWidgetHostView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/ArraySet;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mClickedIds:Ljava/util/Set;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mScrolledIds:Ljava/util/Set;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mPosition:Landroid/graphics/Rect;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mDurationMs:J

    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mVisibilityChangeMs:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsVisible:Z

    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mUpdateVisibilityScheduled:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/ArraySet;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mClickedIds:Ljava/util/Set;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mScrolledIds:Ljava/util/Set;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mPosition:Landroid/graphics/Rect;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mDurationMs:J

    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mVisibilityChangeMs:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsVisible:Z

    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mUpdateVisibilityScheduled:Z

    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    return-void
.end method

.method private blacklist applyScrollOffset()V
    .locals 3

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mPosition:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mPosition:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method private blacklist getMetricsId(Landroid/view/View;)I
    .locals 1

    const p0, 0x1020514

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$scheduleUpdateVisibility$0()V
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->hasWindowFocus()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->updateVisibility(Z)V

    return-void
.end method

.method private blacklist onDraw()V
    .locals 2

    invoke-static {}, Landroid/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->scheduleUpdateVisibility()V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist onPositionChanged()V
    .locals 2

    invoke-static {}, Landroid/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mPosition:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHostView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->applyScrollOffset()V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist onWindowFocusChanged(Z)V
    .locals 1

    invoke-static {}, Landroid/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->updateVisibility(Z)V

    return-void
.end method

.method private blacklist scheduleUpdateVisibility()V
    .locals 4

    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mUpdateVisibilityScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    new-instance v1, Landroid/appwidget/AppWidgetHostView$InteractionLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/appwidget/AppWidgetHostView$InteractionLogger$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetHostView$InteractionLogger;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/appwidget/AppWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mUpdateVisibilityScheduled:Z

    return-void
.end method

.method private blacklist testVisibility(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->isAggregatedVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist updateVisibility(Z)V
    .locals 8

    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsVisible:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->testVisibility(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    move-object p1, v2

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->testVisibility(Landroid/view/View;)Z

    move-result p1

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mVisibilityChangeMs:J

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    iget-wide v2, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mDurationMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mVisibilityChangeMs:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mDurationMs:J

    :cond_3
    :goto_2
    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mIsVisible:Z

    iput-boolean v1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mUpdateVisibilityScheduled:Z

    return-void
.end method


# virtual methods
.method public blacklist getClickedIds()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mClickedIds:Ljava/util/Set;

    return-object p0
.end method

.method public blacklist getDurationMs()J
    .locals 2

    iget-wide v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mDurationMs:J

    return-wide v0
.end method

.method public blacklist getPosition()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mPosition:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist getScrolledIds()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mScrolledIds:Ljava/util/Set;

    return-object p0
.end method

.method public blacklist onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 2

    invoke-static {}, Landroid/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mClickedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mClickedIds:Ljava/util/Set;

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->getMetricsId(Landroid/view/View;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v0, v0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget v1, v1, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->noteAppWidgetTapped(I)V

    :cond_1
    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2, p3}, Landroid/widget/RemoteViews$InteractionHandler;->onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method

.method public blacklist onScroll(Landroid/widget/AbsListView;)V
    .locals 2

    invoke-static {}, Landroid/appwidget/flags/Flags;->engagementMetrics()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mScrolledIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mScrolledIds:Ljava/util/Set;

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->getMetricsId(Landroid/view/View;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView$InteractionLogger;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Landroid/widget/RemoteViews$InteractionHandler;->onScroll(Landroid/widget/AbsListView;)V

    :cond_2
    :goto_0
    return-void
.end method
