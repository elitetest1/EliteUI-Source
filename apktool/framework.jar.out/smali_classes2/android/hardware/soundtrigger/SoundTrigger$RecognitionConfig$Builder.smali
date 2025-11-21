.class public final Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioCapabilities:I

.field private blacklist mCaptureRequested:Z

.field private blacklist mData:[B

.field private blacklist mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

.field private blacklist mMultipleTriggersAllowed:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .locals 7

    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mCaptureRequested:Z

    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mMultipleTriggersAllowed:Z

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mData:[B

    iget v5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mAudioCapabilities:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BILandroid/hardware/soundtrigger/SoundTrigger-IA;)V

    return-object v0
.end method

.method public blacklist setAudioCapabilities(I)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mAudioCapabilities:I

    return-object p0
.end method

.method public blacklist setCaptureRequested(Z)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mCaptureRequested:Z

    return-object p0
.end method

.method public blacklist setData([B)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;
    .locals 1

    const-string v0, "Data must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mData:[B

    return-object p0
.end method

.method public blacklist setKeyphrases(Ljava/util/Collection;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;)",
            "Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    return-object p0
.end method

.method public blacklist setMultipleTriggersAllowed(Z)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mMultipleTriggersAllowed:Z

    return-object p0
.end method
