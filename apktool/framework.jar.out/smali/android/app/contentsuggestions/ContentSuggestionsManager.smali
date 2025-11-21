.class public final Landroid/app/contentsuggestions/ContentSuggestionsManager;
.super Ljava/lang/Object;
.source "ContentSuggestionsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;,
        Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;,
        Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;,
        Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_BITMAP:Ljava/lang/String; = "android.contentsuggestions.extra.BITMAP"

.field private static final blacklist SYNC_CALLS_TIMEOUT_MS:I = 0x1388

.field private static final blacklist TAG:Ljava/lang/String; = "ContentSuggestionsManager"


# instance fields
.field private final blacklist mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

.field private final blacklist mUser:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/contentsuggestions/IContentSuggestionsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    iput p1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    return-void
.end method


# virtual methods
.method public whitelist classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Ljava/util/concurrent/Executor;Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_0

    sget-object p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string p1, "classifyContentSelections called, but no ContentSuggestionsManager configured"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    new-instance v1, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;

    invoke-direct {v1, p3, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;-><init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, p0, p1, v1}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->classifyContentSelections(ILandroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist isEnabled()Z
    .locals 3

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v0, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    :try_start_0
    iget-object v2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    iget p0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    invoke-interface {v2, p0, v0}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->isEnabled(ILcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Fail to get the enable status."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_0

    sget-object p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "notifyInteraction called, but no ContentSuggestionsManager configured"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    invoke-interface {v0, p0, p1, p2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->notifyInteraction(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist provideContextImage(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_0

    sget-object p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "provideContextImage called, but no ContentSuggestionsManager configured"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    invoke-interface {v0, p0, p1, p2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->provideContextImage(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist provideContextImage(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_0

    sget-object p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "provideContextImage called, but no ContentSuggestionsManager configured"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    invoke-interface {v0, p0, p1, p2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->provideContextBitmap(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist resetTemporaryService(I)V
    .locals 0

    iget-object p0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez p0, :cond_0

    sget-object p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "resetTemporaryService called, but no ContentSuggestionsManager configured"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->resetTemporaryService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist setDefaultServiceEnabled(IZ)V
    .locals 0

    iget-object p0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez p0, :cond_0

    sget-object p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setDefaultServiceEnabled called, but no ContentSuggestionsManager configured"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->setDefaultServiceEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist setTemporaryService(ILjava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez p0, :cond_0

    sget-object p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setTemporaryService called, but no ContentSuggestionsManager configured"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->setTemporaryService(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Ljava/util/concurrent/Executor;Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_0

    sget-object p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "suggestContentSelections called, but no ContentSuggestionsManager configured"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    new-instance v1, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;

    invoke-direct {v1, p3, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;-><init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, p0, p1, v1}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->suggestContentSelections(ILandroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
