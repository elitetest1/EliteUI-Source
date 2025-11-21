.class public Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "FloatExpression.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/ComponentData;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "FloatExpression"

.field public static final blacklist MAX_EXPRESSION_SIZE:I = 0x20

.field private static final blacklist OP_CODE:I = 0x51


# instance fields
.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field public blacklist mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

.field public blacklist mId:I

.field blacklist mLastAnimatedValue:F

.field private blacklist mLastCalculatedValue:F

.field private blacklist mLastChange:F

.field public blacklist mPreCalcValue:[F

.field private blacklist mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

.field public blacklist mSrcAnimation:[F

.field public blacklist mSrcValue:[F


# direct methods
.method public constructor blacklist <init>(I[F[F)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    if-eqz p3, :cond_1

    array-length p1, p3

    const/4 p2, 0x4

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    invoke-direct {p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;-><init>([F)V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    return-void

    :cond_0
    new-instance p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    invoke-direct {p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;-><init>([F)V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    :cond_1
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V
    .locals 3

    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    array-length p1, p2

    const/16 v0, 0x20

    if-gt p1, v0, :cond_3

    if-eqz p3, :cond_0

    array-length v0, p3

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget v2, p2, v1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    array-length p1, p3

    :goto_1
    if-ge v0, p1, :cond_2

    aget p2, p3, v0

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to long"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 6

    const/16 v0, 0x51

    const-string v1, "FloatExpression"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "A Float expression"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "id"

    const-string v1, "The id of the Color"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "expression length"

    const/16 v1, 0x9

    const-string v3, "expression_length"

    invoke-virtual {p0, v1, v3, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "animation description length"

    const-string v4, "animation_length"

    invoke-virtual {p0, v1, v4, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "expression"

    const-string v1, "Sequence of Floats representing and expression"

    const/16 v5, 0xa

    invoke-virtual {p0, v5, v0, v3, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "AnimationSpec"

    const-string v1, "Sequence of Floats representing animation curve"

    invoke-virtual {p0, v5, v0, v4, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "duration"

    const-string v1, "> time in sec"

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "bits"

    const-string v1, "> WRAP|INITALVALUE | TYPE "

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "spec"

    const-string v1, "> [SPEC PARAMETERS] "

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "initialValue"

    const-string v1, "> [Initial value] "

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "wrapValue"

    const-string v1, "> [Wrap value] "

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0x51

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "FloatExpression"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 7
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

    const v2, 0xffff

    and-int v3, v1, v2

    const/16 v4, 0x20

    if-gt v3, v4, :cond_3

    shr-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v2

    new-array v2, v3, [F

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    new-array v3, v1, [F

    :goto_1
    if-ge v4, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :cond_2
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;-><init>(I[F[F)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Float expression too long"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    const-string v2, " len = "

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v5, v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->getInitialValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->get(F)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->markDirty()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->get(F)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastAnimatedValue:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v4, v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist evaluate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v1, p0

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result p0

    return p0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

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

    const-string v0, "FloatExpression"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string/jumbo v0, "srcValues"

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addFloatExpressionSrc(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string v0, "animation"

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v3, v3, v1

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idStringFromNan(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    const-string v2, ")"

    const-string v3, "] = ("

    const-string v4, "FloatExpression["

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    invoke-static {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    invoke-static {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    array-length v4, v3

    if-ge v1, v4, :cond_7

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v3

    const/16 v5, 0x1b

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aget v6, v4, v1

    cmpl-float v6, v6, v3

    if-eqz v6, :cond_6

    aput v3, v4, v1

    :goto_1
    move v2, v5

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aget v6, v4, v1

    cmpl-float v6, v6, v3

    if-eqz v6, :cond_6

    aput v3, v4, v1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    aput v3, v4, v1

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    aget v4, v4, v1

    aput v4, v3, v1

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    if-eqz v2, :cond_8

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mPreCalcValue:[F

    array-length v4, v3

    new-array v5, v0, [F

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v1

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastChange:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mLastCalculatedValue:F

    :cond_8
    move v0, v2

    :cond_9
    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->getTargetValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->getTargetValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setInitialValue(F)V

    :goto_3
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mFloatAnimation:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setTargetValue(F)V

    return-void

    :cond_b
    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSpring:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;

    if-eqz p0, :cond_c

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/SpringStopEngine;->setTargetValue(F)V

    :cond_c
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcValue:[F

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mSrcAnimation:[F

    invoke-static {p1, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V

    return-void
.end method
