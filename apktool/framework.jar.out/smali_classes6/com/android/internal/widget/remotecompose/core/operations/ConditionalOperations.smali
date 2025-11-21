.class public Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ConditionalOperations.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ConditionalOperations"

.field private static final blacklist OP_CODE:I = 0xb2

.field public static final blacklist TYPE_EQ:B = 0x0t

.field public static final blacklist TYPE_GT:B = 0x4t

.field public static final blacklist TYPE_GTE:B = 0x5t

.field public static final blacklist TYPE_LT:B = 0x2t

.field public static final blacklist TYPE_LTE:B = 0x3t

.field public static final blacklist TYPE_NEQ:B = 0x1t

.field private static final blacklist TYPE_STR:[Ljava/lang/String;


# instance fields
.field blacklist mIndexVariableId:I

.field public blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mType:B

.field blacklist mVarA:F

.field blacklist mVarAOut:F

.field blacklist mVarB:F

.field blacklist mVarBOut:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    const-string v4, "GT"

    const-string v5, "GTE"

    const-string v0, "EQ"

    const-string v1, "NEQ"

    const-string v2, "LT"

    const-string v3, "LTE"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->TYPE_STR:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(BFF)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    iput-byte p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mType:B

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;BFF)V
    .locals 1

    const/16 v0, 0xb2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 3

    const/16 v0, 0xb2

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Run if the condition is true"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "type"

    const-string/jumbo v1, "type of comparison"

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "a"

    const-string v1, "first value"

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "b"

    const-string/jumbo v1, "second value"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "ConditionalOperations"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result p0

    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;-><init>(BFF)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist estimateIterations()I
    .locals 0

    const/4 p0, 0x1

    return p0
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

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mType:B

    if-eqz v1, :cond_a

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    return-void

    :cond_a
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_b

    :goto_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    goto :goto_1

    :cond_b
    :goto_2
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_1
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 3

    const-string v0, "ConditionalOperations"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-byte v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mType:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Byte;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    const-string/jumbo v2, "varA"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    const-string v2, "VarB"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string v0, "list"

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConditionalOperations "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->TYPE_STR:[Ljava/lang/String;

    iget-byte v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mType:B

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    :goto_0
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    :goto_1
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 2

    iget-byte v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mType:B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    invoke-static {p1, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;BFF)V

    return-void
.end method
