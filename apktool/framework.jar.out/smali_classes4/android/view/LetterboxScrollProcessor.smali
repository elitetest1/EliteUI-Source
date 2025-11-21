.class public Landroid/view/LetterboxScrollProcessor;
.super Ljava/lang/Object;
.source "LetterboxScrollProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;,
        Landroid/view/LetterboxScrollProcessor$ScrollListener;
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mGeneratedEventIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProcessedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScrollDetector:Landroid/view/GestureDetector;

.field private blacklist mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGeneratedEventIds(Landroid/view/LetterboxScrollProcessor;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroid/view/LetterboxScrollProcessor;->mGeneratedEventIds:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProcessedEvents(Landroid/view/LetterboxScrollProcessor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/view/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Landroid/view/LetterboxScrollProcessor;Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;)V
    .locals 0

    iput-object p1, p0, Landroid/view/LetterboxScrollProcessor;->mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyOffset(Landroid/view/LetterboxScrollProcessor;Landroid/view/MotionEvent;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/LetterboxScrollProcessor;->applyOffset(Landroid/view/MotionEvent;Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAppBounds(Landroid/view/LetterboxScrollProcessor;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0}, Landroid/view/LetterboxScrollProcessor;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->AWAITING_GESTURE_START:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    iput-object v0, p0, Landroid/view/LetterboxScrollProcessor;->mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/LetterboxScrollProcessor;->mGeneratedEventIds:Ljava/util/Set;

    iput-object p1, p0, Landroid/view/LetterboxScrollProcessor;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Landroid/view/LetterboxScrollProcessor$ScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/LetterboxScrollProcessor$ScrollListener;-><init>(Landroid/view/LetterboxScrollProcessor;Landroid/view/LetterboxScrollProcessor-IA;)V

    invoke-direct {v0, p1, v1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/LetterboxScrollProcessor;->mScrollDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private blacklist applyOffset(Landroid/view/MotionEvent;Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/view/LetterboxScrollProcessor;->calculateOffset(FI)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {p0, v1, p2}, Landroid/view/LetterboxScrollProcessor;->calculateOffset(FI)F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method private blacklist calculateOffset(FI)F
    .locals 1

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    neg-float p0, p1

    return p0

    :cond_0
    int-to-float p2, p2

    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    sub-float/2addr p1, p2

    const/high16 p0, 0x3f800000    # 1.0f

    add-float/2addr p1, p0

    neg-float p0, p1

    :cond_1
    return p0
.end method

.method private blacklist getAppBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/LetterboxScrollProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private blacklist isOutsideAppBounds(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-gez p0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public blacklist processMotionEvent(Landroid/view/MotionEvent;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Landroid/view/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Landroid/view/LetterboxScrollProcessor;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p1, v1}, Landroid/view/LetterboxScrollProcessor;->isOutsideAppBounds(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->GESTURE_STARTED_OUTSIDE_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    iput-object v3, p0, Landroid/view/LetterboxScrollProcessor;->mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    goto :goto_0

    :cond_1
    sget-object v3, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->GESTURE_STARTED_IN_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    iput-object v3, p0, Landroid/view/LetterboxScrollProcessor;->mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    :cond_2
    :goto_0
    iget-object v3, p0, Landroid/view/LetterboxScrollProcessor;->mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    invoke-virtual {v3}, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    if-eq v3, v5, :cond_7

    if-eq v3, v0, :cond_5

    if-eq v3, v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1, v1}, Landroid/view/LetterboxScrollProcessor;->isOutsideAppBounds(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v1}, Landroid/view/LetterboxScrollProcessor;->applyOffset(Landroid/view/MotionEvent;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_4
    sget-object v0, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->GESTURE_STARTED_IN_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    iput-object v0, p0, Landroid/view/LetterboxScrollProcessor;->mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    :goto_1
    iget-object v0, p0, Landroid/view/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1, v1}, Landroid/view/LetterboxScrollProcessor;->applyOffset(Landroid/view/MotionEvent;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/LetterboxScrollProcessor;->mScrollDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Landroid/view/LetterboxScrollProcessor;->mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    sget-object v1, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->SCROLLING_STARTED_OUTSIDE_APP:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroid/view/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    move v0, v5

    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v5, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_9

    :cond_8
    sget-object p1, Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;->AWAITING_GESTURE_START:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    iput-object p1, p0, Landroid/view/LetterboxScrollProcessor;->mState:Landroid/view/LetterboxScrollProcessor$LetterboxScrollState;

    :cond_9
    if-eqz v0, :cond_a

    return-object v2

    :cond_a
    iget-object p0, p0, Landroid/view/LetterboxScrollProcessor;->mProcessedEvents:Ljava/util/List;

    return-object p0
.end method

.method public blacklist processMotionEventBeforeFinish(Landroid/view/MotionEvent;)Landroid/view/InputEvent;
    .locals 1

    iget-object p0, p0, Landroid/view/LetterboxScrollProcessor;->mGeneratedEventIds:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p1
.end method
