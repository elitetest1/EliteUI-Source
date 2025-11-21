.class public Landroid/graphics/PathIterator;
.super Ljava/lang/Object;
.source "PathIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PathIterator$NoImagePreloadHolder;,
        Landroid/graphics/PathIterator$Segment;,
        Landroid/graphics/PathIterator$Verb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/graphics/PathIterator$Segment;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist IS_DALVIK:Z

.field private static final blacklist POINT_ARRAY_SIZE:I = 0x8

.field public static final whitelist VERB_CLOSE:I = 0x5

.field public static final whitelist VERB_CONIC:I = 0x3

.field public static final whitelist VERB_CUBIC:I = 0x4

.field public static final whitelist VERB_DONE:I = 0x6

.field public static final whitelist VERB_LINE:I = 0x1

.field public static final whitelist VERB_MOVE:I = 0x0

.field public static final whitelist VERB_QUAD:I = 0x2


# instance fields
.field private blacklist mCachedVerb:I

.field private blacklist mDone:Z

.field private final blacklist mNativeIterator:J

.field private final blacklist mPath:Landroid/graphics/Path;

.field private final blacklist mPathGenerationId:I

.field private final blacklist mPointsAddress:J

.field private final blacklist mPointsArray:[F


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetFinalizer()J
    .locals 2

    invoke-static {}, Landroid/graphics/PathIterator;->nGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dalvik"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/graphics/PathIterator;->IS_DALVIK:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/graphics/Path;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/PathIterator;->mDone:Z

    iput-object p1, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    iget-wide v0, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/PathIterator;->nCreate(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    invoke-virtual {p1}, Landroid/graphics/Path;->getGenerationId()I

    move-result p1

    iput p1, p0, Landroid/graphics/PathIterator;->mPathGenerationId:I

    sget-boolean p1, Landroid/graphics/PathIterator;->IS_DALVIK:Z

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object p1

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v3, v2}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    invoke-virtual {p1, v2}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/graphics/PathIterator;->mPointsAddress:J

    goto :goto_0

    :cond_0
    new-array p1, v2, [F

    iput-object p1, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/graphics/PathIterator;->mPointsAddress:J

    :goto_0
    invoke-static {}, Landroid/graphics/PathIterator$NoImagePreloadHolder;->-$$Nest$sfgetsRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object p1

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method private blacklist getReturnVerb(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Landroid/graphics/PathIterator;->nextInternal()I

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    :pswitch_6
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static native blacklist nCreate(J)J
.end method

.method private static native blacklist nGetFinalizer()J
.end method

.method private static native blacklist nNext(JJ)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nNextHost(J[F)I
.end method

.method private static native blacklist nPeek(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private blacklist nextInternal()I
    .locals 6

    iget-boolean v0, p0, Landroid/graphics/PathIterator;->mDone:Z

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/graphics/PathIterator;->mPathGenerationId:I

    iget-object v2, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->getGenerationId()I

    move-result v2

    if-ne v0, v2, :cond_3

    sget-boolean v0, Landroid/graphics/PathIterator;->IS_DALVIK:Z

    if-eqz v0, :cond_1

    iget-wide v2, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    iget-wide v4, p0, Landroid/graphics/PathIterator;->mPointsAddress:J

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/PathIterator;->nNext(JJ)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    iget-object v0, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    invoke-static {v2, v3, v0}, Landroid/graphics/PathIterator;->nNextHost(J[F)I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/PathIterator;->mDone:Z

    :cond_2
    return v0

    :cond_3
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string v0, "Iterator cannot be used on modified Path"

    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .locals 2

    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/graphics/PathIterator;->nextInternal()I

    move-result v0

    iput v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    :cond_0
    iget p0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist next([FI)I
    .locals 3

    array-length v0, p1

    add-int/lit8 v1, p2, 0x8

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    invoke-direct {p0, v0}, Landroid/graphics/PathIterator;->getReturnVerb(I)I

    move-result v0

    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    iget-object p0, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {p0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo p1, "points array must be able to hold at least 8 entries"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist next()Landroid/graphics/PathIterator$Segment;
    .locals 5

    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    invoke-direct {p0, v0}, Landroid/graphics/PathIterator;->getReturnVerb(I)I

    move-result v0

    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    new-array v3, v2, [F

    iget-object p0, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    const/4 v4, 0x0

    invoke-static {p0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Landroid/graphics/PathIterator$Segment;

    invoke-direct {p0, v0, v3, v1}, Landroid/graphics/PathIterator$Segment;-><init>(I[FF)V

    return-object p0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/PathIterator;->next()Landroid/graphics/PathIterator$Segment;

    move-result-object p0

    return-object p0
.end method

.method public whitelist peek()I
    .locals 2

    iget v0, p0, Landroid/graphics/PathIterator;->mPathGenerationId:I

    iget-object v1, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->getGenerationId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/graphics/PathIterator;->mDone:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    iget-wide v0, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    invoke-static {v0, v1}, Landroid/graphics/PathIterator;->nPeek(J)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string v0, "Iterator cannot be used on modified Path"

    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
