.class public Landroid/window/SystemUiContext;
.super Landroid/content/ContextWrapper;
.source "SystemUiContext.java"

# interfaces
.implements Landroid/window/ConfigurationDispatcher;


# instance fields
.field private final blacklist mCallbacksController:Landroid/content/ComponentCallbacksController;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/content/ComponentCallbacksController;

    invoke-direct {p1}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object p1, p0, Landroid/window/SystemUiContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->trackSystemUiContextBeforeWms()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "SystemUiContext can only be used after flag is enabled."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Landroid/window/SystemUiContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {p0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public whitelist registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 0

    iget-object p0, p0, Landroid/window/SystemUiContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {p0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public blacklist shouldReportPrivateChanges()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 0

    iget-object p0, p0, Landroid/window/SystemUiContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {p0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
