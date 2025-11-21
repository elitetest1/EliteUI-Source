.class public Lcom/samsung/voicebargein/BargeInEngine;
.super Ljava/lang/Object;
.source "BargeInEngine.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BargeInEngine"


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

    const-string v0, "WARNING: Could not load libVoiceCommandEngine.so"

    :try_start_0
    sget-object v1, Lcom/samsung/voicebargein/BargeInEngine;->TAG:Ljava/lang/String;

    const-string v2, "Trying to load libVoiceCommandEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "VoiceCommandEngine"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v2, "Loading libVoiceCommandEngine.so"

    const/4 v3, 0x0

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    sget-object v1, Lcom/samsung/voicebargein/BargeInEngine;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    sget-object v1, Lcom/samsung/voicebargein/BargeInEngine;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public blacklist asyncPrint(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public native blacklist phrasespotClose(J)V
.end method

.method public native blacklist phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native blacklist phrasespotPipe(J[SJJ[F)Ljava/lang/String;
.end method
