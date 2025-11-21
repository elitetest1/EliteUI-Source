.class Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;
.super Ljava/lang/Object;
.source "SemSoundTriggerModule.java"

# interfaces
.implements Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;-><init>(ILcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onModelUnloaded(I)V
    .locals 0

    return-void
.end method

.method public blacklist onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 13

    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    invoke-interface {p0, v1}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onServiceStateChange(I)V

    return-void

    :cond_0
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    iget-object v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    array-length v1, v0

    new-array v12, v1, [Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    array-length v3, v3

    new-array v3, v3, [Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

    move v4, v1

    :goto_1
    aget-object v5, v0, v2

    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    new-instance v5, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

    aget-object v6, v0, v2

    iget-object v6, v6, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    aget-object v6, v6, v4

    iget v6, v6, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    aget-object v7, v0, v2

    iget-object v7, v7, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    aget-object v7, v7, v4

    iget v7, v7, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;-><init>(II)V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;

    aget-object v5, v0, v2

    iget v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    aget-object v6, v0, v2

    iget v6, v6, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->recognitionModes:I

    aget-object v7, v0, v2

    iget v7, v7, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->coarseConfidenceLevel:I

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;)V

    aput-object v4, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    new-instance v2, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionEvent;

    iget v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    iget v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    iget-boolean v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    iget v6, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    iget v7, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    iget v8, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    iget-boolean v9, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    iget-object v10, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    iget-object v11, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;)V

    invoke-interface {p0, v2}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onRecognition(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    new-instance v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;

    iget v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    iget v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    iget-boolean v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    iget v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    iget v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    iget v6, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    iget-boolean v7, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    iget-object v8, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    iget-object v9, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B)V

    invoke-interface {p0, v0}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onRecognition(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;)V

    return-void
.end method

.method public blacklist onResourcesAvailable()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onServiceStateChange(I)V

    return-void
.end method

.method public blacklist onServiceDied()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    invoke-interface {p0}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onServiceDied()V

    return-void
.end method
