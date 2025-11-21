.class public final Landroid/os/PerfettoTrackEventExtra$Builder;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrackEventExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgBool;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgDouble;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgInt64;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgString;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCategory:Landroid/os/PerfettoTrace$Category;

.field private final blacklist mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

.field private final blacklist mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

.field private final blacklist mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$CounterTrack;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

.field private blacklist mEventName:Ljava/lang/String;

.field private final blacklist mExtra:Landroid/os/PerfettoTrackEventExtra;

.field private final blacklist mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldDouble;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldInt64;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldNested;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldString;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

.field private blacklist mIsBuilt:Z

.field private final blacklist mIsCategoryEnabled:Z

.field private final blacklist mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$NamedTrack;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

.field private final blacklist mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

.field private final blacklist mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

.field private blacklist mTraceType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$minitInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$Builder;->initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsTrackEventExtra()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/PerfettoTrackEventExtra$Builder;-><init>(Landroid/os/PerfettoTrackEventExtra;Z)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/PerfettoTrackEventExtra-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra$Builder;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PerfettoTrackEventExtra;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmNamedTrackCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    if-nez p1, :cond_1

    move-object v0, p2

    goto :goto_1

    :cond_1
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmCounterTrackCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    if-nez p1, :cond_2

    move-object v0, p2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmArgInt64Cache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    if-nez p1, :cond_3

    move-object v0, p2

    goto :goto_3

    :cond_3
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmArgDoubleCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    if-nez p1, :cond_4

    move-object v0, p2

    goto :goto_4

    :cond_4
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmArgBoolCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    if-nez p1, :cond_5

    move-object v0, p2

    goto :goto_5

    :cond_5
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmArgStringCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    if-nez p1, :cond_6

    move-object v0, p2

    goto :goto_6

    :cond_6
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmFieldInt64Cache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;

    if-nez p1, :cond_7

    move-object v0, p2

    goto :goto_7

    :cond_7
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmFieldDoubleCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    if-nez p1, :cond_8

    move-object v0, p2

    goto :goto_8

    :cond_8
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmFieldStringCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    if-nez p1, :cond_9

    move-object v0, p2

    goto :goto_9

    :cond_9
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmFieldNestedCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    if-nez p1, :cond_a

    move-object v0, p2

    goto :goto_a

    :cond_a
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmBuilderCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    if-nez p1, :cond_b

    move-object v0, p2

    goto :goto_b

    :cond_b
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetCounterInt64(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    if-nez p1, :cond_c

    move-object v0, p2

    goto :goto_c

    :cond_c
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetCounterDouble(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    if-nez p1, :cond_d

    move-object v0, p2

    goto :goto_d

    :cond_d
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetProto(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Proto;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    if-nez p1, :cond_e

    move-object v0, p2

    goto :goto_e

    :cond_e
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetFlow(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Flow;

    move-result-object v0

    :goto_e
    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    if-nez p1, :cond_f

    goto :goto_f

    :cond_f
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetTerminatingFlow(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Flow;

    move-result-object p2

    :goto_f
    iput-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    return-void
.end method

.method private blacklist checkContainer()V
    .locals 1

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->checkState()V

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Field operations must be within beginProto/endProto block"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkParent()V
    .locals 1

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->checkState()V

    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Operation not supported for proto"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkState()V
    .locals 1

    iget-boolean p0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsBuilt:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This builder has already been used. Create a new builder for another event."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 0

    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    iput-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsBuilt:Z

    return-object p0
.end method


# virtual methods
.method public blacklist addArg(Ljava/lang/String;D)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;

    invoke-direct {v0, p1}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, p2, p3}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->setValue(D)V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {p1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    return-object p0
.end method

.method public blacklist addArg(Ljava/lang/String;J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$ArgInt64;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$ArgInt64;

    invoke-direct {v0, p1}, Landroid/os/PerfettoTrackEventExtra$ArgInt64;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, p2, p3}, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->setValue(J)V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {p1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    return-object p0
.end method

.method public blacklist addArg(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$ArgString;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$ArgString;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$ArgString;

    invoke-direct {v0, p1}, Landroid/os/PerfettoTrackEventExtra$ArgString;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, p2}, Landroid/os/PerfettoTrackEventExtra$ArgString;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {p1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    return-object p0
.end method

.method public blacklist addArg(Ljava/lang/String;Z)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$ArgBool;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$ArgBool;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$ArgBool;

    invoke-direct {v0, p1}, Landroid/os/PerfettoTrackEventExtra$ArgBool;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, p2}, Landroid/os/PerfettoTrackEventExtra$ArgBool;->setValue(Z)V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {p1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    return-object p0
.end method

.method public blacklist addField(JD)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFieldDoubleSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$FieldDouble;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PerfettoTrackEventExtra$FieldDouble;->setValue(JD)V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    invoke-virtual {p1, p2, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    return-object p0
.end method

.method public blacklist addField(JJ)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFieldInt64Supplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$FieldInt64;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PerfettoTrackEventExtra$FieldInt64;->setValue(JJ)V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    invoke-virtual {p1, p2, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    return-object p0
.end method

.method public blacklist addField(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFieldStringSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$FieldString;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PerfettoTrackEventExtra$FieldString;->setValue(JLjava/lang/String;)V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    invoke-virtual {p1, p2, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    return-object p0
.end method

.method public blacklist beginNested(J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFieldNestedSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$FieldNested;

    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$FieldNested;->setId(J)V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    invoke-virtual {p1, p2, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsBuilderSupplier()Ljava/util/function/Supplier;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PerfettoTrackEventExtra$Builder;

    invoke-direct {p1, p0, v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist beginProto()Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Proto;->clearFields()V

    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsBuilderSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$Builder;

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    invoke-direct {v0, p0, v1}, Landroid/os/PerfettoTrackEventExtra$Builder;->initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist emit()V
    .locals 7

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsBuilt:Z

    iget v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTraceType:I

    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCategory:Landroid/os/PerfettoTrace$Category;

    invoke-virtual {v0}, Landroid/os/PerfettoTrace$Category;->getPtr()J

    move-result-wide v2

    iget-object v4, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mEventName:Ljava/lang/String;

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {p0}, Landroid/os/PerfettoTrackEventExtra;->getPtr()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$smnative_emit(IJLjava/lang/String;J)V

    return-void
.end method

.method public blacklist endNested()Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 1

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No nested field to end"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist endProto()Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 1

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No proto to end"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist init(ILandroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 1

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iput p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTraceType:I

    iput-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCategory:Landroid/os/PerfettoTrace$Category;

    const-string p1, ""

    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mEventName:Ljava/lang/String;

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {p1}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {p1}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {p1}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {p1}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {p1}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {p1}, Landroid/os/PerfettoTrackEventExtra;->reset()V

    const/4 p1, 0x0

    invoke-direct {p0, p0, p1}, Landroid/os/PerfettoTrackEventExtra$Builder;->initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setCounter(D)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 1

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$CounterDouble;->setValue(D)V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    invoke-virtual {p1, p2}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    return-object p0
.end method

.method public blacklist setCounter(J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 1

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$CounterInt64;->setValue(J)V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    invoke-virtual {p1, p2}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    return-object p0
.end method

.method public blacklist setEventName(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 0

    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mEventName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setFlow(J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 1

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$Flow;->setProcessFlow(J)V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-virtual {p1, p2}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    return-object p0
.end method

.method public blacklist setTerminatingFlow(J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 1

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$Flow;->setProcessTerminatingFlow(J)V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-virtual {p1, p2}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    return-object p0
.end method

.method public blacklist usingCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$CounterTrack;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$CounterTrack;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$CounterTrack;

    invoke-direct {v0, p3, p1, p2}, Landroid/os/PerfettoTrackEventExtra$CounterTrack;-><init>(Ljava/lang/String;J)V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {p1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    return-object p0
.end method

.method public blacklist usingNamedTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$NamedTrack;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$NamedTrack;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$NamedTrack;

    invoke-direct {v0, p3, p1, p2}, Landroid/os/PerfettoTrackEventExtra$NamedTrack;-><init>(Ljava/lang/String;J)V

    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {p1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    return-object p0
.end method

.method public blacklist usingProcessCounterTrack(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/os/PerfettoTrace;->getProcessTrackUuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist usingProcessNamedTrack(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 2

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/os/PerfettoTrace;->getProcessTrackUuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingNamedTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist usingThreadCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 1

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Landroid/os/PerfettoTrace;->getThreadTrackUuid(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist usingThreadNamedTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .locals 1

    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Landroid/os/PerfettoTrace;->getThreadTrackUuid(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingNamedTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    return-object p0
.end method
