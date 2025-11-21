.class public abstract Landroid/window/WindowProviderService;
.super Landroid/app/Service;
.source "WindowProviderService.java"

# interfaces
.implements Landroid/window/WindowProvider;
.implements Landroid/window/ConfigurationDispatcher;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WindowProviderService"


# instance fields
.field private final blacklist mCallbacksController:Landroid/content/ComponentCallbacksController;

.field private final blacklist mController:Landroid/window/WindowContextController;

.field private blacklist mInitialized:Z

.field private final blacklist mOptions:Landroid/os/Bundle;

.field private blacklist mWindowManager:Landroid/view/WindowManager;

.field private final blacklist mWindowToken:Landroid/window/WindowTokenClient;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/window/WindowTokenClient;

    invoke-direct {v0}, Landroid/window/WindowTokenClient;-><init>()V

    iput-object v0, p0, Landroid/window/WindowProviderService;->mWindowToken:Landroid/window/WindowTokenClient;

    new-instance v1, Landroid/window/WindowContextController;

    invoke-direct {v1, v0}, Landroid/window/WindowContextController;-><init>(Landroid/window/WindowTokenClient;)V

    iput-object v1, p0, Landroid/window/WindowProviderService;->mController:Landroid/window/WindowContextController;

    new-instance v0, Landroid/content/ComponentCallbacksController;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object v0, p0, Landroid/window/WindowProviderService;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/window/WindowProviderService;->mOptions:Landroid/os/Bundle;

    const-string p0, "android.windowContext.isWindowProviderService"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static blacklist isWindowProviderService(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "android.windowContext.isWindowProviderService"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    iget-boolean p1, p0, Landroid/window/WindowProviderService;->mInitialized:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/window/WindowProviderService;->mWindowToken:Landroid/window/WindowTokenClient;

    invoke-virtual {p1, p0}, Landroid/window/WindowTokenClient;->attachContext(Landroid/content/Context;)V

    iget-object p1, p0, Landroid/window/WindowProviderService;->mController:Landroid/window/WindowContextController;

    invoke-virtual {p0}, Landroid/window/WindowProviderService;->getWindowType()I

    move-result v0

    invoke-virtual {p0}, Landroid/window/WindowProviderService;->getDisplayId()I

    move-result v1

    invoke-virtual {p0}, Landroid/window/WindowProviderService;->getWindowContextOptions()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/window/WindowContextController;->attachToDisplayArea(IILandroid/os/Bundle;)V

    invoke-static {p0}, Landroid/view/WindowManagerImpl;->createWindowContextWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p1

    iput-object p1, p0, Landroid/window/WindowProviderService;->mWindowManager:Landroid/view/WindowManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/window/WindowProviderService;->mInitialized:Z

    :cond_0
    return-void
.end method

.method public final blacklist attachToWindowToken(Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Landroid/window/WindowProviderService;->mController:Landroid/window/WindowContextController;

    invoke-virtual {p0, p1}, Landroid/window/WindowContextController;->attachToWindowToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public final blacklist createServiceBaseContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/content/Context;
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/app/Service;->createServiceBaseContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/window/WindowProviderService;->getInitialDisplayId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/window/WindowProviderService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Display with id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found, falling back to DEFAULT_DISPLAY"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    :cond_0
    iget-object p0, p0, Landroid/window/WindowProviderService;->mWindowToken:Landroid/window/WindowTokenClient;

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->createTokenContext(Landroid/os/IBinder;Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public blacklist dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/window/WindowProviderService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public blacklist getInitialDisplayId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/window/WindowProviderService;->mWindowManager:Landroid/view/WindowManager;

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getWindowContextOptions()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/window/WindowProviderService;->mOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method public abstract blacklist getWindowType()I
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Landroid/window/WindowProviderService;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {p0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public whitelist onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Landroid/window/WindowProviderService;->mController:Landroid/window/WindowContextController;

    invoke-virtual {v0}, Landroid/window/WindowContextController;->detachIfNeeded()V

    iget-object p0, p0, Landroid/window/WindowProviderService;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {p0}, Landroid/content/ComponentCallbacksController;->clearCallbacks()V

    return-void
.end method

.method public whitelist onLowMemory()V
    .locals 0

    iget-object p0, p0, Landroid/window/WindowProviderService;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {p0}, Landroid/content/ComponentCallbacksController;->dispatchLowMemory()V

    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .locals 0

    iget-object p0, p0, Landroid/window/WindowProviderService;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {p0, p1}, Landroid/content/ComponentCallbacksController;->dispatchTrimMemory(I)V

    return-void
.end method

.method public whitelist registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 0

    iget-object p0, p0, Landroid/window/WindowProviderService;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {p0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public whitelist unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 0

    iget-object p0, p0, Landroid/window/WindowProviderService;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {p0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
