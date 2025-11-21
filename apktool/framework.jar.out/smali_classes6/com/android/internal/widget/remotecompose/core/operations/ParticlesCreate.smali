.class public Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ParticlesCreate.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ParticlesCreate"

.field private static final blacklist MAX_EQU_LENGTH:I = 0x20

.field private static final blacklist MAX_FLOAT_ARRAY:I = 0x7d0

.field private static final blacklist OP_CODE:I = 0xa1


# instance fields
.field private final blacklist mEquations:[[F

.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field private final blacklist mId:I

.field private final blacklist mIndexeVars:[I

.field private final blacklist mOutEquations:[[F

.field private final blacklist mParticleCount:I

.field private final blacklist mParticles:[[F

.field private final blacklist mVarId:[I


# direct methods
.method public constructor blacklist <init>(I[I[[FI)V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mId:I

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticleCount:I

    array-length p1, p3

    new-array p1, p1, [[F

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v2, p3, v0

    array-length v2, v2

    new-array v2, v2, [F

    aput-object v2, v1, v0

    aget-object v1, p3, v0

    array-length v3, v1

    invoke-static {v1, p1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length p2, p2

    const/4 p3, 0x2

    new-array p3, p3, [I

    const/4 v0, 0x1

    aput p2, p3, v0

    aput p4, p3, p1

    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[F

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    const/16 p2, 0x14

    new-array p2, p2, [I

    sget p3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->VAR1:F

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    move p4, p1

    move v0, p4

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    array-length v1, v1

    if-ge p4, v1, :cond_3

    move v1, p1

    :goto_2
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v2, v2, p4

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v2, v2, p4

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    if-ne v2, p3, :cond_1

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    array-length v3, v3

    mul-int/2addr v3, p4

    add-int/2addr v3, v1

    aput v3, p2, v0

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mIndexeVars:[I

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I[[FI)V
    .locals 3

    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    const/4 p1, 0x0

    move p4, p1

    :goto_0
    array-length v0, p2

    if-ge p4, v0, :cond_1

    aget v0, p2, p4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    aget-object v0, p3, p4

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    move v0, p1

    :goto_1
    aget-object v1, p3, p4

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 5

    const/16 v0, 0xa1

    const-string v1, "ParticlesCreate"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Creates a particle system"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "The reference of the particle system"

    const/4 v1, 0x0

    const-string v2, "id"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "particleCount"

    const-string/jumbo v3, "number of particles to create"

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "number of variables asociate with the particles"

    const-string/jumbo v3, "varLen"

    invoke-virtual {p0, v1, v3, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "id followed by equations"

    const/16 v4, 0xa

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "equLen"

    const-string v2, "length of the equation"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "varLen * equLen"

    const-string v1, "float array equations"

    const-string v2, "equation"

    invoke-virtual {p0, v4, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 11
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

    const/16 v3, 0x7d0

    const-string v4, " map entries more than max = 2000"

    if-gt v2, v3, :cond_3

    new-array v3, v2, [I

    new-array v5, v2, [[F

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    aput v8, v3, v7

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    const/16 v9, 0x20

    if-gt v8, v9, :cond_1

    new-array v8, v8, [F

    aput-object v8, v5, v7

    move v8, v6

    :goto_1
    aget-object v9, v5, v7

    array-length v10, v9

    if-ge v8, v10, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v10

    aput v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    invoke-direct {p0, v0, v3, v5, v1}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;-><init>(I[I[[FI)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEquations()[[F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    return-object p0
.end method

.method public blacklist getParticles()[[F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    return-object p0
.end method

.method public blacklist getVariableIds()[I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    return-object p0
.end method

.method blacklist initializeParticle(I)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    aget-object v2, v2, p1

    array-length v2, v2

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mIndexeVars:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    array-length v5, v4

    div-int v5, v3, v5

    array-length v6, v4

    rem-int/2addr v3, v6

    aget-object v4, v4, v5

    int-to-float v5, p1

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v4, v4, v1

    array-length v5, v4

    new-array v6, v0, [F

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    array-length v0, v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->initializeParticle(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 7

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putObject(ILjava/lang/Object;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v5

    invoke-virtual {p1, v5, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 0

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParticlesCreate["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v5, v5, v3

    array-length v6, v5

    new-array v6, v6, [Ljava/lang/String;

    move v7, v2

    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_1

    aget v8, v5, v7

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v9, v5, v7

    invoke-static {v9}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idStringFromNan(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    array-length v2, v2

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v3, v3, v1

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v4, v4, v1

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v3

    :cond_0
    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticleCount:I

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I[[FI)V

    return-void
.end method
