.class Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;
.super Landroid/os/IRemoteCallback$Stub;
.source "UiTranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/UiTranslationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiTranslationStateRemoteCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/view/translation/UiTranslationStateCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mSourceLocale:Landroid/icu/util/ULocale;

.field private blacklist mTargetLocale:Landroid/icu/util/ULocale;


# direct methods
.method public static synthetic blacklist $r8$lambda$TnZvfrQw24ZwsxzacSUl_MUXu8E(Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->lambda$sendResult$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uLt4dwnSnD_79JYexCexMjSzKNI(Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->lambda$sendResult$1(Landroid/os/Bundle;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/view/translation/UiTranslationStateCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mCallback:Landroid/view/translation/UiTranslationStateCallback;

    return-void
.end method

.method private synthetic blacklist lambda$sendResult$0(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->onStateChange(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendResult$1(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback$$ExternalSyntheticLambda1;-><init>(Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist onStateChange(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "package_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unexpected translation state:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UiTranslationManager"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mCallback:Landroid/view/translation/UiTranslationStateCallback;

    invoke-interface {p0, v1}, Landroid/view/translation/UiTranslationStateCallback;->onFinished(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mCallback:Landroid/view/translation/UiTranslationStateCallback;

    iget-object v0, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mSourceLocale:Landroid/icu/util/ULocale;

    iget-object p0, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mTargetLocale:Landroid/icu/util/ULocale;

    invoke-interface {p1, v0, p0, v1}, Landroid/view/translation/UiTranslationStateCallback;->onResumed(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p0, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mCallback:Landroid/view/translation/UiTranslationStateCallback;

    invoke-interface {p0, v1}, Landroid/view/translation/UiTranslationStateCallback;->onPaused(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string/jumbo v0, "source_locale"

    const-class v2, Landroid/icu/util/ULocale;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mSourceLocale:Landroid/icu/util/ULocale;

    const-string/jumbo v0, "target_locale"

    const-class v2, Landroid/icu/util/ULocale;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Landroid/icu/util/ULocale;

    iput-object p1, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mTargetLocale:Landroid/icu/util/ULocale;

    iget-object v0, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mCallback:Landroid/view/translation/UiTranslationStateCallback;

    iget-object p0, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mSourceLocale:Landroid/icu/util/ULocale;

    invoke-interface {v0, p0, p1, v1}, Landroid/view/translation/UiTranslationStateCallback;->onStarted(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist sendResult(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback$$ExternalSyntheticLambda0;-><init>(Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;Landroid/os/Bundle;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
