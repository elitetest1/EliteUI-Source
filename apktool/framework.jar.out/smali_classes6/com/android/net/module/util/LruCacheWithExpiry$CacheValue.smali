.class Lcom/android/net/module/util/LruCacheWithExpiry$CacheValue;
.super Ljava/lang/Object;
.source "LruCacheWithExpiry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/LruCacheWithExpiry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final blacklist entry:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final blacklist timestamp:J


# direct methods
.method constructor blacklist <init>(JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/net/module/util/LruCacheWithExpiry$CacheValue;->timestamp:J

    iput-object p3, p0, Lcom/android/net/module/util/LruCacheWithExpiry$CacheValue;->entry:Ljava/lang/Object;

    return-void
.end method
