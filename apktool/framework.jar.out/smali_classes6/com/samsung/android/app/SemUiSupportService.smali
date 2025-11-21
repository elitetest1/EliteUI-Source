.class public Lcom/samsung/android/app/SemUiSupportService;
.super Landroid/app/Service;
.source "SemUiSupportService.java"

# interfaces
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemUiSupportService"


# instance fields
.field protected blacklist mContext:Landroid/content/Context;

.field private blacklist mDecor:Landroid/view/View;

.field private blacklist mWindow:Landroid/view/Window;

.field private blacklist mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field protected blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private blacklist removeDecorView()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Already remove this view : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemUiSupportService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public whitelist createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    const-string v0, "SemUiSupportService"

    const-string v1, "createLayoutParams"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1040340

    const/4 v2, -0x3

    const/16 v3, 0x7d2

    invoke-direct {v0, v3, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public whitelist findViewById(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/SemUiSupportService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public whitelist getWindow()Landroid/view/Window;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method public whitelist getWindowAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    const-string v0, "SemUiSupportService"

    const-string v1, "getWindowAttributes()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public whitelist onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public whitelist onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist onContentChanged()V
    .locals 0

    return-void
.end method

.method public whitelist onCreate()V
    .locals 5

    const-string v0, "loaded theme = "

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCreate() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemUiSupportService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/SemUiSupportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    iput-object p0, p0, Lcom/samsung/android/app/SemUiSupportService;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/samsung/android/app/SemUiSupportService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get running tasks."

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, Lcom/samsung/android/app/SemUiSupportService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public whitelist onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onCreatePanelView(I)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/samsung/android/app/SemUiSupportService;->removeDecorView()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDestroy() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemUiSupportService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/SemUiSupportService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->stopService()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public whitelist onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onSearchRequested()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const-string p1, "SemUiSupportService"

    const-string/jumbo p2, "onStartCommand()"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 p2, p2, 0x100

    if-nez p2, :cond_0

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 p2, p2, 0x100

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindowManager:Landroid/view/WindowManager;

    iget-object p3, p0, Lcom/samsung/android/app/SemUiSupportService;->mDecor:Landroid/view/View;

    invoke-interface {p2, p3, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->stopSelf()V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist setContentView(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->setContentView(I)V

    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public whitelist setWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    const-string v0, "SemUiSupportService"

    const-string/jumbo v1, "setAttributes()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/SemUiSupportService;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public blacklist stopService()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/SemUiSupportService;->removeDecorView()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/SemUiSupportService;->stopForeground(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->stopSelf()V

    return-void
.end method

.method public whitelist stopUiSupportService()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/SemUiSupportService;->removeDecorView()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/SemUiSupportService;->stopForeground(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/SemUiSupportService;->stopSelf()V

    return-void
.end method
