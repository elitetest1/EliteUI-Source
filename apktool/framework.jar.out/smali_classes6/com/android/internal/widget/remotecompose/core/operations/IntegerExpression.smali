.class public Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "IntegerExpression.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "IntegerExpression"

.field public static final blacklist MAX_SIZE:I = 0x140

.field private static final blacklist OP_CODE:I = 0x90


# instance fields
.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;

.field public blacklist mId:I

.field private blacklist mLastChange:F

.field private blacklist mMask:I

.field public blacklist mPreCalcValue:[I

.field private blacklist mPreMask:I

.field public final blacklist mSrcValue:[I


# direct methods
.method public constructor blacklist <init>(II[I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mLastChange:F

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mMask:I

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II[I)V
    .locals 1

    const/16 v0, 0x90

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    array-length p1, p3

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget v0, p3, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 4

    const/16 v0, 0x90

    const-string v1, "IntegerExpression"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Expression that computes an integer"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "id"

    const-string v1, "id of integer"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "mask"

    const-string v1, "bits representing operators or other id\'s"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "length of array"

    const-string v1, "length"

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "values"

    const-string v2, "Array of ints"

    const/16 v3, 0xb

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0x90

    return v0
.end method

.method public static blacklist isId(III)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/high16 p0, 0x10000

    if-ge p2, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "IntegerExpression"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    const/16 v3, 0x140

    if-gt v2, v3, :cond_1

    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;-><init>(II[I)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "buffer corrupt integer expression "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mLastChange:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mLastChange:F

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreMask:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->eval(I[I[I)I

    move-result v0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mId:I

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadInteger(II)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist evaluate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mLastChange:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mLastChange:F

    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreMask:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->eval(I[I[I)I

    move-result p0

    return p0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mMask:I

    aget v1, v1, v0

    invoke-static {v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->isId(III)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->EXPRESSION:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string v0, "IntegerExpression"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mask"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mMask:I

    const-string/jumbo v1, "srcValues"

    invoke-interface {p1, v1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addIntExpressionSrc(Ljava/lang/String;[II)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    if-nez v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    if-eqz v1, :cond_1

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mMask:I

    invoke-static {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->isOperation(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mMask:I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    aget v3, v3, v1

    invoke-static {v2, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->isId(III)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toMathName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IntegerExpression["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] = ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mMask:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreMask:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mMask:I

    aget v1, v1, v0

    invoke-static {v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->isId(III)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreMask:I

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    not-int v2, v2

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreMask:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getInteger(I)I

    move-result v2

    aput v2, v1, v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    aget v2, v2, v0

    aput v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mMask:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    invoke-static {p1, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II[I)V

    return-void
.end method
