.class public Landroid/app/PropertyInvalidatedCache;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PropertyInvalidatedCache$NonceWatcher;,
        Landroid/app/PropertyInvalidatedCache$NonceHandler;,
        Landroid/app/PropertyInvalidatedCache$NonceSharedMem;,
        Landroid/app/PropertyInvalidatedCache$NonceLocal;,
        Landroid/app/PropertyInvalidatedCache$NonceSysprop;,
        Landroid/app/PropertyInvalidatedCache$Args;,
        Landroid/app/PropertyInvalidatedCache$CacheMap;,
        Landroid/app/PropertyInvalidatedCache$DefaultComputer;,
        Landroid/app/PropertyInvalidatedCache$QueryHandler;,
        Landroid/app/PropertyInvalidatedCache$NonceStore;,
        Landroid/app/PropertyInvalidatedCache$AutoCorker;,
        Landroid/app/PropertyInvalidatedCache$NoPreloadHolder;
    }
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


# static fields
.field static final blacklist BRIEF:Ljava/lang/String; = "-brief"

.field private static final blacklist CACHE_KEY_PREFIX:Ljava/lang/String; = "cache_key"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MAX_RESERVED_NONCE:I = 0x3

.field public static final blacklist MODULE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final blacklist MODULE_SYSTEM:Ljava/lang/String; = "system_server"

.field public static final blacklist MODULE_TELEPHONY:Ljava/lang/String; = "telephony"

.field public static final blacklist MODULE_TEST:Ljava/lang/String; = "test"

.field static final blacklist NAME_CONTAINS:Ljava/lang/String; = "-name-has="

.field static final blacklist NAME_LIKE:Ljava/lang/String; = "-name-like="

.field private static final blacklist NONCE_BYPASS:I = 0x3

.field private static final blacklist NONCE_CORKED:I = 0x2

.field private static final blacklist NONCE_DISABLED:I = 0x1

.field static final blacklist NONCE_UNSET:I = 0x0

.field private static final blacklist PREFIX_SYSTEM:Ljava/lang/String; = "cache_key.system_server."

.field private static final blacklist PREFIX_TEST:Ljava/lang/String; = "cache_key.test."

.field static final blacklist PROPERTY_CONTAINS:Ljava/lang/String; = "-property-has="

.field static final blacklist PROPERTY_LIKE:Ljava/lang/String; = "-property-like="

.field private static final blacklist TAG:Ljava/lang/String; = "PropertyInvalidatedCache"

.field private static final blacklist VERIFY:Z = false

.field private static final blacklist sCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/PropertyInvalidatedCache;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sCorkLock:Ljava/lang/Object;

.field private static final blacklist sDisabledKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sEnabled:Z

.field private static final blacklist sGlobalLock:Ljava/lang/Object;

