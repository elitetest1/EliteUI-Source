.class public final Landroid/content/pm/SystemFeaturesCache;
.super Ljava/lang/Object;
.source "SystemFeaturesCache.java"


# static fields
.field private static final blacklist UNAVAILABLE_FEATURE_VERSION:I = -0x80000000

.field private static volatile blacklist sInstance:Landroid/content/pm/SystemFeaturesCache;


# instance fields
.field private final blacklist mSdkFeatureVersions:[I


# direct methods
.method public constructor blacklist <init>(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/SystemFeaturesCache;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xba

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/FeatureInfo;

    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/pm/PackageManager;->maybeGetSdkFeatureIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    iget v0, v0, Landroid/content/pm/FeatureInfo;->version:I

    aput v0, v2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor blacklist <init>([I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/16 v1, 0xba

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Unexpected cached SDK feature count: %d (expected %d)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist clearInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/SystemFeaturesCache;->sInstance:Landroid/content/pm/SystemFeaturesCache;

    return-void
.end method

.method public static blacklist getInstance()Landroid/content/pm/SystemFeaturesCache;
    .locals 2

    sget-object v0, Landroid/content/pm/SystemFeaturesCache;->sInstance:Landroid/content/pm/SystemFeaturesCache;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SystemFeaturesCache not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist hasInstance()Z
    .locals 1

    sget-object v0, Landroid/content/pm/SystemFeaturesCache;->sInstance:Landroid/content/pm/SystemFeaturesCache;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist setInstance(Landroid/content/pm/SystemFeaturesCache;)V
    .locals 1

    sget-object v0, Landroid/content/pm/SystemFeaturesCache;->sInstance:Landroid/content/pm/SystemFeaturesCache;

    if-nez v0, :cond_0

    sput-object p0, Landroid/content/pm/SystemFeaturesCache;->sInstance:Landroid/content/pm/SystemFeaturesCache;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SystemFeaturesCache instance already initialized."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getSdkFeatureVersions()[I
    .locals 0

    iget-object p0, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    return-object p0
.end method

.method public blacklist maybeHasFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 3

    invoke-static {p1}, Landroid/content/pm/PackageManager;->maybeGetSdkFeatureIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_1

    iget-object v2, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    aget v2, v2, p1

    if-ne v2, v1, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    aget p0, p0, p1

    if-lt p0, p2, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
