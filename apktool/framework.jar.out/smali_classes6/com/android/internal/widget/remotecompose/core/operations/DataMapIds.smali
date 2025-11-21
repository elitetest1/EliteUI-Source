.class public Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "DataMapIds.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DataMapIds"

.field private static final blacklist MAX_MAP:I = 0x7d0

.field private static final blacklist OP_CODE:I = 0x91

.field public static final blacklist TYPE_BOOLEAN:B = 0x4t

.field public static final blacklist TYPE_FLOAT:B = 0x2t

.field public static final blacklist TYPE_INT:B = 0x1t

.field public static final blacklist TYPE_LONG:B = 0x3t

.field public static final blacklist TYPE_STRING:B


# instance fields
.field final blacklist mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

.field blacklist mId:I


# direct methods
.method public constructor blacklist <init>(I[Ljava/lang/String;[B[I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mId:I

    new-instance p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    invoke-direct {p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;-><init>([Ljava/lang/String;[B[I)V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Ljava/lang/String;[B[I)V
    .locals 1

    const/16 v0, 0x91

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    aget-object v0, p2, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeUTF8(Ljava/lang/String;)V

    if-nez p3, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    aget-byte v0, p3, p1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    aget v0, p4, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 4

    const/16 v0, 0x91

    const-string v1, "DataMapIds"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Encode a collection of name id pairs"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "id"

    const-string v1, "id the array"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "number of entries"

    const-string v1, "length"

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "names[0]"

    const-string/jumbo v3, "path encoded as floats"

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const/4 v0, 0x5

    const-string v2, "id[0]"

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
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

    const/16 v2, 0x7d0

    if-gt v1, v2, :cond_1

    new-array v2, v1, [Ljava/lang/String;

    new-array v3, v1, [I

    new-array v4, v1, [B

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;

    invoke-direct {p0, v0, v2, v4, v3}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;-><init>(I[Ljava/lang/String;[B[I)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " map entries more than max = 2000"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist typeString(B)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "Boolean"

    return-object p0

    :cond_1
    const-string p0, "Long"

    return-object p0

    :cond_2
    const-string p0, "Float"

    return-object p0

    :cond_3
    const-string p0, "Int"

    return-object p0

    :cond_4
    const-string p0, "String"

    return-object p0
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mId:I

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataMapIds["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mId:I

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mTypes:[B

    aget-byte v2, v2, v1

    invoke-direct {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->typeString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mIds:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mNames:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mTypes:[B

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mIds:[I

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Ljava/lang/String;[B[I)V

    return-void
.end method
