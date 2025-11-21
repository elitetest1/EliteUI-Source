.class public Lcom/samsung/android/media/SemVirtualAudioDevice;
.super Ljava/lang/Object;
.source "SemVirtualAudioDevice.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemVirtualAudioDeviceManager"


# instance fields
.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private blacklist mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/media/SemVirtualAudioDevice;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/media/SemVirtualAudioDevice;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private blacklist resetAudioPolicy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/SemVirtualAudioDevice;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/media/SemVirtualAudioDevice;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->unregisterAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)V

    const-string v0, "SemVirtualAudioDeviceManager"

    const-string v1, "Unregister audio policy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemVirtualAudioDevice;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist connectVirtualAudioInputDevice(Landroid/media/AudioFormat;[I[I)Landroid/media/AudioTrack;
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->setTargetMixRole(I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    array-length v1, p2

    if-eqz v1, :cond_3

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v4}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-eqz p3, :cond_1

    array-length v1, p3

    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, p3, v2

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v4, v3}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance p3, Landroid/media/audiopolicy/AudioMix$Builder;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    invoke-virtual {p3, p1}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/media/SemVirtualAudioDevice;->resetAudioPolicy()V

    new-instance p2, Landroid/media/audiopolicy/AudioPolicy$Builder;

    iget-object p3, p0, Lcom/samsung/android/media/SemVirtualAudioDevice;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/media/SemVirtualAudioDevice;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    iget-object p3, p0, Lcom/samsung/android/media/SemVirtualAudioDevice;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p3, p2}, Landroid/media/AudioManager;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/media/SemVirtualAudioDevice;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {p2, p1}, Landroid/media/audiopolicy/AudioPolicy;->createAudioTrackSource(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid app uid array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized whitelist connectVirtualAudioOutputDevice(Landroid/media/AudioFormat;[I[IZ)Landroid/media/AudioRecord;
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->setTargetMixRole(I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    if-eqz p4, :cond_0

    const/4 p4, 0x3

    goto :goto_0

    :cond_0
    const/4 p4, 0x2

    :goto_0
    array-length v2, p2

    if-eqz v2, :cond_4

    array-length v2, p2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v4}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    if-eqz p3, :cond_2

    array-length v2, p3

    :goto_2
    if-ge v1, v2, :cond_2

    aget v3, p3, v1

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v4, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->voiceCommunicationCaptureAllowed(Z)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    new-instance p2, Landroid/media/audiopolicy/AudioMix$Builder;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    invoke-virtual {p2, p1}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/media/SemVirtualAudioDevice;->resetAudioPolicy()V

    new-instance p2, Landroid/media/audiopolicy/AudioPolicy$Builder;

    iget-object p3, p0, Lcom/samsung/android/media/SemVirtualAudioDevice;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/media/SemVirtualAudioDevice;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    iget-object p3, p0, Lcom/samsung/android/media/SemVirtualAudioDevice;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p3, p2}, Landroid/media/AudioManager;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_3
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/media/SemVirtualAudioDevice;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {p2, p1}, Landroid/media/audiopolicy/AudioPolicy;->createAudioRecordSink(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioRecord;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid app uid array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized whitelist disconnectVirtualAudioDevice()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/SemVirtualAudioDevice;->resetAudioPolicy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
