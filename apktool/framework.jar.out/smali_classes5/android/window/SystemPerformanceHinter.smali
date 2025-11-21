.class public Landroid/window/SystemPerformanceHinter;
.super Ljava/lang/Object;
.source "SystemPerformanceHinter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SystemPerformanceHinter$DisplayRootProvider;,
        Landroid/window/SystemPerformanceHinter$NoOpHighPerfSession;,
        Landroid/window/SystemPerformanceHinter$HighPerfSession;,
        Landroid/window/SystemPerformanceHinter$HintFlags;
    }
.end annotation


# static fields
.field public static final blacklist HINT_ADPF:I = 0x4

.field public static final blacklist HINT_ALL:I = 0x7

.field private static final blacklist HINT_GLOBAL:I = 0x5

.field private static final blacklist HINT_NO_OP:I = 0x0

.field private static final blacklist HINT_PER_DISPLAY:I = 0x2

.field public static final blacklist HINT_SF:I = 0x3

.field public static final blacklist HINT_SF_EARLY_WAKEUP:I = 0x1

.field public static final blacklist HINT_SF_FRAME_RATE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SystemPerformanceHinter"


# instance fields
.field private final blacklist mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/SystemPerformanceHinter$HighPerfSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAdpfSession:Landroid/os/PerformanceHintManager$Session;

.field private blacklist mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

