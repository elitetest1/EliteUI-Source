.class public Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ParticlesLoop.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ParticlesLoop"

.field private static final blacklist MAX_EQU_LENGTH:I = 0x20

.field private static final blacklist MAX_FLOAT_ARRAY:I = 0x7d0

.field private static final blacklist OP_CODE:I = 0xa3


# instance fields
.field private final blacklist mEquations:[[F

.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field private final blacklist mId:I

.field private blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOutEquations:[[F

.field private final blacklist mOutRestart:[F

.field private blacklist mParticles:[[F

.field blacklist mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

.field private final blacklist mRestart:[F

.field private blacklist mVarId:[I


# direct methods
.method public constructor blacklist <init>(I[F[[F)V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    array-length v0, p2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    array-length v1, p2

    invoke-static {p2, p1, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    :goto_0
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    array-length p2, p3

    new-array p2, p2, [[F

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    move p2, p1

    :goto_1
    array-length v0, p3

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v1, p3, p2

    array-length v1, v1

    new-array v1, v1, [F

    aput-object v1, v0, p2

    aget-object v0, p3, p2

    array-length v2, v0

    invoke-static {v0, p1, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[[F)V
    .locals 3

    const/16 v0, 0xa3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    move v0, p1

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget v1, p2, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    :cond_1
    array-length p2, p3

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    move p2, p1

    :goto_1
    array-length v0, p3

    if-ge p2, v0, :cond_3

    aget-object v0, p3, p2

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    move v0, p1

    :goto_2
    aget-object v1, p3, p2

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 5

    const/16 v0, 0xa3

    const-string v1, "ParticlesLoop"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "This evolves the particles & recycles them"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "id"

    const-string v1, "id of particle system"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "the number of floats in restart equeation if 0 no restart"

    const-string/jumbo v1, "recycleLen"

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "array of floats"

    const/16 v3, 0xa

    const-string/jumbo v4, "values"

    invoke-virtual {p0, v3, v4, v1, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "varLen"

    const-string/jumbo v1, "the number of equations to follow"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "equLen"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v1, "floats for the equation"

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 10
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

    const/4 v2, 0x0

    if-lez v1, :cond_0

    new-array v3, v1, [F

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    const/16 v4, 0x7d0

    const-string v5, " map entries more than max = 2000"

    if-gt v1, v4, :cond_5

    new-array v4, v1, [[F

    move v6, v2

    :goto_1
    if-ge v6, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v7

    const/16 v8, 0x20

    if-gt v7, v8, :cond_3

    new-array v7, v7, [F

    aput-object v7, v4, v6

    move v7, v2

    :goto_2
    aget-object v8, v4, v6

    array-length v9, v8

    if-ge v7, v9, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v9

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;-><init>(I[F[[F)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    array-length v3, v3

    if-ge v2, v3, :cond_7

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v4, v4, v2

    array-length v5, v4

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mVarId:[I

    aget v5, v5, v3

    aget v4, v4, v3

    invoke-virtual {v0, v5, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v4, v4, v2

    array-length v5, v4

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v6, v6, v3

    array-length v7, v6

    new-array v8, v1, [F

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v5

    aput v5, v4, v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mVarId:[I

    aget v4, v4, v3

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v5, v5, v2

    aget v5, v5, v3

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    if-eqz v3, :cond_4

    move v3, v1

    :goto_3
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    array-length v5, v4

    if-ge v3, v5, :cond_3

    aget v4, v4, v3

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v4

    :cond_2
    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    array-length v5, v4

    new-array v6, v1, [F

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->initializeParticle(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 7

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->getParticles()[[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->getVariableIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mVarId:[I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {p1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v2, v2, v0

    array-length v3, v2

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_3

    aget v5, v2, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v5

    invoke-virtual {p1, v5, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 1

    const-string v0, "ParticlesLoop"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "id"

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParticlesLoop["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v2

    :cond_0
    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v2, v2, v0

    move v3, v1

    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_3

    aget v4, v2, v3

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v5, v5, v0

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v4

    :cond_2
    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    invoke-static {p1, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[[F)V

    return-void
.end method
