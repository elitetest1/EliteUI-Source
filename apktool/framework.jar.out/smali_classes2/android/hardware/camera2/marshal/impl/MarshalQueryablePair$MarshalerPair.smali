.class Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryablePair.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Landroid/util/Pair<",
        "TT1;TT2;>;>;"
    }
.end annotation


# instance fields
.field private final blacklist mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-",
            "Landroid/util/Pair<",
            "TT1;TT2;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/util/Pair<",
            "TT1;TT2;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT1;>;"
        }
    .end annotation
.end field

.field private final blacklist mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Landroid/util/Pair<",
            "TT1;TT2;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mClass:Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/ParameterizedType;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-static {p3}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    move-result-object p3

    iget v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNativeType:I

    invoke-static {p3, v1}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object p3

    iput-object p3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 p3, 0x1

    aget-object p2, p2, p3

    invoke-static {p2}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    move-result-object p2

    iget v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNativeType:I

    invoke-static {p2, v1}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object p2

    iput-object p2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    const/4 p2, 0x2

    :try_start_1
    new-array p2, p2, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, p2, v0

    const-class v0, Ljava/lang/Object;

    aput-object v0, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mConstructor:Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Raw use of Pair is not supported"

    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public blacklist calculateMarshalSize(Landroid/util/Pair;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "TT1;TT2;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->getNativeSize()I

    move-result v0

    sget v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->NATIVE_SIZE_DYNAMIC:I

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public bridge synthetic blacklist calculateMarshalSize(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->calculateMarshalSize(Landroid/util/Pair;)I

    move-result p0

    return p0
.end method

.method public blacklist getNativeSize()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v0}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    move-result v0

    iget-object p0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {p0}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    move-result p0

    sget v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->NATIVE_SIZE_DYNAMIC:I

    if-eq v0, v1, :cond_0

    sget v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->NATIVE_SIZE_DYNAMIC:I

    if-eq p0, v1, :cond_0

    add-int/2addr v0, p0

    return v0

    :cond_0
    sget p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->NATIVE_SIZE_DYNAMIC:I

    return p0
.end method

.method public blacklist marshal(Landroid/util/Pair;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "TT1;TT2;>;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    iget-object p0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Pair#second must not be null"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Pair#first must not be null"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic blacklist marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->marshal(Landroid/util/Pair;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public blacklist unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Landroid/util/Pair<",
            "TT1;TT2;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mConstructor:Ljava/lang/reflect/Constructor;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic blacklist unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
