.class public final Lcom/android/internal/pm/RoSystemFeatures;
.super Ljava/lang/Object;
.source "RoSystemFeatures.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getReadOnlySystemEnabledFeatures()Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    return-object v0
.end method

.method public static blacklist hasFeatureAutomotive(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.hardware.type.automotive"

    invoke-static {p0, v0}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureFallback(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist hasFeatureEmbedded(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.hardware.type.embedded"

    invoke-static {p0, v0}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureFallback(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static blacklist hasFeatureFallback(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist hasFeatureLeanback(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.software.leanback"

    invoke-static {p0, v0}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureFallback(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist hasFeaturePc(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.hardware.type.pc"

    invoke-static {p0, v0}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureFallback(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist hasFeatureTelevision(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.hardware.type.television"

    invoke-static {p0, v0}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureFallback(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist hasFeatureWatch(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.hardware.type.watch"

    invoke-static {p0, v0}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureFallback(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist maybeHasFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
