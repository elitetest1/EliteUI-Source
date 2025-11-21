.class final Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
.super Lcom/android/internal/util/function/pooled/OmniFunction;
.source "PooledLambdaImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;,
        Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/internal/util/function/pooled/OmniFunction<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist FLAG_ACQUIRED_FROM_MESSAGE_CALLBACKS_POOL:I = 0x2000

.field private static final blacklist FLAG_RECYCLED:I = 0x800

.field private static final blacklist FLAG_RECYCLE_ON_USE:I = 0x1000

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "PooledLambdaImpl"

.field static final blacklist MASK_EXPOSED_AS:I = 0x1fc000

.field static final blacklist MASK_FUNC_TYPE:I = 0xfe00000

.field private static final blacklist MAX_ARGS:I = 0xb

.field private static final blacklist MAX_POOL_SIZE:I = 0x32

.field static final blacklist sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

.field static final blacklist sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;


# instance fields
.field blacklist mArgs:[Ljava/lang/Object;

.field blacklist mConstValue:J

.field blacklist mFlags:I

.field blacklist mFunc:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smmask(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mask(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smunmask(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->unmask(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    new-instance v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    return-void
.end method

.method static blacklist acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/android/internal/util/function/pooled/PooledLambda;",
            ">(",
            "Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;",
            "Ljava/lang/Object;",
            "III",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    const/high16 p1, 0xfe00000

    invoke-static {p2, p4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->encode(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    const p1, 0x1fc000

    invoke-static/range {p3 .. p4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->encode(II)I

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result p1

    if-ge p1, p2, :cond_0

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {p1, p2, p5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-static {p1, p2, p6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 p2, 0x2

    invoke-static {p1, p2, p7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 p2, 0x3

    invoke-static {p1, p2, p8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 p2, 0x4

    invoke-static {p1, p2, p9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 p2, 0x5

    invoke-static {p1, p2, p10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 p2, 0x6

    invoke-static {p1, p2, p11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 p2, 0x7

    invoke-static {p1, p2, p12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/16 p2, 0x8

    invoke-static {p1, p2, p13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/16 p2, 0x9

    invoke-static {p1, p2, p14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/16 p2, 0xa

    move-object/from16 p3, p15

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/16 p2, 0xb

    move-object/from16 p3, p16

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p0
.end method

.method static blacklist acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    invoke-direct {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;-><init>()V

    :cond_0
    iget v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit16 v1, v1, -0x801

    iput v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const/16 v1, 0x2000

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    return-object v0
.end method

.method static blacklist acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    .locals 2

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->encode(II)I

    move-result p0

    const/high16 v1, 0xfe00000

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    const v1, 0x1fc000

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    return-object v0
.end method

.method private blacklist checkNotRecycled()V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instance is recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist commaSeparateFirstN([Ljava/lang/Object;I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, ","

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist doInvoke()Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/high16 v1, 0xfe00000

    invoke-virtual {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeReturnType(I)I

    move-result v3

    const/16 v4, 0xf

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    if-eq v2, v4, :cond_1b

    const/16 v4, 0xa

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/16 v2, 0xb

    if-eq v3, v15, :cond_1

    if-eq v3, v14, :cond_0

    if-ne v3, v13, :cond_18

    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/DodecFunction;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-direct {v0, v2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v28

    invoke-interface/range {v16 .. v28}, Lcom/android/internal/util/function/DodecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/DodecPredicate;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-direct {v0, v2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v28

    invoke-interface/range {v16 .. v28}, Lcom/android/internal/util/function/DodecPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/DodecConsumer;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-direct {v0, v2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v28

    invoke-interface/range {v16 .. v28}, Lcom/android/internal/util/function/DodecConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10

    :pswitch_1
    if-eq v3, v15, :cond_3

    if-eq v3, v14, :cond_2

    if-ne v3, v13, :cond_18

    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/UndecFunction;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v16 .. v27}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/UndecPredicate;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v16 .. v27}, Lcom/android/internal/util/function/UndecPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/UndecConsumer;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-interface/range {v16 .. v27}, Lcom/android/internal/util/function/UndecConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10

    :pswitch_2
    if-eq v3, v15, :cond_5

    if-eq v3, v14, :cond_4

    if-ne v3, v13, :cond_18

    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/DecFunction;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-interface/range {v16 .. v26}, Lcom/android/internal/util/function/DecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/DecPredicate;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-interface/range {v16 .. v26}, Lcom/android/internal/util/function/DecPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/DecConsumer;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-interface/range {v16 .. v26}, Lcom/android/internal/util/function/DecConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10

    :pswitch_3
    if-eq v3, v15, :cond_7

    if-eq v3, v14, :cond_6

    if-ne v3, v13, :cond_18

    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/NonaFunction;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-interface/range {v16 .. v25}, Lcom/android/internal/util/function/NonaFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/NonaPredicate;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-interface/range {v16 .. v25}, Lcom/android/internal/util/function/NonaPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/NonaConsumer;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-interface/range {v16 .. v25}, Lcom/android/internal/util/function/NonaConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10

    :pswitch_4
    if-eq v3, v15, :cond_9

    if-eq v3, v14, :cond_8

    if-ne v3, v13, :cond_18

    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/OctFunction;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-interface/range {v16 .. v24}, Lcom/android/internal/util/function/OctFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/OctPredicate;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-interface/range {v16 .. v24}, Lcom/android/internal/util/function/OctPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/OctConsumer;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-interface/range {v16 .. v24}, Lcom/android/internal/util/function/OctConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10

    :pswitch_5
    if-eq v3, v15, :cond_b

    if-eq v3, v14, :cond_a

    if-ne v3, v13, :cond_18

    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/HeptFunction;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-interface/range {v16 .. v23}, Lcom/android/internal/util/function/HeptFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/HeptPredicate;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-interface/range {v16 .. v23}, Lcom/android/internal/util/function/HeptPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/HeptConsumer;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-interface/range {v16 .. v23}, Lcom/android/internal/util/function/HeptConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10

    :pswitch_6
    if-eq v3, v15, :cond_d

    if-eq v3, v14, :cond_c

    if-ne v3, v13, :cond_18

    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/HexFunction;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-interface/range {v16 .. v22}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_c
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/HexPredicate;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-interface/range {v16 .. v22}, Lcom/android/internal/util/function/HexPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/HexConsumer;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-interface/range {v16 .. v22}, Lcom/android/internal/util/function/HexConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10

    :pswitch_7
    if-eq v3, v15, :cond_f

    if-eq v3, v14, :cond_e

    if-ne v3, v13, :cond_18

    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/QuintFunction;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v16 .. v21}, Lcom/android/internal/util/function/QuintFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_e
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/QuintPredicate;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v16 .. v21}, Lcom/android/internal/util/function/QuintPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/QuintConsumer;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {v16 .. v21}, Lcom/android/internal/util/function/QuintConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10

    :pswitch_8
    if-eq v3, v15, :cond_11

    if-eq v3, v14, :cond_10

    if-ne v3, v13, :cond_18

    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/function/QuadFunction;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_10
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/function/QuadPredicate;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/util/function/QuadPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/function/QuadConsumer;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10

    :pswitch_9
    if-eq v3, v15, :cond_13

    if-eq v3, v14, :cond_12

    if-ne v3, v13, :cond_18

    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/function/TriFunction;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_12
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/function/TriPredicate;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_13
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/function/TriConsumer;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10

    :pswitch_a
    if-eq v3, v15, :cond_15

    if-eq v3, v14, :cond_14

    if-ne v3, v13, :cond_18

    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BiFunction;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_14
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BiPredicate;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_15
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BiConsumer;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10

    :pswitch_b
    if-eq v3, v15, :cond_17

    if-eq v3, v14, :cond_16

    if-ne v3, v13, :cond_18

    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Function;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_16
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Predicate;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_17
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v10

    :pswitch_c
    if-eq v3, v15, :cond_1a

    if-eq v3, v14, :cond_19

    if-ne v3, v13, :cond_18

    goto :goto_1

    :cond_18
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown function type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_1
    iget-object v0, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1a
    iget-object v0, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-object v10

    :cond_1b
    if-eq v3, v7, :cond_1e

    if-eq v3, v6, :cond_1d

    if-eq v3, v5, :cond_1c

    iget-object v0, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    return-object v0

    :cond_1c
    invoke-virtual {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1d
    invoke-virtual {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getAsLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-virtual {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist doRecycle()V
    .locals 3

    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    const/16 v1, 0x800

    iput v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    invoke-virtual {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist fillInArg(Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aget-object v3, v3, v2

    sget-object v4, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    if-ne v3, v4, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aput-object p1, v0, v2

    iget p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    int-to-long v0, p1

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    sget-object v0, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No more arguments expected for provided arg "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " among "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return v1
.end method

.method private blacklist getFuncTypeAsString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "<recycled>"

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isConstSupplier()Z

    move-result v0

    const-string/jumbo v1, "supplier"

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const v0, 0x1fc000

    invoke-virtual {p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Consumer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "consumer"

    return-object p0

    :cond_2
    const-string v0, "Function"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "function"

    return-object p0

    :cond_3
    const-string v0, "Predicate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo p0, "predicate"

    return-object p0

    :cond_4
    const-string v0, "Supplier"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v1

    :cond_5
    const-string v0, "Runnable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo p0, "runnable"

    :cond_6
    return-object p0
.end method

.method private static blacklist hashCodeHex(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist isConstSupplier()Z
    .locals 1

    const/high16 v0, 0xfe00000

    invoke-virtual {p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result p0

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isInvocationArgAtIndex(I)Z
    .locals 1

    iget p0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isRecycleOnUse()Z
    .locals 0

    iget p0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isRecycled()Z
    .locals 0

    iget p0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist mask(II)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    shl-int/2addr p1, v0

    and-int/2addr p0, p1

    return p0
.end method

.method private blacklist popArg(I)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-direct {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isInvocationArgAtIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    sget-object v2, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    aput-object v2, v1, p1

    iget v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    int-to-long v1, v1

    invoke-static {p1}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    not-long v3, v3

    and-long/2addr v1, v3

    long-to-int p1, v1

    iput p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    :cond_0
    return-object v0
.end method

.method private static blacklist setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    if-ge p1, v0, :cond_0

    aput-object p2, p0, p1

    :cond_0
    return-void
.end method

.method private static blacklist unmask(II)I
    .locals 1

    and-int/2addr p1, p0

    const/4 v0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    shl-int p0, v0, p0

    div-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public blacklist andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TR;+TV;>;)",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TV;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic whitelist test-api andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getAsDouble()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getAsInt()I
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    long-to-int p0, v0

    return p0
.end method

.method public whitelist test-api getAsLong()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    return-wide v0
.end method

.method blacklist getFlags(I)I
    .locals 0

    iget p0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    invoke-static {p1, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->unmask(II)I

    move-result p0

    return p0
.end method

.method public blacklist getTraceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/internal/util/FunctionalUtils;->getLambdaName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method blacklist invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->checkNotRecycled()V

    invoke-direct {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    :cond_0
    const/high16 p1, 0xfe00000

    invoke-virtual {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result p1

    const/16 p2, 0xf

    const/4 p3, 0x0

    if-eq p1, p2, :cond_2

    move p2, p3

    :goto_0
    if-ge p2, p1, :cond_2

    iget-object p4, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aget-object p4, p4, p2

    sget-object p5, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    if-eq p4, p5, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Missing argument #"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " among "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doInvoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycleOnUse()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doRecycle()V

    return-object p1

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result p2

    :goto_1
    if-ge p3, p2, :cond_4

    invoke-direct {p0, p3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycleOnUse()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result p2

    :goto_2
    if-ge p3, p2, :cond_6

    invoke-direct {p0, p3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doRecycle()V

    :cond_6
    throw p1
.end method

.method public blacklist negate()Lcom/android/internal/util/function/pooled/OmniFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic whitelist test-api negate()Ljava/util/function/BiPredicate;
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->negate()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api negate()Ljava/util/function/Predicate;
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->negate()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public blacklist recycle()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doRecycle()V

    :cond_0
    return-void
.end method

.method public blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    return-object p0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method blacklist setFlags(II)V
    .locals 2

    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    invoke-static {p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mask(II)I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<recycled PooledLambda@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->hashCodeHex(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isConstSupplier()Z

    move-result v1

    const-string v2, ")"

    const-string v3, "("

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFuncTypeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doInvoke()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    instance-of v4, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    if-eqz v4, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFuncTypeAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->hashCodeHex(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/high16 v3, 0xfe00000

    invoke-virtual {p0, v3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->commaSeparateFirstN([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
