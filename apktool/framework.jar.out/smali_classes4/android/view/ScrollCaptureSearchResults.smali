.class public final Landroid/view/ScrollCaptureSearchResults;
.super Ljava/lang/Object;
.source "ScrollCaptureSearchResults.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScrollCaptureSearchResults$SearchRequest;
    }
.end annotation


# static fields
.field private static final blacklist AFTER:I = 0x1

.field private static final blacklist BEFORE:I = -0x1

.field private static final blacklist EQUAL:I

.field static final blacklist PRIORITY_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCancel:Landroid/os/CancellationSignal;

.field private blacklist mComplete:Z

.field private blacklist mCompleted:I

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mOnCompleteListener:Ljava/lang/Runnable;

.field private final blacklist mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ByE8_TUw1PGD9U7R9mCq7ljjoWU(Landroid/view/ScrollCaptureTarget;)Z
    .locals 0

    invoke-static {p0}, Landroid/view/ScrollCaptureSearchResults;->hasIncludeHint(Landroid/view/ScrollCaptureTarget;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$cSF81BEzWMEe7BE_Rc0m9TL8alU(Landroid/view/ScrollCaptureSearchResults;Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ScrollCaptureSearchResults;->lambda$addTarget$0(Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCancel(Landroid/view/ScrollCaptureSearchResults;)Landroid/os/CancellationSignal;
    .locals 0

    iget-object p0, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCompleted(Landroid/view/ScrollCaptureSearchResults;)I
    .locals 0

    iget p0, p0, Landroid/view/ScrollCaptureSearchResults;->mCompleted:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/view/ScrollCaptureSearchResults;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/view/ScrollCaptureSearchResults;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTargets(Landroid/view/ScrollCaptureSearchResults;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCompleted(Landroid/view/ScrollCaptureSearchResults;I)V
    .locals 0

    iput p1, p0, Landroid/view/ScrollCaptureSearchResults;->mCompleted:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msignalComplete(Landroid/view/ScrollCaptureSearchResults;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ScrollCaptureSearchResults;->signalComplete()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnullOrEmpty(Landroid/graphics/Rect;)Z
    .locals 0

    invoke-static {p0}, Landroid/view/ScrollCaptureSearchResults;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/view/ScrollCaptureSearchResults;->PRIORITY_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    iput-object p1, p0, Landroid/view/ScrollCaptureSearchResults;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    return-void
.end method

.method private static blacklist area(Landroid/graphics/Rect;)I
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method private blacklist getScrollBoundsInWindow(Landroid/view/ScrollCaptureTarget;)Landroid/graphics/Rect;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getPositionInWindow()Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method private static blacklist hasIncludeHint(Landroid/view/ScrollCaptureTarget;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroid/view/ScrollCaptureSearchResults;->hasIncludeHint(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static blacklist hasIncludeHint(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getScrollCaptureHint()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isDescendant(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eq p1, p0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-ne p1, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private synthetic blacklist lambda$addTarget$0(Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V
    .locals 0

    iget-object p0, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    invoke-interface {p1, p0, p2}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureSearch(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic blacklist lambda$getTopResult$1(Landroid/view/ScrollCaptureTarget;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Landroid/view/ScrollCaptureSearchResults;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$getTopResult$2(Landroid/view/ScrollCaptureTarget;)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    invoke-static {p0}, Landroid/view/ScrollCaptureSearchResults;->area(Landroid/graphics/Rect;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$static$3(Landroid/view/ScrollCaptureTarget;Landroid/view/ScrollCaptureTarget;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz p0, :cond_b

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ScrollCaptureSearchResults;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ScrollCaptureSearchResults;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v3, :cond_8

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v3

    invoke-static {v0}, Landroid/view/ScrollCaptureSearchResults;->hasIncludeHint(Landroid/view/View;)Z

    move-result v4

    invoke-static {v3}, Landroid/view/ScrollCaptureSearchResults;->hasIncludeHint(Landroid/view/View;)Z

    move-result v5

    if-eq v4, v5, :cond_4

    if-eqz v4, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    invoke-static {v0, v3}, Landroid/view/ScrollCaptureSearchResults;->isDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    :cond_5
    invoke-static {v3, v0}, Landroid/view/ScrollCaptureSearchResults;->isDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Landroid/view/ScrollCaptureSearchResults;->area(Landroid/graphics/Rect;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ScrollCaptureSearchResults;->area(Landroid/graphics/Rect;)I

    move-result p1

    if-lt p0, p1, :cond_7

    return v2

    :cond_7
    return v1

    :cond_8
    :goto_0
    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    return v0

    :cond_9
    if-eqz v3, :cond_a

    return v1

    :cond_a
    return v2

    :cond_b
    :goto_1
    if-nez p0, :cond_c

    return v1

    :cond_c
    return v2
.end method

.method private static blacklist nullOrEmpty(Landroid/graphics/Rect;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

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

.method private blacklist signalComplete()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    invoke-static {}, Landroid/view/flags/Flags;->scrollCaptureTargetZOrderFix()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/view/ScrollCaptureSearchResults;->PRIORITY_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    :cond_0
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mOnCompleteListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mOnCompleteListener:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist addTarget(Landroid/view/ScrollCaptureTarget;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getCallback()Landroid/view/ScrollCaptureCallback;

    move-result-object v0

    new-instance v1, Landroid/view/ScrollCaptureSearchResults$SearchRequest;

    invoke-direct {v1, p0, p1}, Landroid/view/ScrollCaptureSearchResults$SearchRequest;-><init>(Landroid/view/ScrollCaptureSearchResults;Landroid/view/ScrollCaptureTarget;)V

    iget-object p1, p0, Landroid/view/ScrollCaptureSearchResults;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v1}, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda1;-><init>(Landroid/view/ScrollCaptureSearchResults;Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    const-string/jumbo v0, "results:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "complete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ScrollCaptureSearchResults;->isComplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancelled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "targets:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/view/ScrollCaptureSearchResults;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "None"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ScrollCaptureTarget;

    invoke-virtual {v1, p1}, Landroid/view/ScrollCaptureTarget;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public blacklist finish()V
    .locals 1

    iget-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    invoke-direct {p0}, Landroid/view/ScrollCaptureSearchResults;->signalComplete()V

    :cond_0
    return-void
.end method

.method public blacklist getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getTopResult()Landroid/view/ScrollCaptureTarget;
    .locals 7

    invoke-static {}, Landroid/view/flags/Flags;->scrollCaptureTargetZOrderFix()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, v2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ScrollCaptureTarget;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    return-object v2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    new-instance v4, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ScrollCaptureTarget;

    invoke-virtual {v3}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ScrollCaptureTarget;

    invoke-virtual {v5}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/view/ScrollCaptureSearchResults;->isDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v4}, Landroid/view/ScrollCaptureSearchResults;->hasIncludeHint(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v5}, Landroid/view/ScrollCaptureSearchResults;->hasIncludeHint(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_2
    iget-object v5, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ScrollCaptureTarget;

    invoke-direct {p0, v3}, Landroid/view/ScrollCaptureSearchResults;->getScrollBoundsInWindow(Landroid/view/ScrollCaptureTarget;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {p0, v5}, Landroid/view/ScrollCaptureSearchResults;->getScrollBoundsInWindow(Landroid/view/ScrollCaptureTarget;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    new-instance p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    new-instance v1, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    return-object v2

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ScrollCaptureTarget;

    return-object p0
.end method

.method public blacklist isComplete()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    return p0
.end method

.method public blacklist isEmpty()Z
    .locals 0

    iget-object p0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public blacklist setOnCompleteListener(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iput-object p1, p0, Landroid/view/ScrollCaptureSearchResults;->mOnCompleteListener:Ljava/lang/Runnable;

    return-void
.end method
