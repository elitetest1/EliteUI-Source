.class final Landroid/companion/virtual/audio/UserRestrictionsDetector;
.super Landroid/content/BroadcastReceiver;
.source "UserRestrictionsDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "UserRestrictionsDetector"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mIsUnmuteMicDisallowed:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mUserManager:Landroid/os/UserManager;

.field private blacklist mUserRestrictionsCallback:Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method blacklist isUnmuteMicrophoneDisallowed()Z
    .locals 1

    iget-object p0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "no_unmute_microphone"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.os.action.USER_RESTRICTIONS_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/companion/virtual/audio/UserRestrictionsDetector;->isUnmuteMicrophoneDisallowed()Z

    move-result p1

    iget-object p2, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-boolean v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mIsUnmuteMicDisallowed:Z

    if-ne p1, v0, :cond_0

    monitor-exit p2

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mIsUnmuteMicDisallowed:Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserRestrictionsCallback:Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;->onMicrophoneRestrictionChanged(Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method blacklist register(Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;)V
    .locals 1

    iput-object p1, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserRestrictionsCallback:Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.os.action.USER_RESTRICTIONS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Landroid/companion/virtual/audio/UserRestrictionsDetector;->isUnmuteMicrophoneDisallowed()Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mIsUnmuteMicDisallowed:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist unregister()V
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserRestrictionsCallback:Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserRestrictionsCallback:Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;

    iget-object v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
