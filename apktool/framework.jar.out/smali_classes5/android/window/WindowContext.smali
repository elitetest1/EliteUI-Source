.class public Landroid/window/WindowContext;
.super Landroid/content/ContextWrapper;
.source "WindowContext.java"

# interfaces
.implements Landroid/window/WindowProvider;
.implements Landroid/window/ConfigurationDispatcher;


# instance fields
.field private final blacklist mCallbacksController:Landroid/content/ComponentCallbacksController;

.field private final blacklist mController:Landroid/window/WindowContextController;

.field private final blacklist mOptions:Landroid/os/Bundle;

.field private final blacklist mType:I

.field private final blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/content/ComponentCallbacksController;

    invoke-direct {p1}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object p1, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    iput p2, p0, Landroid/window/WindowContext;->mType:I

    iput-object p3, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    invoke-static {p0}, Landroid/view/WindowManagerImpl;->createWindowContextWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p1

    iput-object p1, p0, Landroid/window/WindowContext;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/window/WindowContext;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Landroid/window/WindowTokenClient;

    new-instance p2, Landroid/window/WindowContextController;

    invoke-direct {p2, p1}, Landroid/window/WindowContextController;-><init>(Landroid/window/WindowTokenClient;)V

    iput-object p2, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist attachToDisplayArea()V
    .locals 3

    iget-object v0, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    iget v1, p0, Landroid/window/WindowContext;->mType:I

    invoke-virtual {p0}, Landroid/window/WindowContext;->getDisplayId()I

    move-result v2

    iget-object p0, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Landroid/window/WindowContextController;->attachToDisplayArea(IILandroid/os/Bundle;)V

    return-void
.end method

.method public blacklist destroy()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->clearCallbacks()V

    invoke-virtual {p0}, Landroid/window/WindowContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public blacklist dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {p0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/window/WindowContext;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/window/WindowContext;->mWindowManager:Landroid/view/WindowManager;

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getWindowContextOptions()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method public blacklist getWindowType()I
    .locals 0

    iget p0, p0, Landroid/window/WindowContext;->mType:I

    return p0
.end method

.method public whitelist registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 0

    iget-object p0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {p0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public blacklist release()V
    .locals 1

    iget-object v0, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    invoke-virtual {v0}, Landroid/window/WindowContextController;->detachIfNeeded()V

    invoke-virtual {p0}, Landroid/window/WindowContext;->destroy()V

    return-void
.end method

.method public blacklist reparentToDisplay(I)V
    .locals 2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->reparentWindowTokenApi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/window/WindowContext;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->updateDisplay(I)V

    iget-object v0, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    iget v1, p0, Landroid/window/WindowContext;->mType:I

    iget-object p0, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1, p0}, Landroid/window/WindowContextController;->reparentToDisplayArea(IILandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist shouldReportPrivateChanges()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 0

    iget-object p0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {p0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
