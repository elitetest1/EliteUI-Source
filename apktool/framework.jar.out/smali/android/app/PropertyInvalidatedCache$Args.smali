.class public final Landroid/app/PropertyInvalidatedCache$Args;
.super Ljava/lang/Record;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Args"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "mModule",
        "mApi",
        "mMaxEntries",
        "mIsolateUids",
        "mTestMode",
        "mCacheNulls"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        Ljava/lang/String;,
        Ljava/lang/String;,
        I,
        Z,
        Z,
        Z
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_CACHE_NULLS:Z = false

.field public static final blacklist DEFAULT_ISOLATE_UIDS:Z = true

.field public static final blacklist DEFAULT_MAX_ENTRIES:I = 0x20


# instance fields
.field private final blacklist mApi:Ljava/lang/String;

.field private final blacklist mCacheNulls:Z

.field private final blacklist mIsolateUids:Z

.field private final blacklist mMaxEntries:I

.field private final blacklist mModule:Ljava/lang/String;

.field private final blacklist mTestMode:Z


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/app/PropertyInvalidatedCache$Args;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/PropertyInvalidatedCache$Args;

    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    iget-boolean v1, p1, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    iget-boolean v1, p1, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    iget-boolean v1, p1, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    iget v1, p1, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    iget v2, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApi(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCacheNulls(Landroid/app/PropertyInvalidatedCache$Args;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsolateUids(Landroid/app/PropertyInvalidatedCache$Args;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxEntries(Landroid/app/PropertyInvalidatedCache$Args;)I
    .locals 0

    iget p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmModule(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTestMode(Landroid/app/PropertyInvalidatedCache$Args;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    return p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000,
            0x8000,
            0x8000,
            0x8000,
            0x8000,
            0x8000
        }
        names = {
            "mModule",
            "mApi",
            "mMaxEntries",
            "mIsolateUids",
            "mTestMode",
            "mCacheNulls"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smthrowIfInvalidModule(Ljava/lang/String;)V

    const-string/jumbo v0, "max cache size must be positive"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    iput p3, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    iput-boolean p4, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    iput-boolean p5, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    iput-boolean p6, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    return-void
.end method


# virtual methods
.method public blacklist api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;
    .locals 7

    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    iget-boolean v4, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    iget-boolean v5, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    iget-boolean v6, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-object v0
.end method

.method public blacklist cacheNulls(Z)Landroid/app/PropertyInvalidatedCache$Args;
    .locals 7

    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    iget-boolean v4, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    iget-boolean v5, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    move v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-object v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$Args;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final whitelist test-api hashCode()I
    .locals 6

    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    iget-boolean v2, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m(ZZZILjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isolateUids(Z)Landroid/app/PropertyInvalidatedCache$Args;
    .locals 7

    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    iget-boolean v5, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    iget-boolean v6, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    move v4, p1

    invoke-direct/range {v0 .. v6}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-object v0
.end method

.method public blacklist mApi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist mCacheNulls()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    return p0
.end method

.method public blacklist mIsolateUids()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    return p0
.end method

.method public blacklist mMaxEntries()I
    .locals 0

    iget p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    return p0
.end method

.method public blacklist mModule()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist mTestMode()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    return p0
.end method

.method public blacklist maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;
    .locals 7

    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    iget-boolean v5, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    iget-boolean v6, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    move v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-object v0
.end method

.method public blacklist testMode(Z)Landroid/app/PropertyInvalidatedCache$Args;
    .locals 7

    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    iget-boolean v4, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    iget-boolean v6, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    move v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-object v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$Args;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Landroid/app/PropertyInvalidatedCache$Args;

    const-string/jumbo v1, "mModule;mApi;mMaxEntries;mIsolateUids;mTestMode;mCacheNulls"

    invoke-static {p0, v0, v1}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
