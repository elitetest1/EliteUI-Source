.class public final Landroid/service/games/GameSessionTrampolineActivity;
.super Landroid/app/Activity;
.source "GameSessionTrampolineActivity.java"


# static fields
.field static final blacklist FUTURE_KEY:Ljava/lang/String; = "GameSessionTrampolineActivity.future"

.field private static final blacklist HAS_LAUNCHED_INTENT_KEY:Ljava/lang/String; = "GameSessionTrampolineActivity.hasLaunchedIntent"

.field static final blacklist INTENT_KEY:Ljava/lang/String; = "GameSessionTrampolineActivity.intent"

.field static final blacklist OPTIONS_KEY:Ljava/lang/String; = "GameSessionTrampolineActivity.options"

.field private static final blacklist REQUEST_CODE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "GameSessionTrampoline"


# instance fields
.field private blacklist mHasLaunchedIntent:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/games/GameSessionTrampolineActivity;->mHasLaunchedIntent:Z

    return-void
.end method

.method public static blacklist createIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/service/games/GameSessionActivityResult;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "android"

    const-string v3, "android.service.games.GameSessionTrampolineActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "GameSessionTrampolineActivity.intent"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "GameSessionTrampolineActivity.options"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p0, "GameSessionTrampolineActivity.future"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected whitelist onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "GameSessionTrampolineActivity.future"

    const-class v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    new-instance v0, Landroid/service/games/GameSessionActivityResult;

    invoke-direct {v0, p2, p3}, Landroid/service/games/GameSessionActivityResult;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->finish()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/service/games/GameSessionTrampolineActivity;->overridePendingTransition(II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected request code: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "GameSessionTrampolineActivity.hasLaunchedIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/service/games/GameSessionTrampolineActivity;->mHasLaunchedIntent:Z

    :cond_0
    iget-boolean p1, p0, Landroid/service/games/GameSessionTrampolineActivity;->mHasLaunchedIntent:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/service/games/GameSessionTrampolineActivity;->mHasLaunchedIntent:Z

    :try_start_0
    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "GameSessionTrampolineActivity.intent"

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "GameSessionTrampolineActivity.options"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->getUserId()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroid/service/games/GameSessionTrampolineActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, p0

    :goto_0
    move-object p0, v0

    const-string p1, "GameSessionTrampoline"

    const-string v0, "Unable to launch activity from game session"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/service/games/GameSessionTrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "GameSessionTrampolineActivity.future"

    const-class v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    invoke-virtual {v1}, Landroid/service/games/GameSessionTrampolineActivity;->finish()V

    const/4 p0, 0x0

    invoke-virtual {v1, p0, p0}, Landroid/service/games/GameSessionTrampolineActivity;->overridePendingTransition(II)V

    :goto_1
    return-void
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "GameSessionTrampolineActivity.hasLaunchedIntent"

    iget-boolean p0, p0, Landroid/service/games/GameSessionTrampolineActivity;->mHasLaunchedIntent:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
