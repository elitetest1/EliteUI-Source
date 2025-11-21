.class Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;
.super Ljava/lang/Object;
.source "AccessibilityDirectAccessController.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/AccessibilityDirectAccessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsPrompt"
.end annotation


# static fields
.field private static final blacklist RETRY_MILLIS:I = 0x3e8


# instance fields
.field private blacklist mDismiss:Z

.field private blacklist mLanguageReady:Z

.field private blacklist mRetryCount:I

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private blacklist mTts:Landroid/speech/tts/TextToSpeech;

.field final synthetic blacklist this$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;


# direct methods
.method public static synthetic blacklist $r8$lambda$DAjoFkvtceRHiCJhnDCzhBNhhNw(Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->waitForTtsReady()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uS6soXvm1qjlf8Ln1M9aEV-H-iM(Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->play()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mRetryCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mLanguageReady:Z

    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isSideKeySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040150

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x104014f

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mText:Ljava/lang/CharSequence;

    :goto_0
    iget-object p2, p1, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;

    invoke-static {p1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$FrameworkObjectProvider;->getTextToSpeech(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method private blacklist play()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mDismiss:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AccessibilityDirectAccessController"

    const-string v1, "Tts play fail"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    invoke-static {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->-$$Nest$mplayNotificationTone(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist waitForTtsReady()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mDismiss:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mLanguageReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v2, -0x2

    if-eq v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mLanguageReady:Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mLanguageReady:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getVoice()Landroid/speech/tts/Voice;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object v0

    const-string v2, "notInstalled"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->-$$Nest$fgetmHandler(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    iget v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mRetryCount:I

    if-nez v0, :cond_4

    const-string v0, "AccessibilityDirectAccessController"

    const-string v1, "Tts not ready to speak."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    invoke-static {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->-$$Nest$mplayNotificationTone(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;)V

    return-void

    :cond_4
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mRetryCount:I

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->-$$Nest$fgetmHandler(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public blacklist dismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mDismiss:Z

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->-$$Nest$fgetmHandler(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt$$ExternalSyntheticLambda2;-><init>()V

    iget-object p0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public whitelist onInit(I)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tts init fail, status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccessibilityDirectAccessController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    invoke-static {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->-$$Nest$mplayNotificationTone(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    invoke-static {p1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->-$$Nest$fgetmHandler(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
