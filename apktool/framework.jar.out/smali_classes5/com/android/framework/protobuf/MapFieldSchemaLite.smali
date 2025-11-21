.class Lcom/android/framework/protobuf/MapFieldSchemaLite;
.super Ljava/lang/Object;
.source "MapFieldSchemaLite.java"

# interfaces
.implements Lcom/android/framework/protobuf/MapFieldSchema;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getSerializedSizeLite(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    check-cast p1, Lcom/android/framework/protobuf/MapFieldLite;

    check-cast p2, Lcom/android/framework/protobuf/MapEntryLite;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p0, v2, v0}, Lcom/android/framework/protobuf/MapEntryLite;->computeMessageSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static blacklist mergeFromLite(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/framework/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/framework/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p0, Lcom/android/framework/protobuf/MapFieldLite;

    check-cast p1, Lcom/android/framework/protobuf/MapFieldLite;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/MapFieldLite;->mutableCopy()Lcom/android/framework/protobuf/MapFieldLite;

    move-result-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/MapFieldLite;->mergeFrom(Lcom/android/framework/protobuf/MapFieldLite;)V

    :cond_1
    return-object p0
.end method


# virtual methods
.method public blacklist forMapData(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    check-cast p1, Lcom/android/framework/protobuf/MapFieldLite;

    return-object p1
.end method

.method public blacklist forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "**>;"
        }
    .end annotation

    check-cast p1, Lcom/android/framework/protobuf/MapEntryLite;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/MapEntryLite;->getMetadata()Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object p0

    return-object p0
.end method

.method public blacklist forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    check-cast p1, Lcom/android/framework/protobuf/MapFieldLite;

    return-object p1
.end method

.method public blacklist getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/MapFieldSchemaLite;->getSerializedSizeLite(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isImmutable(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/framework/protobuf/MapFieldLite;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/MapFieldLite;->isMutable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/MapFieldSchemaLite;->mergeFromLite(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/framework/protobuf/MapFieldLite;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newMapField(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/android/framework/protobuf/MapFieldLite;->emptyMapField()Lcom/android/framework/protobuf/MapFieldLite;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/MapFieldLite;->mutableCopy()Lcom/android/framework/protobuf/MapFieldLite;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    move-object p0, p1

    check-cast p0, Lcom/android/framework/protobuf/MapFieldLite;

    invoke-virtual {p0}, Lcom/android/framework/protobuf/MapFieldLite;->makeImmutable()V

    return-object p1
.end method
