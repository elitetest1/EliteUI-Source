.class public Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;
.super Ljava/lang/Object;
.source "BiometricPromptWrapper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BiometricPromptWrapper"


# instance fields
.field private final blacklist mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field private final blacklist mBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

.field private blacklist mCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mFailRunnable:Ljava/lang/Runnable;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private blacklist mSuccessRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFailRunnable(Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->mFailRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogWrapper(Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;)Lcom/samsung/android/globalactions/util/LogWrapper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuccessRunnable(Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->mSuccessRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$1;-><init>(Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->mCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-class p2, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/biometrics/BiometricManager;

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    new-instance p2, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {p2, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->mBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    return-void
.end method

.method static synthetic blacklist lambda$buildAndRun$0(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public blacklist buildAndRun(Landroid/os/CancellationSignal;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->mBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->mCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, p1, v1, p0}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method

.method public blacklist canAuthenticate(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "canAuthenticate() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPromptWrapper"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist initPrompt(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->mBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowBackgroundAuthentication(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    return-void
.end method

.method public blacklist setRunnable(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->mSuccessRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->mFailRunnable:Ljava/lang/Runnable;

    return-void
.end method
