.class public Landroid/media/audiofx/SourceDefaultEffect;
.super Landroid/media/audiofx/DefaultEffect;
.source "SourceDefaultEffect.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SourceDefaultEffect-JAVA"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "audioeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/util/UUID;II)V
    .locals 8

    invoke-direct {p0}, Landroid/media/audiofx/DefaultEffect;-><init>()V

    const/4 v0, 0x1

    new-array v7, v0, [I

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Landroid/media/audiofx/SourceDefaultEffect;->native_setup(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[I)I

    move-result p0

    if-eqz p0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error code "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " when initializing SourceDefaultEffect"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SourceDefaultEffect-JAVA"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x5

    if-eq p0, p2, :cond_1

    const/4 p2, -0x4

    if-eq p0, p2, :cond_0

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Cannot initialize effect engine for type: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Error: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source, type uuid, or implementation uuid not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Effect library not loaded"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p0, 0x0

    aget p0, v7, p0

    iput p0, v1, Landroid/media/audiofx/SourceDefaultEffect;->mId:I

    return-void
.end method

.method private final native blacklist native_release(I)V
.end method

.method private final native blacklist native_setup(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[I)I
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/audiofx/SourceDefaultEffect;->release()V

    return-void
.end method

.method public blacklist release()V
    .locals 1

    iget v0, p0, Landroid/media/audiofx/SourceDefaultEffect;->mId:I

    invoke-direct {p0, v0}, Landroid/media/audiofx/SourceDefaultEffect;->native_release(I)V

    return-void
.end method
