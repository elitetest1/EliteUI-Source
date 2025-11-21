.class public Lcom/samsung/android/speech/MMUIRecognizer;
.super Ljava/lang/Object;
.source "MMUIRecognizer.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MMUIRecognizer"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist init()I
    .locals 4

    const-string v0, "WARNING: Could not load libsasr-jni.so"

    :try_start_0
    sget-object v1, Lcom/samsung/android/speech/MMUIRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Trying to load libsasr-jni.so"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "sasr-jni"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v2, "Loading libsasr-jni.so done"

    const/4 v3, 0x0

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    sget-object v1, Lcom/samsung/android/speech/MMUIRecognizer;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    sget-object v1, Lcom/samsung/android/speech/MMUIRecognizer;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public native blacklist RECThread([S)I
.end method

.method public native blacklist ResetFx()I
.end method

.method public native blacklist SASRClose()I
.end method

.method public native blacklist SASRDoRecognition([F[Ljava/lang/String;Ljava/lang/String;[S[Ljava/lang/String;)I
.end method

.method public native blacklist SASRInit(Ljava/lang/String;)I
.end method

.method public native blacklist SASRLoadModel(Ljava/lang/String;)I
.end method

.method public native blacklist SASRReset()I
.end method

.method public native blacklist SaveChnUpdate(Ljava/lang/String;)I
.end method

.method public native blacklist SetSRLanguage(I)I
.end method
