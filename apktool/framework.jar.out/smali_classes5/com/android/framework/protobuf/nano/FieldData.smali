.class Lcom/android/framework/protobuf/nano/FieldData;
.super Ljava/lang/Object;
.source "FieldData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private blacklist cachedExtension:Lcom/android/framework/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/nano/Extension<",
            "**>;"
        }
    .end annotation
.end field

.field private blacklist unknownFieldData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist value:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "*TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iput-object p2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-void
.end method

.method private blacklist toByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/nano/FieldData;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-object v0
.end method


# virtual methods
.method blacklist addUnknownField(Lcom/android/framework/protobuf/nano/UnknownFieldData;)V
    .locals 0

    iget-object p0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final blacklist clone()Lcom/android/framework/protobuf/nano/FieldData;
    .locals 4

    new-instance v0, Lcom/android/framework/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/android/framework/protobuf/nano/FieldData;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object p0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-nez p0, :cond_1

    goto/16 :goto_3

    :cond_1
    instance-of v1, p0, Lcom/android/framework/protobuf/nano/MessageNano;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->clone()Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object p0

    iput-object p0, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    :cond_2
    instance-of v1, p0, [B

    if-eqz v1, :cond_3

    check-cast p0, [B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    :cond_3
    instance-of v1, p0, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p0, [[B

    array-length v1, p0

    new-array v1, v1, [[B

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_a

    aget-object v3, p0, v2

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    instance-of v1, p0, [Z

    if-eqz v1, :cond_5

    check-cast p0, [Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    :cond_5
    instance-of v1, p0, [I

    if-eqz v1, :cond_6

    check-cast p0, [I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    :cond_6
    instance-of v1, p0, [J

    if-eqz v1, :cond_7

    check-cast p0, [J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    :cond_7
    instance-of v1, p0, [F

    if-eqz v1, :cond_8

    check-cast p0, [F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    :cond_8
    instance-of v1, p0, [D

    if-eqz v1, :cond_9

    check-cast p0, [D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    :cond_9
    instance-of v1, p0, [Lcom/android/framework/protobuf/nano/MessageNano;

    if-eqz v1, :cond_a

    check-cast p0, [Lcom/android/framework/protobuf/nano/MessageNano;

    array-length v1, p0

    new-array v1, v1, [Lcom/android/framework/protobuf/nano/MessageNano;

    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_a

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/android/framework/protobuf/nano/MessageNano;->clone()Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldData;->clone()Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object p0

    return-object p0
.end method

.method blacklist computeSerializedSize()I
    .locals 2

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/Extension;->computeSerializedSize(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/nano/UnknownFieldData;->computeSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/android/framework/protobuf/nano/FieldData;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/android/framework/protobuf/nano/FieldData;

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iget-object v2, p1, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, v0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, p0, [B

    if-eqz v0, :cond_4

    check-cast p0, [B

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_4
    instance-of v0, p0, [I

    if-eqz v0, :cond_5

    check-cast p0, [I

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    :cond_5
    instance-of v0, p0, [J

    if-eqz v0, :cond_6

    check-cast p0, [J

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    :cond_6
    instance-of v0, p0, [F

    if-eqz v0, :cond_7

    check-cast p0, [F

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    return p0

    :cond_7
    instance-of v0, p0, [D

    if-eqz v0, :cond_8

    check-cast p0, [D

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    return p0

    :cond_8
    instance-of v0, p0, [Z

    if-eqz v0, :cond_9

    check-cast p0, [Z

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    return p0

    :cond_9
    check-cast p0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v1, p1, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v1, :cond_b

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_b
    :try_start_0
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object p0

    invoke-direct {p1}, Lcom/android/framework/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method blacklist getUnknownField(I)Lcom/android/framework/protobuf/nano/UnknownFieldData;
    .locals 2

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    return-object p0

    :cond_1
    return-object v1
.end method

.method blacklist getUnknownFieldSize()I
    .locals 0

    iget-object p0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method blacklist getValue(Lcom/android/framework/protobuf/nano/Extension;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "*TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Tried to getExtension with a differernt Extension."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput-object p1, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/Extension;->getValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    :goto_0
    iget-object p0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x20f

    add-int/2addr v0, p0

    return v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method blacklist setValue(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "*TT;>;TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iput-object p2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    return-void
.end method

.method blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/nano/Extension;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/nano/UnknownFieldData;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_0

    :cond_1
    return-void
.end method
