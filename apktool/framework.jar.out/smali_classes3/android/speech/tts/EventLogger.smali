.class Landroid/speech/tts/EventLogger;
.super Landroid/speech/tts/AbstractEventLogger;
.source "EventLogger.java"


# instance fields
.field private final greylist-max-o mRequest:Landroid/speech/tts/SynthesisRequest;


# direct methods
.method constructor greylist-max-o <init>(Landroid/speech/tts/SynthesisRequest;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Landroid/speech/tts/AbstractEventLogger;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    return-void
.end method

.method private greylist-max-o getLocaleString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v2}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v2}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {p0}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o getUtteranceLength()I
    .locals 0

    iget-object p0, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {p0}, Landroid/speech/tts/SynthesisRequest;->getText()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method


# virtual methods
.method protected greylist-max-o logFailure(I)V
    .locals 8

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mServiceApp:Ljava/lang/String;

    iget v2, p0, Landroid/speech/tts/EventLogger;->mCallerUid:I

    iget v3, p0, Landroid/speech/tts/EventLogger;->mCallerPid:I

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getUtteranceLength()I

    move-result v4

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getLocaleString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v6

    iget-object p0, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {p0}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v7

    invoke-static/range {v1 .. v7}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakFailure(Ljava/lang/String;IIILjava/lang/String;II)V

    :cond_0
    return-void
.end method

.method protected greylist-max-o logSuccess(JJJ)V
    .locals 13

    iget-object v0, p0, Landroid/speech/tts/EventLogger;->mServiceApp:Ljava/lang/String;

    iget v1, p0, Landroid/speech/tts/EventLogger;->mCallerUid:I

    iget v2, p0, Landroid/speech/tts/EventLogger;->mCallerPid:I

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getUtteranceLength()I

    move-result v3

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getLocaleString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v5}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v5

    iget-object p0, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {p0}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v6

    move-wide v11, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    invoke-static/range {v0 .. v12}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakSuccess(Ljava/lang/String;IIILjava/lang/String;IIJJJ)V

    return-void
.end method
