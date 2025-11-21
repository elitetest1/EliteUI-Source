.class public Landroid/app/FullscreenRequestHandler;
.super Ljava/lang/Object;
.source "FullscreenRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FullscreenRequestHandler$RequestResult;
    }
.end annotation


# static fields
.field public static final blacklist REMOTE_CALLBACK_RESULT_KEY:Ljava/lang/String; = "result"

.field public static final blacklist RESULT_APPROVED:I = 0x0

.field public static final blacklist RESULT_FAILED_ALREADY_FULLY_EXPANDED:I = 0x3

.field public static final blacklist RESULT_FAILED_NOT_IN_FULLSCREEN_WITH_HISTORY:I = 0x1

.field public static final blacklist RESULT_FAILED_NOT_TOP_FOCUSED:I = 0x2


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnotifyFullscreenRequestResult(Landroid/os/OutcomeReceiver;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/app/FullscreenRequestHandler;->notifyFullscreenRequestResult(Landroid/os/OutcomeReceiver;I)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist earlyCheckRequestMatchesWindowingMode(II)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    if-eq p1, v1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    sget-object p0, Landroid/window/DesktopModeFlags;->ENABLE_REQUEST_FULLSCREEN_BUGFIX:Landroid/window/DesktopModeFlags;

    invoke-virtual {p0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result p0

    if-eqz p0, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p0, 0x6

    if-ne p1, p0, :cond_3

    :cond_2
    const/4 p0, 0x3

    return p0

    :cond_3
    return v0
.end method

.method private static blacklist notifyFullscreenRequestResult(Landroid/os/OutcomeReceiver;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Throwable;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The window is already fully expanded."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The window is not the top focused window."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The window is not in fullscreen by calling the requestFullscreenMode API before, such that cannot be restored."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method static blacklist requestFullscreenMode(ILandroid/os/OutcomeReceiver;Landroid/content/res/Configuration;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Throwable;",
            ">;",
            "Landroid/content/res/Configuration;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p2

    invoke-static {p0, p2}, Landroid/app/FullscreenRequestHandler;->earlyCheckRequestMatchesWindowingMode(II)I

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_2

    invoke-static {p1, p2}, Landroid/app/FullscreenRequestHandler;->notifyFullscreenRequestResult(Landroid/os/OutcomeReceiver;I)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object p2

    new-instance v0, Landroid/app/FullscreenRequestHandler$1;

    invoke-direct {v0, p1}, Landroid/app/FullscreenRequestHandler$1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-virtual {p2, p3, p0, v0}, Landroid/app/ActivityClient;->requestMultiwindowFullscreen(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V

    return-void

    :cond_1
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p0, v0}, Landroid/app/ActivityClient;->requestMultiwindowFullscreen(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
