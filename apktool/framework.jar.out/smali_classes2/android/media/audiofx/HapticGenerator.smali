.class public Landroid/media/audiofx/HapticGenerator;
.super Landroid/media/audiofx/AudioEffect;
.source "HapticGenerator.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "HapticGenerator"


# instance fields
.field private blacklist mVolumeControlEffect:Landroid/media/audiofx/AudioEffect;


# direct methods
.method private constructor blacklist <init>(I)V
    .locals 4

    sget-object v0, Landroid/media/audiofx/HapticGenerator;->EFFECT_TYPE_HAPTIC_GENERATOR:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/HapticGenerator;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    new-instance v0, Landroid/media/audiofx/AudioEffect;

    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const-string v3, "119341a0-8469-11df-81f9-0002a5d5c51b"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    iput-object v0, p0, Landroid/media/audiofx/HapticGenerator;->mVolumeControlEffect:Landroid/media/audiofx/AudioEffect;

    return-void
.end method

.method public static whitelist create(I)Landroid/media/audiofx/HapticGenerator;
    .locals 1

    new-instance v0, Landroid/media/audiofx/HapticGenerator;

    invoke-direct {v0, p0}, Landroid/media/audiofx/HapticGenerator;-><init>(I)V

    return-object v0
.end method

.method public static whitelist isAvailable()Z
    .locals 1

    invoke-static {}, Landroid/media/AudioManager;->isHapticPlaybackSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_HAPTIC_GENERATOR:Ljava/util/UUID;

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->isEffectTypeAvailable(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/audiofx/HapticGenerator;->release()V

    return-void
.end method

.method public whitelist release()V
    .locals 1

    iget-object v0, p0, Landroid/media/audiofx/HapticGenerator;->mVolumeControlEffect:Landroid/media/audiofx/AudioEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    :cond_0
    invoke-super {p0}, Landroid/media/audiofx/AudioEffect;->release()V

    return-void
.end method

.method public whitelist setEnabled(Z)I
    .locals 1

    invoke-super {p0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/media/audiofx/HapticGenerator;->mVolumeControlEffect:Landroid/media/audiofx/AudioEffect;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "HapticGenerator"

    const-string p1, "Failed to enable volume control effect for HapticGenerator"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method
