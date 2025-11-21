.class public Landroid/media/HwAudioSource;
.super Landroid/media/PlayerBase;
.source "HwAudioSource.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/HwAudioSource$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAudioAttributes:Landroid/media/AudioAttributes;

.field private final blacklist mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

.field private blacklist mNativeHandle:I


# direct methods
.method private constructor blacklist <init>(Landroid/media/AudioDeviceInfo;Landroid/media/AudioAttributes;)V
    .locals 3

    const/16 v0, 0xe

    invoke-direct {p0, p2, v0}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/HwAudioSource;->mNativeHandle:I

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v1

    const-string v2, "Requires a source device"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroid/media/HwAudioSource;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    iput-object p2, p0, Landroid/media/HwAudioSource;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0}, Landroid/media/HwAudioSource;->baseRegisterPlayer(I)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioDeviceInfo;Landroid/media/AudioAttributes;Landroid/media/HwAudioSource-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/HwAudioSource;-><init>(Landroid/media/AudioDeviceInfo;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method private blacklist getDeviceId()I
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Landroid/media/AudioManager;->listAudioPatches(Ljava/util/ArrayList;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPatch;

    invoke-virtual {v3}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v4

    invoke-virtual {v3}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v3

    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    move v5, v2

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    aget-object v6, v4, v5

    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioPort;->id()I

    move-result v6

    iget-object v7, p0, Landroid/media/HwAudioSource;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v7

    if-ne v6, v7, :cond_1

    aget-object p0, v3, v5

    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioPort;->id()I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method


# virtual methods
.method public whitelist isPlaying()Z
    .locals 0

    iget p0, p0, Landroid/media/HwAudioSource;->mNativeHandle:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method blacklist playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .locals 0

    new-instance p0, Landroid/media/VolumeShaper$State;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p1}, Landroid/media/VolumeShaper$State;-><init>(FF)V

    return-object p0
.end method

.method blacklist playerPause()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->stop()V

    return-void
.end method

.method blacklist playerSetAuxEffectSendLevel(ZF)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method blacklist playerSetVolume(ZFF)V
    .locals 0

    return-void
.end method

.method blacklist playerStart()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->start()V

    return-void
.end method

.method blacklist playerStop()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->stop()V

    return-void
.end method

.method public whitelist start()V
    .locals 3

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "HwAudioSource is currently playing"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Landroid/media/HwAudioSource;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v0

    iget-object v2, p0, Landroid/media/HwAudioSource;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->startAudioSource(Landroid/media/AudioPortConfig;Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/HwAudioSource;->mNativeHandle:I

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->PLAYER_DEVICEIDS_INVALID:[I

    invoke-direct {p0}, Landroid/media/HwAudioSource;->getDeviceId()I

    move-result v2

    if-eqz v2, :cond_0

    new-array v0, v1, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/HwAudioSource;->baseStart([I)V

    :cond_1
    return-void
.end method

.method public whitelist stop()V
    .locals 1

    iget v0, p0, Landroid/media/HwAudioSource;->mNativeHandle:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->baseStop()V

    iget v0, p0, Landroid/media/HwAudioSource;->mNativeHandle:I

    invoke-static {v0}, Landroid/media/AudioSystem;->stopAudioSource(I)I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/HwAudioSource;->mNativeHandle:I

    :cond_0
    return-void
.end method
