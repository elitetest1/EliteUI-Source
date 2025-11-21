.class final Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;
.super Ljava/lang/Object;
.source "LsLogSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lock/LsLogSummary$Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheKey"
.end annotation


# static fields
.field static final blacklist TYPE_FETCHED:I = 0x2

.field static final blacklist TYPE_FILE:I = 0x1

.field static final blacklist TYPE_KEY_VALUE:I


# instance fields
.field blacklist key:Ljava/lang/String;

.field blacklist type:I

.field blacklist userId:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/lock/LsLogSummary-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;

    iget v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->userId:I

    iget v2, p1, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->userId:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->type:I

    iget v2, p1, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->type:I

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->key:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->key:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->userId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->type:I

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist set(ILjava/lang/String;I)Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;
    .locals 0

    iput p1, p0, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->type:I

    iput-object p2, p0, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->key:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/lock/LsLogSummary$Cache$CacheKey;->userId:I

    return-object p0
.end method
