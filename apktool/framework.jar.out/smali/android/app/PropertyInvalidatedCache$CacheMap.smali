.class Landroid/app/PropertyInvalidatedCache$CacheMap;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Query:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedHashMap<",
            "TQuery;TResult;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mIsolated:Z

.field private final blacklist mSelfUid:I

.field private final blacklist mShadowCache:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "TQuery;>;"
        }
    .end annotation
.end field

.field private blacklist mShadowHits:I

.field private blacklist mShadowMisses:I

.field private blacklist mShadowSelfHits:I

.field private final blacklist mStatistics:Z

.field private final blacklist mTestMode:Z

.field private final blacklist mUidSeen:Landroid/util/SparseBooleanArray;

.field final synthetic blacklist this$0:Landroid/app/PropertyInvalidatedCache;


# direct methods
.method constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache;ZZ)V
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

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->this$0:Landroid/app/PropertyInvalidatedCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-static {}, Landroid/app/Flags;->picIsolateCacheByUid()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mIsolated:Z

    invoke-static {}, Landroid/app/Flags;->picIsolatedCacheStatistics()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz v0, :cond_2

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mUidSeen:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mUidSeen:Landroid/util/SparseBooleanArray;

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    :goto_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    iput p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mSelfUid:I

    iput-boolean p3, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mTestMode:Z

    return-void
.end method

.method private blacklist callerUid()I
    .locals 1

    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mIsolated:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mTestMode:Z

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method private blacklist createMap()Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "TQuery;TResult;>;"
        }
    .end annotation

    new-instance v0, Landroid/app/PropertyInvalidatedCache$CacheMap$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3, v1, v2}, Landroid/app/PropertyInvalidatedCache$CacheMap$1;-><init>(Landroid/app/PropertyInvalidatedCache$CacheMap;IFZ)V

    return-object v0
.end method


# virtual methods
.method blacklist clear()V
    .locals 1

    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    :cond_0
    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method blacklist containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)Z"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->callerUid()I

    move-result v0

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist dump(Ljava/io/PrintWriter;)V
    .locals 3

    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowHits:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowMisses:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "    ShadowHits: %d, ShadowMisses: %d, ShadowSize: %d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mUidSeen:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowSelfHits:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "    ShadowUids: %d, SelfUid: %d"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method blacklist dumpDetailed(Ljava/io/PrintWriter;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "    Contents:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "      Uid: %d\n"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "      Key: %s\n      Value: %s\n"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method blacklist get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->callerUid()I

    move-result v0

    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowHits:I

    iget v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mSelfUid:I

    if-ne v0, v1, :cond_1

    iget v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowSelfHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowSelfHits:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowMisses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowMisses:I

    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashMap;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method blacklist put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;TResult;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->callerUid()I

    move-result v0

    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mUidSeen:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->createMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method blacklist remove(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->callerUid()I

    move-result v0

    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mStatistics:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mShadowCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashMap;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method blacklist size()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
