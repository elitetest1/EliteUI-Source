.class public Landroid/view/InputEventCompatProcessor;
.super Ljava/lang/Object;
.source "InputEventCompatProcessor.java"


# instance fields
.field protected blacklist mContext:Landroid/content/Context;

.field private final blacklist mLetterboxScrollProcessor:Landroid/view/LetterboxScrollProcessor;

.field private final blacklist mProcessedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mTargetSdkVersion:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/InputEventCompatProcessor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InputEventCompatProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p1, p0, Landroid/view/InputEventCompatProcessor;->mTargetSdkVersion:I

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->scrollingFromLetterbox()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/LetterboxScrollProcessor;

    iget-object v0, p0, Landroid/view/InputEventCompatProcessor;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Landroid/view/LetterboxScrollProcessor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/view/InputEventCompatProcessor;->mLetterboxScrollProcessor:Landroid/view/LetterboxScrollProcessor;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/InputEventCompatProcessor;->mLetterboxScrollProcessor:Landroid/view/LetterboxScrollProcessor;

    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/InputEventCompatProcessor;->mProcessedEvents:Ljava/util/List;

    return-void
.end method

.method private blacklist processLetterboxScrollCompatibility(Landroid/view/InputEvent;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InputEvent;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/InputEventCompatProcessor;->mLetterboxScrollProcessor:Landroid/view/LetterboxScrollProcessor;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Landroid/view/InputEventCompatProcessor;->mLetterboxScrollProcessor:Landroid/view/LetterboxScrollProcessor;

    invoke-virtual {p0, p1}, Landroid/view/LetterboxScrollProcessor;->processMotionEvent(Landroid/view/MotionEvent;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist processStylusButtonCompatibility(Landroid/view/InputEvent;)Landroid/view/InputEvent;
    .locals 1

    iget p0, p0, Landroid/view/InputEventCompatProcessor;->mTargetSdkVersion:I

    const/16 v0, 0x17

    if-ge p0, v0, :cond_1

    instance-of p0, p1, Landroid/view/MotionEvent;

    if-eqz p0, :cond_1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    and-int/lit8 v0, p0, 0x60

    shr-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    or-int/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->setButtonState(I)V

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist processInputEventBeforeFinish(Landroid/view/InputEvent;)Landroid/view/InputEvent;
    .locals 1

    iget-object p0, p0, Landroid/view/InputEventCompatProcessor;->mLetterboxScrollProcessor:Landroid/view/LetterboxScrollProcessor;

    if-eqz p0, :cond_0

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Landroid/view/LetterboxScrollProcessor;->processMotionEventBeforeFinish(Landroid/view/MotionEvent;)Landroid/view/InputEvent;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public blacklist processInputEventForCompatibility(Landroid/view/InputEvent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InputEvent;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/InputEventCompatProcessor;->mProcessedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0, p1}, Landroid/view/InputEventCompatProcessor;->processStylusButtonCompatibility(Landroid/view/InputEvent;)Landroid/view/InputEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/InputEventCompatProcessor;->processLetterboxScrollCompatibility(Landroid/view/InputEvent;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    iget-object p1, p0, Landroid/view/InputEventCompatProcessor;->mProcessedEvents:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroid/view/InputEventCompatProcessor;->mProcessedEvents:Ljava/util/List;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object v0, p0, Landroid/view/InputEventCompatProcessor;->mProcessedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Landroid/view/InputEventCompatProcessor;->mProcessedEvents:Ljava/util/List;

    return-object p0
.end method