.field public blacklist mTraceTag:J

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveSessions(Landroid/window/SystemPerformanceHinter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mendSession(Landroid/window/SystemPerformanceHinter;Landroid/window/SystemPerformanceHinter$HighPerfSession;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/SystemPerformanceHinter;->endSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartSession(Landroid/window/SystemPerformanceHinter;Landroid/window/SystemPerformanceHinter$HighPerfSession;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/SystemPerformanceHinter;->startSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/window/SystemPerformanceHinter$DisplayRootProvider;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/window/SystemPerformanceHinter;-><init>(Landroid/content/Context;Landroid/window/SystemPerformanceHinter$DisplayRootProvider;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/window/SystemPerformanceHinter$DisplayRootProvider;Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/window/SystemPerformanceHinter$DisplayRootProvider;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1000

    iput-wide v0, p0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :goto_0
    iput-object p1, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private blacklist asyncTraceBegin(II)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PerfHint-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "PerfHint-adpf"

    goto :goto_0

    :cond_1
    const-string v0, "PerfHint-framerate"

    goto :goto_0

    :cond_2
    const-string v0, "PerfHint-early_wakeup"

    :goto_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-d"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-wide v1, p0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    xor-int/2addr p0, p1

    const-string p1, "SystemPerformanceHinter"

    invoke-static {v1, v2, p1, v0, p0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist asyncTraceEnd(I)V
    .locals 2

    iget-wide v0, p0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    xor-int/2addr p0, p1

    const-string p1, "SystemPerformanceHinter"

    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method

.method private blacklist calculateActiveHintFlags(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-static {v2}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v2

    and-int/2addr v2, p1

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private blacklist calculateActiveHintFlagsForDisplay(II)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-static {v2}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v2

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-static {v2}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v2

    and-int/2addr v2, p1

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private blacklist endSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V
    .locals 7

    invoke-virtual {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->asyncTraceEnd()Z

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlags(I)I

    move-result v2

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {p0, v4, v3}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlagsForDisplay(II)I

    move-result v3

    iget-object v5, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlags(I)I

    move-result v1

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlagsForDisplay(II)I

    move-result v5

    invoke-direct {p0, v3, v5, v4}, Landroid/window/SystemPerformanceHinter;->nowDisabled(III)Z

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result p1

    invoke-interface {v3, p1}, Landroid/window/SystemPerformanceHinter$DisplayRootProvider;->getRootForDisplay(I)Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object v3, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, p1, v6}, Landroid/view/SurfaceControl$Transaction;->setFrameRateSelectionStrategy(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, p1, v6, v6}, Landroid/view/SurfaceControl$Transaction;->setFrameRateCategory(Landroid/view/SurfaceControl;IZ)Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_0

    invoke-direct {p0, v4}, Landroid/window/SystemPerformanceHinter;->asyncTraceEnd(I)V

    :cond_0
    move v6, v5

    :cond_1
    invoke-direct {p0, v2, v1, v5}, Landroid/window/SystemPerformanceHinter;->nowDisabled(III)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupEnd()Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_3

    invoke-direct {p0, v5}, Landroid/window/SystemPerformanceHinter;->asyncTraceEnd(I)V

    goto :goto_0

    :cond_2
    move v5, v6

    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    invoke-direct {p0, v2, v1, p1}, Landroid/window/SystemPerformanceHinter;->nowDisabled(III)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    invoke-virtual {v1, v4}, Landroid/os/PerformanceHintManager$Session;->sendHint(I)V

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Landroid/window/SystemPerformanceHinter;->asyncTraceEnd(I)V

    :cond_4
    if-eqz v5, :cond_5

    iget-object p0, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->applyAsyncUnsafe()V

    :cond_5
    return-void
.end method

.method private blacklist nowDisabled(III)Z
    .locals 0

    and-int p0, p1, p3

    if-eqz p0, :cond_0

    and-int p0, p2, p3

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist nowEnabled(III)Z
    .locals 0

    and-int p0, p1, p3

    if-nez p0, :cond_0

    and-int p0, p2, p3

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist startSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V
    .locals 9

    invoke-virtual {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->asyncTraceBegin()Z

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlags(I)I

    move-result v2

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {p0, v4, v3}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlagsForDisplay(II)I

    move-result v3

    iget-object v5, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlags(I)I

    move-result v1

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlagsForDisplay(II)I

    move-result v5

    invoke-direct {p0, v3, v5, v4}, Landroid/window/SystemPerformanceHinter;->nowEnabled(III)Z

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/window/SystemPerformanceHinter$DisplayRootProvider;->getRootForDisplay(I)Landroid/view/SurfaceControl;

    move-result-object v3

    iget-object v7, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setFrameRateSelectionStrategy(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v7, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v8, 0x6

    invoke-virtual {v7, v3, v8, v6}, Landroid/view/SurfaceControl$Transaction;->setFrameRateCategory(Landroid/view/SurfaceControl;IZ)Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result p1

    invoke-direct {p0, v4, p1}, Landroid/window/SystemPerformanceHinter;->asyncTraceBegin(II)V

    :cond_0
    move p1, v5

    goto :goto_0

    :cond_1
    move p1, v6

    :goto_0
    invoke-direct {p0, v2, v1, v5}, Landroid/window/SystemPerformanceHinter;->nowEnabled(III)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    iget-object p1, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupStart()Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_3

    invoke-direct {p0, v5, v4}, Landroid/window/SystemPerformanceHinter;->asyncTraceBegin(II)V

    goto :goto_1

    :cond_2
    move v5, p1

    :cond_3
    :goto_1
    iget-object p1, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    invoke-direct {p0, v2, v1, p1}, Landroid/window/SystemPerformanceHinter;->nowEnabled(III)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    invoke-virtual {v1, v6}, Landroid/os/PerformanceHintManager$Session;->sendHint(I)V

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v4}, Landroid/window/SystemPerformanceHinter;->asyncTraceBegin(II)V

    :cond_4
    if-eqz v5, :cond_5

    iget-object p0, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->applyAsyncUnsafe()V

    :cond_5
    return-void
.end method


# virtual methods
.method public blacklist createSession(IILjava/lang/String;)Landroid/window/SystemPerformanceHinter$HighPerfSession;
    .locals 2

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    if-nez v0, :cond_1

    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Using SF frame rate hints requires a valid display root provider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    if-nez v1, :cond_3

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Using ADPF hints requires an ADPF session"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_4

    invoke-interface {v0, p2}, Landroid/window/SystemPerformanceHinter$DisplayRootProvider;->getRootForDisplay(I)Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "No display root for displayId="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SystemPerformanceHinter"

    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "PerfHint-NoDisplayRoot: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 p2, 0x20

    invoke-static {p2, p3, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    new-instance p1, Landroid/window/SystemPerformanceHinter$NoOpHighPerfSession;

    invoke-direct {p1, p0}, Landroid/window/SystemPerformanceHinter$NoOpHighPerfSession;-><init>(Landroid/window/SystemPerformanceHinter;)V

    return-object p1

    :cond_4
    new-instance v0, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/window/SystemPerformanceHinter$HighPerfSession;-><init>(Landroid/window/SystemPerformanceHinter;IILjava/lang/String;)V

    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not allow empty hint flags"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SystemPerformanceHinter:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Active sessions ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_0
    iget-object v1, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetreason(Landroid/window/SystemPerformanceHinter$HighPerfSession;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist setAdpfSession(Landroid/os/PerformanceHintManager$Session;)V
    .locals 0

    iput-object p1, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    return-void
.end method

.method public blacklist startSession(IILjava/lang/String;)Landroid/window/SystemPerformanceHinter$HighPerfSession;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/window/SystemPerformanceHinter;->createSession(IILjava/lang/String;)Landroid/window/SystemPerformanceHinter$HighPerfSession;

    move-result-object p1

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Landroid/window/SystemPerformanceHinter;->startSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V

    :cond_0
    return-object p1
.end method
