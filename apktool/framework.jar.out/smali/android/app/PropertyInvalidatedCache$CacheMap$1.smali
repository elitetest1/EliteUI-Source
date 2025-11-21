.class Landroid/app/PropertyInvalidatedCache$CacheMap$1;
.super Ljava/util/LinkedHashMap;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/PropertyInvalidatedCache$CacheMap;->createMap()Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TQuery;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/app/PropertyInvalidatedCache$CacheMap;


# direct methods
.method constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$CacheMap;IFZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$CacheMap$1;->this$1:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected whitelist test-api removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap$1;->size()I

    move-result p1

    int-to-long v0, p1

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap$1;->this$1:Landroid/app/PropertyInvalidatedCache$CacheMap;

    iget-object v2, v2, Landroid/app/PropertyInvalidatedCache$CacheMap;->this$0:Landroid/app/PropertyInvalidatedCache;

    invoke-static {v2}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$fgetmHighWaterMark(Landroid/app/PropertyInvalidatedCache;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$CacheMap$1;->this$1:Landroid/app/PropertyInvalidatedCache$CacheMap;

    iget-object v2, v2, Landroid/app/PropertyInvalidatedCache$CacheMap;->this$0:Landroid/app/PropertyInvalidatedCache;

    invoke-static {v2, v0, v1}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$fputmHighWaterMark(Landroid/app/PropertyInvalidatedCache;J)V

    :cond_0
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap$1;->this$1:Landroid/app/PropertyInvalidatedCache$CacheMap;

    iget-object v0, v0, Landroid/app/PropertyInvalidatedCache$CacheMap;->this$0:Landroid/app/PropertyInvalidatedCache;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$fgetmMaxEntries(Landroid/app/PropertyInvalidatedCache;)I

    move-result v0

    if-le p1, v0, :cond_1

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap$1;->this$1:Landroid/app/PropertyInvalidatedCache$CacheMap;

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$CacheMap;->this$0:Landroid/app/PropertyInvalidatedCache;

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$fgetmMissOverflow(Landroid/app/PropertyInvalidatedCache;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$fputmMissOverflow(Landroid/app/PropertyInvalidatedCache;J)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
