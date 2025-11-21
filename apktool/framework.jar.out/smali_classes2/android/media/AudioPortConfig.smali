.class public Landroid/media/AudioPortConfig;
.super Ljava/lang/Object;
.source "AudioPortConfig.java"


# static fields
.field static final greylist-max-o CHANNEL_MASK:I = 0x2

.field static final greylist-max-o FORMAT:I = 0x4

.field static final greylist-max-o GAIN:I = 0x8

.field static final greylist-max-o SAMPLE_RATE:I = 0x1


# instance fields
.field private final greylist mChannelMask:I

.field greylist-max-r mConfigMask:I

.field private final greylist mFormat:I

.field private final greylist mGain:Landroid/media/AudioGainConfig;

.field final greylist mPort:Landroid/media/AudioPort;

.field private final greylist mSamplingRate:I


# direct methods
.method constructor greylist <init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    iput p2, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    iput p3, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    iput p4, p0, Landroid/media/AudioPortConfig;->mFormat:I

    iput-object p5, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    const/4 p1, 0x0

    iput p1, p0, Landroid/media/AudioPortConfig;->mConfigMask:I

    return-void
.end method


# virtual methods
.method public greylist-max-o channelMask()I
    .locals 0

    iget p0, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    return p0
.end method

.method public greylist-max-o format()I
    .locals 0

    iget p0, p0, Landroid/media/AudioPortConfig;->mFormat:I

    return p0
.end method

.method public greylist-max-o gain()Landroid/media/AudioGainConfig;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    return-object p0
.end method

.method public greylist port()Landroid/media/AudioPort;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    return-object p0
.end method

.method public greylist-max-o samplingRate()I
    .locals 0

    iget p0, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{mPort:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSamplingRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChannelMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/AudioPortConfig;->mFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
