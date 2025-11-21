.class public Landroid/media/AudioDevicePort;
.super Landroid/media/AudioPort;
.source "AudioDevicePort.java"


# instance fields
.field private final greylist-max-o mAddress:Ljava/lang/String;

.field private final blacklist mEncapsulationMetadataTypes:[I

.field private final blacklist mEncapsulationModes:[I

.field private final blacklist mSpeakerLayoutChannelMask:I

.field private final greylist-max-o mType:I


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioHandle;Ljava/lang/String;Ljava/util/List;[Landroid/media/AudioGain;ILjava/lang/String;I[I[ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioHandle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;[",
            "Landroid/media/AudioGain;",
            "I",
            "Ljava/lang/String;",
            "I[I[I",
            "Ljava/util/List<",
            "Landroid/media/AudioDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-static {p5}, Landroid/media/AudioManager;->isInputDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p10

    move v2, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioPort;-><init>(Landroid/media/AudioHandle;ILjava/lang/String;Ljava/util/List;[Landroid/media/AudioGain;Ljava/util/List;)V

    iput p5, p0, Landroid/media/AudioDevicePort;->mType:I

    iput-object p6, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    iput p7, p0, Landroid/media/AudioDevicePort;->mSpeakerLayoutChannelMask:I

    iput-object p8, p0, Landroid/media/AudioDevicePort;->mEncapsulationModes:[I

    move-object/from16 v1, p9

    iput-object v1, p0, Landroid/media/AudioDevicePort;->mEncapsulationMetadataTypes:[I

    return-void
.end method

.method constructor greylist-max-r <init>(Landroid/media/AudioHandle;Ljava/lang/String;[I[I[I[I[Landroid/media/AudioGain;ILjava/lang/String;[I[I)V
    .locals 9

    invoke-static/range {p8 .. p8}, Landroid/media/AudioManager;->isInputDevice(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    move v2, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/media/AudioPort;-><init>(Landroid/media/AudioHandle;ILjava/lang/String;[I[I[I[I[Landroid/media/AudioGain;)V

    move/from16 v1, p8

    iput v1, p0, Landroid/media/AudioDevicePort;->mType:I

    move-object/from16 v1, p9

    iput-object v1, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioDevicePort;->mSpeakerLayoutChannelMask:I

    move-object/from16 v1, p10

    iput-object v1, p0, Landroid/media/AudioDevicePort;->mEncapsulationModes:[I

    move-object/from16 v1, p11

    iput-object v1, p0, Landroid/media/AudioDevicePort;->mEncapsulationMetadataTypes:[I

    return-void
.end method

.method public static blacklist createForTesting(I)Landroid/media/AudioDevicePort;
    .locals 11

    new-instance v0, Landroid/media/AudioDevicePort;

    new-instance v1, Landroid/media/AudioHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/AudioHandle;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "testAudioDevicePort"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "testAddress"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v7, p0

    invoke-direct/range {v0 .. v10}, Landroid/media/AudioDevicePort;-><init>(Landroid/media/AudioHandle;Ljava/lang/String;Ljava/util/List;[Landroid/media/AudioGain;ILjava/lang/String;I[I[ILjava/util/List;)V

    return-object v0
.end method

.method public static blacklist createForTesting(ILjava/lang/String;Ljava/lang/String;)Landroid/media/AudioDevicePort;
    .locals 12

    new-instance v0, Landroid/media/AudioDevicePort;

    new-instance v1, Landroid/media/AudioHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/AudioHandle;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, p0

    move-object v2, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v11}, Landroid/media/AudioDevicePort;-><init>(Landroid/media/AudioHandle;Ljava/lang/String;[I[I[I[I[Landroid/media/AudioGain;ILjava/lang/String;[I[I)V

    return-object v0
.end method

.method static synthetic blacklist lambda$encapsulationModes$0(Ljava/lang/Integer;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public greylist-max-o address()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;
    .locals 6

    new-instance v0, Landroid/media/AudioDevicePortConfig;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioDevicePortConfig;-><init>(Landroid/media/AudioDevicePort;IIILandroid/media/AudioGainConfig;)V

    return-object v0
.end method

.method public bridge synthetic blacklist buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object p0

    return-object p0
.end method

.method public blacklist encapsulationMetadataTypes()[I
    .locals 3

    iget-object p0, p0, Landroid/media/AudioDevicePort;->mEncapsulationMetadataTypes:[I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [I

    return-object p0

    :cond_0
    array-length v1, p0

    new-array v1, v1, [I

    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public blacklist encapsulationModes()[I
    .locals 1

    iget-object p0, p0, Landroid/media/AudioDevicePort;->mEncapsulationModes:[I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/media/AudioDevicePort$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/AudioDevicePort$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Landroid/media/AudioDevicePort;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/media/AudioDevicePort;

    iget v2, p0, Landroid/media/AudioDevicePort;->mType:I

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    iget-object v2, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-super {p0, p1}, Landroid/media/AudioPort;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public blacklist isSameAs(Landroid/media/AudioDevicePort;)Z
    .locals 3

    iget v0, p0, Landroid/media/AudioDevicePort;->mType:I

    invoke-virtual {p1}, Landroid/media/AudioDevicePort;->type()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist speakerLayoutChannelMask()I
    .locals 0

    iget p0, p0, Landroid/media/AudioDevicePort;->mSpeakerLayoutChannelMask:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroid/media/AudioDevicePort;->mRole:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioDevicePort;->mType:I

    invoke-static {v0}, Landroid/media/AudioSystem;->getInputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/media/AudioDevicePort;->mType:I

    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/media/AudioPort;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mAddress: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/media/AudioDevicePort;->mType:I

    iget-object p0, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/media/Utils;->anonymizeBluetoothAddress(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist type()I
    .locals 0

    iget p0, p0, Landroid/media/AudioDevicePort;->mType:I

    return p0
.end method
