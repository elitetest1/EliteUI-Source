.class public final Lcom/android/framework/protobuf/UnknownFieldSetLite;
.super Ljava/lang/Object;
.source "UnknownFieldSetLite.java"


# static fields
.field private static final blacklist DEFAULT_INSTANCE:Lcom/android/framework/protobuf/UnknownFieldSetLite;

.field private static final blacklist MIN_CAPACITY:I = 0x8


# instance fields
.field private blacklist count:I

.field private blacklist isMutable:Z

.field private blacklist memoizedSerializedSize:I

.field private blacklist objects:[Ljava/lang/Object;

.field private blacklist tags:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor blacklist <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    iput p1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iput-object p2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iput-object p3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->isMutable:Z

    return-void
.end method

.method private blacklist ensureCapacity(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    array-length v1, v0

    if-le p1, v1, :cond_2

    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v1, v2

    if-ge v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/16 v1, 0x8

    if-ge p1, v1, :cond_1

    move p1, v1

    :cond_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iget-object v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static blacklist getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    return-object v0
.end method

.method private static blacklist hashCode([II)I
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    aget v2, p0, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static blacklist hashCode([Ljava/lang/Object;I)I
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private blacklist mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILcom/android/framework/protobuf/CodedInputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p0
.end method

.method static blacklist mutableCopyOf(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .locals 6

    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget v1, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iget v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget v4, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget p0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget p1, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method static blacklist newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .locals 1

    new-instance v0, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-direct {v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;-><init>()V

    return-object v0
.end method

.method private static blacklist objectsEquals([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist tagsEquals([I[II)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget v2, p0, v1

    aget v3, p1, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist writeField(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    invoke-interface {p2}, Lcom/android/framework/protobuf/Writer;->fieldOrder()Lcom/android/framework/protobuf/Writer$FieldOrder;

    move-result-object p0

    sget-object v1, Lcom/android/framework/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    if-ne p0, v1, :cond_2

    invoke-interface {p2, v0}, Lcom/android/framework/protobuf/Writer;->writeStartGroup(I)V

    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeTo(Lcom/android/framework/protobuf/Writer;)V

    invoke-interface {p2, v0}, Lcom/android/framework/protobuf/Writer;->writeEndGroup(I)V

    return-void

    :cond_2
    invoke-interface {p2, v0}, Lcom/android/framework/protobuf/Writer;->writeEndGroup(I)V

    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeTo(Lcom/android/framework/protobuf/Writer;)V

    invoke-interface {p2, v0}, Lcom/android/framework/protobuf/Writer;->writeStartGroup(I)V

    return-void

    :cond_3
    check-cast p1, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p2, v0, p1}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    return-void

    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    return-void

    :cond_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    return-void
.end method


# virtual methods
.method blacklist checkMutable()V
    .locals 0

    iget-boolean p0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->isMutable:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    iget v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget v3, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ne v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iget-object v4, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v3, v4, v2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tagsEquals([I[II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget p0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v2, p1, p0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objectsEquals([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public blacklist getSerializedSize()I
    .locals 6

    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v3

    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_2
    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v4

    iget-object v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v2

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iput v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    return v1
.end method

.method public blacklist getSerializedSizeAsMessageSet()I
    .locals 4

    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeRawMessageSetExtensionSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v2, v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->hashCode([II)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget p0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->hashCode([Ljava/lang/Object;I)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public blacklist makeImmutable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->isMutable:Z

    return-void
.end method

.method blacklist mergeFieldFrom(ILcom/android/framework/protobuf/CodedInputStream;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->checkMutable()V

    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    new-instance v1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-direct {v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;-><init>()V

    invoke-direct {v1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-static {v0, v4}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return v2

    :cond_3
    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return v2

    :cond_4
    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return v2

    :cond_5
    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return v2
.end method

.method blacklist mergeFrom(Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .locals 6

    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->checkMutable()V

    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget v1, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->ensureCapacity(I)V

    iget-object v1, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iget v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget v4, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget p1, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v1, v5, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    return-object p0
.end method

.method blacklist mergeLengthDelimitedField(ILcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->checkMutable()V

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Zero is not a valid field number."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist mergeVarintField(II)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .locals 2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->checkMutable()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Zero is not a valid field number."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final blacklist printWithIndent(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method blacklist storeField(ILjava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->checkMutable()V

    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    return-void
.end method

.method public blacklist writeAsMessageSetTo(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p1, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeRawMessageSetExtension(ILcom/android/framework/protobuf/ByteString;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method blacklist writeAsMessageSetTo(Lcom/android/framework/protobuf/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/framework/protobuf/Writer;->fieldOrder()Lcom/android/framework/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32(II)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Lcom/android/framework/protobuf/Writer;->fieldOrder()Lcom/android/framework/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeField(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeField(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
