.class public final Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enableBindPackageIsolatedProcess()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist intentSaveToXmlPackage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