.field private static final blacklist sHandlers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/app/PropertyInvalidatedCache$NonceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sNonceName:[Ljava/lang/String;

.field private static final blacklist sSharedMemoryAvailable:Z

.field private static blacklist sTestMode:Z

.field private static final blacklist sValidKeyPrefix:[Ljava/lang/String;

.field private static final blacklist sValidModule:[Ljava/lang/String;


# instance fields
.field private final blacklist mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "TQuery;TResult;>.CacheMap<TQuery;TResult;>;"
        }
    .end annotation
.end field

.field private final blacklist mCacheName:Ljava/lang/String;

.field private final blacklist mCacheNullResults:Z

.field private blacklist mClears:J

.field private blacklist mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;"
        }
    .end annotation
.end field

.field private blacklist mDisabled:Z

.field private blacklist mHighWaterMark:J

.field private blacklist mHits:J

.field private blacklist mLastSeenNonce:J

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMaxEntries:I

.field private blacklist mMissOverflow:J

.field private blacklist mMisses:J

.field private final blacklist mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

.field private blacklist mNulls:J

.field private final blacklist mPropertyName:Ljava/lang/String;

.field private blacklist mSkips:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHighWaterMark(Landroid/app/PropertyInvalidatedCache;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxEntries(Landroid/app/PropertyInvalidatedCache;)I
    .locals 0

    iget p0, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMissOverflow(Landroid/app/PropertyInvalidatedCache;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHighWaterMark(Landroid/app/PropertyInvalidatedCache;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMissOverflow(Landroid/app/PropertyInvalidatedCache;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsEnabled()Z
    .locals 1

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsGlobalLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsTestMode()Z
    .locals 1

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;
    .locals 0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisReservedNonce(J)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetByteBlock(JI[B)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;->nativeGetByteBlock(JI[B)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetByteBlockHash(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->nativeGetByteBlockHash(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetMaxByte(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->nativeGetMaxByte(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetMaxNonce(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->nativeGetMaxNonce(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetNonce(JI)J
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/app/PropertyInvalidatedCache;->nativeGetNonce(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetByteBlock(JI[B)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;->nativeSetByteBlock(JI[B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetNonce(JIJ)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/PropertyInvalidatedCache;->nativeSetNonce(JIJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smthrowIfInvalidModule(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->throwIfInvalidModule(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    const-string/jumbo v0, "telephony"

    const-string/jumbo v1, "test"

    const-string/jumbo v2, "system_server"

    const-string v3, "bluetooth"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sValidModule:[Ljava/lang/String;

    const-string v0, "cache_key.telephony."

    const-string v1, "cache_key.test."

    const-string v2, "cache_key.system_server."

    const-string v3, "cache_key.bluetooth."

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sValidKeyPrefix:[Ljava/lang/String;

    const-string v0, "corked"

    const-string v1, "bypass"

    const-string/jumbo v2, "unset"

    const-string v3, "disabled"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sNonceName:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->isSharedMemoryAvailable()Z

    move-result v0

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sSharedMemoryAvailable:Z

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Landroid/app/PropertyInvalidatedCache;->argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Landroid/app/PropertyInvalidatedCache;->argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    invoke-direct {v0, p2}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p1

    invoke-direct {p0, p1, p4, p5}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PropertyInvalidatedCache$Args;",
            "Ljava/lang/String;",
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mNulls:J

    const/4 v2, 0x4

    new-array v2, v2, [J

    iput-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmModule(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmApi(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmCacheNulls(Landroid/app/PropertyInvalidatedCache$Args;)Z

    move-result p2

    iput-boolean p2, p0, Landroid/app/PropertyInvalidatedCache;->mCacheNullResults:Z

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object p2

    iput-object p2, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmMaxEntries(Landroid/app/PropertyInvalidatedCache$Args;)I

    move-result p2

    iput p2, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    new-instance p2, Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmIsolateUids(Landroid/app/PropertyInvalidatedCache$Args;)Z

    move-result v0

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmTestMode(Landroid/app/PropertyInvalidatedCache$Args;)Z

    move-result p1

    invoke-direct {p2, p0, v0, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;-><init>(Landroid/app/PropertyInvalidatedCache;ZZ)V

    iput-object p2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/app/PropertyInvalidatedCache$DefaultComputer;

    invoke-direct {p3, p0}, Landroid/app/PropertyInvalidatedCache$DefaultComputer;-><init>(Landroid/app/PropertyInvalidatedCache;)V

    :goto_0
    iput-object p3, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->registerCache()V

    return-void
.end method

.method private static blacklist anyDetailed([Ljava/lang/String;)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    const-string v4, "-name-has="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-name-like="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-property-has="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-property-like="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static blacklist apiFromProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmApi(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist argsFromProperty(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;
    .locals 2

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->throwIfInvalidCacheKey(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    invoke-direct {v0, v1}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p3, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p2, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist corkInvalidations(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->cork()V

    return-void
.end method

.method public static blacklist createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    aget-char v3, p1, v1

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v1, p1

    add-int/2addr v1, v2

    new-array v1, v1, [C

    move v2, v0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_5

    aget-char v3, p1, v0

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_4

    aget-char v3, p1, v0

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_3

    if-lez v0, :cond_2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x5f

    aput-char v4, v1, v2

    move v2, v3

    :cond_2
    add-int/lit8 v3, v2, 0x1

    aget-char v4, p1, v0

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    aput-char v4, v1, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v2, 0x1

    aget-char v4, p1, v0

    aput-char v4, v1, v2

    :goto_2
    move v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid api name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "cache_key."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createSystemCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "system_server"

    invoke-static {v0, p0}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist disableForCurrentProcess(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->disableLocal(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist disableForTestMode()V
    .locals 2

    const-string v0, "PropertyInvalidatedCache"

    const-string v1, "disabling all caches in the process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    return-void
.end method

.method private static final blacklist disableLocal(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PropertyInvalidatedCache;

    iget-object v3, v2, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/app/PropertyInvalidatedCache;->disableInstance()V

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static blacklist disableSystemWide(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->disable()V

    return-void
.end method

.method public static blacklist dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 2
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, p1}, Landroid/app/PropertyInvalidatedCache;->dumpCacheInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "PropertyInvalidatedCache"

    const-string p1, "Failed to dump PropertyInvalidatedCache instances"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist dumpCacheInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_0

    const-string p1, "  Caching is disabled in this process."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache;->anyDetailed([Ljava/lang/String;)Z

    move-result v0

    sget-boolean v1, Landroid/app/PropertyInvalidatedCache;->sSharedMemoryAvailable:Z

    if-eqz v1, :cond_1

    const-string v1, "  SharedMemory: enabled"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/PropertyInvalidatedCache$NonceStore;->getInstance()Landroid/app/PropertyInvalidatedCache$NonceStore;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, p0, v2, v0}, Landroid/app/PropertyInvalidatedCache$NonceStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v1, "  SharedMemory: disabled"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->getActiveCaches()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PropertyInvalidatedCache;

    invoke-direct {v3, p0, v0, p1}, Landroid/app/PropertyInvalidatedCache;->dumpContents(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private blacklist dumpContents(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V
    .locals 9
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    if-eqz p2, :cond_0

    invoke-direct {p0, p3}, Landroid/app/PropertyInvalidatedCache;->showDetailed([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p3, v2

    const-string v5, "-brief"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {p3}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getStats()Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    move-result-object p3

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz v3, :cond_2

    :try_start_0
    invoke-direct {p0, p3}, Landroid/app/PropertyInvalidatedCache;->isActive(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)Z

    move-result v2

    if-nez v2, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    const-string v2, "  Cache Name: %s"

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Property: %s"

    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Hits: %d, Misses: %d, Skips: %d, Clears: %d, Nulls: %d"

    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getSkipsLocked()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, p0, Landroid/app/PropertyInvalidatedCache;->mNulls:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Skip-%s: %d"

    sget-object v3, Landroid/app/PropertyInvalidatedCache;->sNonceName:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    array-length v3, v2

    if-ge v1, v3, :cond_3

    const-string v3, ", Skip-%s: %d"

    sget-object v4, Landroid/app/PropertyInvalidatedCache;->sNonceName:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-wide v5, v2, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "    Nonce: 0x%016x, Invalidates: %d, Corked: %d"

    iget-wide v2, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->-$$Nest$fgetinvalidated(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->-$$Nest$fgetcorkedInvalidates(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v2, v3, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "    Current Size: %d, Max Size: %d, HW Mark: %d, Overflows: %d"

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {p3, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->dump(Ljava/io/PrintWriter;)V

    const-string p3, "    Enabled: %s"

    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-eqz v1, :cond_4

    const-string v1, "false"

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "true"

    :goto_2
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->dumpDetailed(Ljava/io/PrintWriter;)V

    :cond_5
    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static blacklist getActiveCaches()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/PropertyInvalidatedCache;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getCurrentNonce()J
    .locals 2

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getDisabledState()Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->isDisabled()Z

    move-result p0

    return p0
.end method

.method private static blacklist getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;
    .locals 4

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PropertyInvalidatedCache$NonceHandler;

    if-nez v1, :cond_3

    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->throwIfInvalidCacheKey(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PropertyInvalidatedCache$NonceHandler;

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->sharedMemoryOkay(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;

    const-string v3, "cache_key.system_server."

    invoke-direct {v1, p0, v3}, Landroid/app/PropertyInvalidatedCache$NonceSharedMem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "cache_key.test."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/app/PropertyInvalidatedCache$NonceLocal;

    invoke-direct {v1, p0}, Landroid/app/PropertyInvalidatedCache$NonceLocal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/app/PropertyInvalidatedCache$NonceSysprop;

    invoke-direct {v1, p0}, Landroid/app/PropertyInvalidatedCache$NonceSysprop;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    return-object v1
.end method

.method public static blacklist getNonceWatcher(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceWatcher;
    .locals 2

    new-instance v0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/PropertyInvalidatedCache$NonceWatcher;-><init>(Landroid/app/PropertyInvalidatedCache$NonceHandler;Landroid/app/PropertyInvalidatedCache-IA;)V

    return-object v0
.end method

.method private blacklist getSkipsLocked()J
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    array-length v3, v2

    if-ge v0, v3, :cond_0

    int-to-long v3, v1

    aget-wide v1, v2, v0

    add-long/2addr v3, v1

    long-to-int v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    int-to-long v0, v1

    return-wide v0
.end method

.method private static blacklist inSharedMemoryDenyList(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "cache_key.system_server.package_info"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist invalidateCache(Landroid/app/PropertyInvalidatedCache$Args;)V
    .locals 1

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmModule(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache$Args;->-$$Nest$fgetmApi(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist invalidateCache(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->invalidate()V

    return-void
.end method

.method public static blacklist invalidateCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist isActive(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)Z
    .locals 5

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    add-long/2addr v1, v3

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getSkipsLocked()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->-$$Nest$fgetinvalidated(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I

    move-result p0

    int-to-long v3, p0

    add-long/2addr v1, v3

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->-$$Nest$fgetcorkedInvalidates(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v1, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static blacklist isReservedNonce(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x3

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isSharedMemoryAvailable()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/os/Flags;->applicationSharedMemoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/Flags;->picUsesSharedMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isSharedMemoryAvailable$ravenwood()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private blacklist maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;TResult;)TResult;"
        }
    .end annotation

    return-object p2
.end method

.method private static native blacklist nativeGetByteBlock(JI[B)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetByteBlockHash(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetMaxByte(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetMaxNonce(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetNonce(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetByteBlock(JI[B)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeSetNonce(JIJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private blacklist registerCache()V
    .locals 3

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->disableInstance()V

    :cond_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static blacklist separatePermissionNotificationsEnabled()Z
    .locals 1

    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->isSharedMemoryAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/Flags;->picSeparatePermissionNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist setTestMode(Z)V
    .locals 3

    const-string v0, "cannot set test mode redundantly: mode="

    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->throwIfNotTest()V

    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    if-ne v2, p0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/Flags;->enforcePicTestmodeProtocol()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PropertyInvalidatedCache"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sput-boolean p0, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    invoke-static {}, Landroid/app/Flags;->picTestMode()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p0, :cond_3

    :cond_2
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->setTestModeLocked(Z)V

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static blacklist setTestModeLocked(Z)V
    .locals 3

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->asIterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v1, p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setTestMode(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static blacklist sharedMemoryOkay(Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sSharedMemoryAvailable:Z

    if-eqz v0, :cond_0

    const-string v0, "cache_key.system_server."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->inSharedMemoryDenyList(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist showDetailed([Ljava/lang/String;)Z
    .locals 7

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const-string v4, "-name-has="

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-name-like="

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-property-has="

    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-property-like="

    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v3, v4, v5, v1}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v6

    :cond_2
    return v1
.end method

.method private static blacklist throwIfInvalidCacheKey(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sValidKeyPrefix:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid cache name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist throwIfInvalidModule(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sValidModule:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid module: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist throwIfNotTest()V
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Instrumentation;->isInstrumenting()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/app/Flags;->enforcePicTestmodeProtocol()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Test-only API called not from a test."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist throwIfNotTest$ravenwood()V
    .locals 0

    return-void
.end method

.method public static blacklist uncorkInvalidations(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->uncork()V

    return-void
.end method


# virtual methods
.method public blacklist bypass(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)Z"
        }
    .end annotation

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache$QueryHandler;->shouldBypassCache(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final blacklist cacheName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    return-object p0
.end method

.method public final blacklist clear()V
    .locals 5

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->clear()V

    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist corkInvalidations()V
    .locals 0

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->cork()V

    return-void
.end method

.method public blacklist disableForCurrentProcess()V
    .locals 0

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->disableLocal(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist disableInstance()V
    .locals 2

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist disableLocal()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->disableForCurrentProcess()V

    return-void
.end method

.method public blacklist disableSystemWide()V
    .locals 0

    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->throwIfNotTest()V

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->disableSystemWide(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist dumpCacheEntries(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->dumpDetailed(Ljava/io/PrintWriter;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist forgetDisableLocal()V
    .locals 2

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getNonce()J
    .locals 3

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getNonceWatcher()Landroid/app/PropertyInvalidatedCache$NonceWatcher;
    .locals 2

    new-instance v0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/PropertyInvalidatedCache$NonceWatcher;-><init>(Landroid/app/PropertyInvalidatedCache$NonceHandler;Landroid/app/PropertyInvalidatedCache-IA;)V

    return-object v0
.end method

.method public blacklist invalidateCache()V
    .locals 0

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->invalidate()V

    return-void
.end method

.method public blacklist isDisabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-nez p0, :cond_1

    sget-boolean p0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final blacklist propertyName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist query(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->isDisabled()Z

    move-result v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getCurrentNonce()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    invoke-static {v3, v4}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->bypass(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x3

    :cond_1
    :goto_1
    invoke-static {v3, v4}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    long-to-int v3, v3

    aget-wide v6, v5, v3

    add-long/2addr v6, v1

    aput-wide v6, v5, v3

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->recompute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-wide v5, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v5, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    iget-boolean v7, p0, Landroid/app/PropertyInvalidatedCache;->mCacheNullResults:Z

    if-eqz v7, :cond_5

    iget-object v6, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v6, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_3

    :cond_4
    const/4 v6, 0x1

    :cond_5
    :goto_3
    if-eqz v6, :cond_7

    iget-wide v7, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    add-long/2addr v7, v1

    iput-wide v7, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->clear()V

    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    const/4 v5, 0x0

    :cond_7
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v6, :cond_c

    invoke-virtual {p0, v5, p1}, Landroid/app/PropertyInvalidatedCache;->refresh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v5, :cond_b

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getCurrentNonce()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_8

    move-wide v3, v5

    goto :goto_1

    :cond_8
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-wide v5, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v2, v3, v5

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    if-nez v0, :cond_a

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v2, p1}, Landroid/app/PropertyInvalidatedCache$CacheMap;->remove(Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v2, p1, v0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0, p1, v0}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_b
    invoke-direct {p0, p1, v5}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->recompute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    iget-wide v6, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v3, v6, v3

    if-nez v3, :cond_f

    if-nez v0, :cond_e

    iget-boolean v3, p0, Landroid/app/PropertyInvalidatedCache;->mCacheNullResults:Z

    if-eqz v3, :cond_d

    goto :goto_6

    :cond_d
    if-nez v0, :cond_f

    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mNulls:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mNulls:J

    goto :goto_7

    :cond_e
    :goto_6
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {v3, p1, v0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    :goto_7
    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-direct {p0, p1, v0}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0
.end method

.method protected blacklist queryToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache$QueryHandler;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist refresh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;TQuery;)TResult;"
        }
    .end annotation

    return-object p1
.end method

.method public blacklist resultEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;TResult;)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist size()I
    .locals 1

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Landroid/app/PropertyInvalidatedCache$CacheMap;

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$CacheMap;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist testPropertyName()V
    .locals 2

    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->throwIfNotTest()V

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/app/PropertyInvalidatedCache;->sTestMode:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->setTestMode(Z)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot test property name with test mode off"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist uncorkInvalidations()V
    .locals 0

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->uncork()V

    return-void
.end method
