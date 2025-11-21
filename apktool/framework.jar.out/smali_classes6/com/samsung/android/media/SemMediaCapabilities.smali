.class public Lcom/samsung/android/media/SemMediaCapabilities;
.super Ljava/lang/Object;
.source "SemMediaCapabilities.java"


# static fields
.field public static final blacklist FEATURE_HARDWARE_C2:Ljava/lang/String; = "feature.device.hw.c2"

.field public static final blacklist FEATURE_RECORDER_BitSavingMode:Ljava/lang/String; = "feature.recorder.bitsaving.mode"

.field public static final blacklist FEATURE_RECORDER_HierBFrame:Ljava/lang/String; = "feature.recorder.hierarchical.bframe"

.field public static final blacklist FEATURE_RECORDER_OneBFrame:Ljava/lang/String; = "feature.recorder.one.bframe"

.field public static final blacklist KEY_QUERY_MAX_BITRATE:Ljava/lang/String; = "max.bitrate"

.field public static final blacklist KEY_QUERY_MAX_FPS:Ljava/lang/String; = "max.fps"

.field public static final blacklist KEY_QUERY_MAX_HEIGHT:Ljava/lang/String; = "max.height"

.field public static final blacklist KEY_QUERY_MAX_WIDTH:Ljava/lang/String; = "max.width"

.field public static final blacklist QUERY_RECORDER_HierBFrame:Ljava/lang/String; = "query.recorder.hierarchical.bframe"

.field public static final blacklist QUERY_RECORDER_OneBFrame:Ljava/lang/String; = "query.recorder.adaptive.bframe"

.field private static final blacklist TAG:Ljava/lang/String; = "SemMediaCapabilities"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string/jumbo v0, "secrecorder_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/media/SemMediaCapabilities;->nativeInit()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isFeatureSupported(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "feature: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMediaCapabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/android/media/SemMediaCapabilities;->nativeIsFeatureSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isFeatureSupportedForMime(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMediaCapabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/samsung/android/media/SemMediaCapabilities;->nativeIsFeatureSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static native blacklist nativeInit()V
.end method

.method private static native blacklist nativeIsFeatureSupported(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native blacklist nativeQuery(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;
.end method

.method public static blacklist query(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "query: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMediaCapabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/android/media/SemMediaCapabilities;->nativeQuery(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist query(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMediaCapabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/samsung/android/media/SemMediaCapabilities;->nativeQuery(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method
