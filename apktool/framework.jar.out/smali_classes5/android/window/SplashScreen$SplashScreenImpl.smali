.class public Landroid/window/SplashScreen$SplashScreenImpl;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Landroid/window/SplashScreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SplashScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplashScreenImpl"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SplashScreenImpl"


# instance fields
.field private final blacklist mActivityToken:Landroid/os/IBinder;

.field private blacklist mExitAnimationListener:Landroid/window/SplashScreen$OnExitAnimationListener;

.field private final blacklist mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityToken(Landroid/window/SplashScreen$SplashScreenImpl;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExitAnimationListener(Landroid/window/SplashScreen$SplashScreenImpl;)Landroid/window/SplashScreen$OnExitAnimationListener;
    .locals 0

    iget-object p0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mExitAnimationListener:Landroid/window/SplashScreen$OnExitAnimationListener;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->getInstance()Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    move-result-object p1

    iput-object p1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    return-void
.end method


# virtual methods
.method public whitelist clearOnExitAnimationListener()V
    .locals 2

    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-static {v0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->-$$Nest$fgetmGlobalLock(Landroid/window/SplashScreen$SplashScreenManagerGlobal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mExitAnimationListener:Landroid/window/SplashScreen$OnExitAnimationListener;

    iget-object v1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-static {v1, p0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->-$$Nest$mremoveImpl(Landroid/window/SplashScreen$SplashScreenManagerGlobal;Landroid/window/SplashScreen$SplashScreenImpl;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist setOnExitAnimationListener(Landroid/window/SplashScreen$OnExitAnimationListener;)V
    .locals 1

    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-static {v0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->-$$Nest$fgetmGlobalLock(Landroid/window/SplashScreen$SplashScreenManagerGlobal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iput-object p1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mExitAnimationListener:Landroid/window/SplashScreen$OnExitAnimationListener;

    iget-object p1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-static {p1, p0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->-$$Nest$maddImpl(Landroid/window/SplashScreen$SplashScreenManagerGlobal;Landroid/window/SplashScreen$SplashScreenImpl;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist setSplashScreenTheme(I)V
    .locals 3

    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    const-string v1, "SplashScreenImpl"

    if-nez v0, :cond_0

    const-string p0, "Couldn\'t persist the starting theme. This instance is not an Activity"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-object p0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Landroid/app/ActivityThread;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    move-result p0

    invoke-interface {v0, v2, p1, p0}, Landroid/content/pm/IPackageManager;->setSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Couldn\'t persist the starting theme"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
