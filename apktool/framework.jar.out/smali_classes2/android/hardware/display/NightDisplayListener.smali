.class public Landroid/hardware/display/NightDisplayListener;
.super Ljava/lang/Object;
.source "NightDisplayListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/NightDisplayListener$Callback;
    }
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/hardware/display/NightDisplayListener$Callback;

.field private final blacklist mContentObserver:Landroid/database/ContentObserver;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mManager:Landroid/hardware/display/ColorDisplayManager;

.field private final blacklist mUserId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$tp7PHDNPPvKP9wMwN8ZBF6aZ_EA(Landroid/hardware/display/NightDisplayListener;Landroid/hardware/display/NightDisplayListener$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/NightDisplayListener;->lambda$setCallback$0(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/NightDisplayListener;->mCallback:Landroid/hardware/display/NightDisplayListener$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmManager(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/NightDisplayListener;->mManager:Landroid/hardware/display/ColorDisplayManager;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/display/NightDisplayListener;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/ColorDisplayManager;

    iput-object p1, p0, Landroid/hardware/display/NightDisplayListener;->mManager:Landroid/hardware/display/ColorDisplayManager;

    iput p2, p0, Landroid/hardware/display/NightDisplayListener;->mUserId:I

    iput-object p3, p0, Landroid/hardware/display/NightDisplayListener;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/hardware/display/NightDisplayListener$1;

    invoke-direct {p1, p0, p3}, Landroid/hardware/display/NightDisplayListener$1;-><init>(Landroid/hardware/display/NightDisplayListener;Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/hardware/display/NightDisplayListener;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    return-void
.end method

.method private synthetic blacklist lambda$setCallback$0(Landroid/hardware/display/NightDisplayListener$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/NightDisplayListener;->setCallbackInternal(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method

.method private blacklist setCallbackInternal(Landroid/hardware/display/NightDisplayListener$Callback;)V
    .locals 4

    iget-object v0, p0, Landroid/hardware/display/NightDisplayListener;->mCallback:Landroid/hardware/display/NightDisplayListener$Callback;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Landroid/hardware/display/NightDisplayListener;->mCallback:Landroid/hardware/display/NightDisplayListener$Callback;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/hardware/display/NightDisplayListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Landroid/hardware/display/NightDisplayListener;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    iget-object p1, p0, Landroid/hardware/display/NightDisplayListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "night_display_activated"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener;->mContentObserver:Landroid/database/ContentObserver;

    iget v2, p0, Landroid/hardware/display/NightDisplayListener;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "night_display_auto_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener;->mContentObserver:Landroid/database/ContentObserver;

    iget v2, p0, Landroid/hardware/display/NightDisplayListener;->mUserId:I

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "night_display_custom_start_time"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener;->mContentObserver:Landroid/database/ContentObserver;

    iget v2, p0, Landroid/hardware/display/NightDisplayListener;->mUserId:I

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "night_display_custom_end_time"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener;->mContentObserver:Landroid/database/ContentObserver;

    iget v2, p0, Landroid/hardware/display/NightDisplayListener;->mUserId:I

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "night_display_color_temperature"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener;->mContentObserver:Landroid/database/ContentObserver;

    iget p0, p0, Landroid/hardware/display/NightDisplayListener;->mUserId:I

    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/NightDisplayListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/display/NightDisplayListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/display/NightDisplayListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/hardware/display/NightDisplayListener$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/display/NightDisplayListener;Landroid/hardware/display/NightDisplayListener$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/display/NightDisplayListener;->setCallbackInternal(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method
