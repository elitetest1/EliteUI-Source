.class final Landroid/os/StrictMode$BackgroundActivityLaunchCallback;
.super Landroid/app/IBackgroundActivityLaunchCallback$Stub;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BackgroundActivityLaunchCallback"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/IBackgroundActivityLaunchCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/StrictMode-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/StrictMode$BackgroundActivityLaunchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBackgroundActivityLaunchAborted(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Landroid/os/StrictMode;->vmBackgroundActivityLaunchEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/os/StrictMode;->onBackgroundActivityLaunchAborted(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
