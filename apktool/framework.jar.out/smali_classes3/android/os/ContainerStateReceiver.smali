.class public Landroid/os/ContainerStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContainerStateReceiver.java"


# static fields
.field public static blacklist ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String; = "com.samsung.android.knox.ACTION_CONTAINER_STATE_RECEIVER"

.field public static final blacklist CONTAINER_EVENT_ADMIN_LOCKED:I = 0x10

.field public static final blacklist CONTAINER_EVENT_ADMIN_UNLOCKED:I = 0x11

.field public static final blacklist CONTAINER_EVENT_CREATED:I = 0x0

.field public static final blacklist CONTAINER_EVENT_ENABLED:I = 0x12

.field public static final blacklist CONTAINER_EVENT_LICENSE_ACTIVATED:I = 0xb

.field public static final blacklist CONTAINER_EVENT_LICENSE_EXPIRED:I = 0xc

.field public static final blacklist CONTAINER_EVENT_LOCKED:I = 0x4

.field public static final blacklist CONTAINER_EVENT_LOCKSCREEN_STATE_CHANGED:I = 0xf

.field public static final blacklist CONTAINER_EVENT_ONELOCK:I = 0x13

.field public static final blacklist CONTAINER_EVENT_REMOVED:I = 0xa

.field public static final blacklist CONTAINER_EVENT_RESET:I = 0x9

.field public static final blacklist CONTAINER_EVENT_RUNNING:I = 0x1

.field public static final blacklist CONTAINER_EVENT_SHUTDOWN:I = 0x2

.field public static final blacklist CONTAINER_EVENT_SWITCH:I = 0x3

.field public static final blacklist CONTAINER_EVENT_UNLOCKED:I = 0x5

.field private static blacklist DEBUG:Z = false

.field public static final blacklist DEVICE_EVENT_OWNER_ACTIVATED:I = 0xd

.field public static final blacklist DEVICE_EVENT_OWNER_LICENSE_ACTIVATED:I = 0xe

.field public static final blacklist DEVICE_EVENT_OWNER_LICENSE_EXPIRED:I = 0x14

.field public static blacklist EXTRA_CONTIANER_CONFIGURATION_TYPE:Ljava/lang/String; = "com.samsung.knox.EXTRA_CONTIANER_CONFIGURATION_TYPE"

.field public static blacklist EXTRA_CONTIANER_EVENT_ID:Ljava/lang/String; = "com.samsung.knox.EXTRA_CONTIANER_EVENT_ID"

.field public static blacklist EXTRA_CONTIANER_ID:Ljava/lang/String; = "com.samsung.knox.EXTRA_CONTIANER_ID"

.field public static blacklist EXTRA_LOCKSCREEN_VISIBLE:Ljava/lang/String; = "com.samsung.knox.EXTRA_LOCKSCREEN_VISIBLE"

.field public static blacklist EXTRA_USER_INFO:Ljava/lang/String; = "com.samsung.knox.EXTRA_USER_INFO"

.field private static blacklist TAG:Ljava/lang/String; = "ContainerStateReceiver"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static blacklist register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Landroid/os/ContainerStateReceiver;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static blacklist toEventString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "CONTAINER_EVENT_UNKNOWN"

    return-object p0

    :pswitch_1
    const-string p0, "DEVICE_EVENT_OWNER_LICENSE_EXPIRED"

    return-object p0

    :pswitch_2
    const-string p0, "CONTAINER_EVENT_ONELOCK"

    return-object p0

    :pswitch_3
    const-string p0, "CONTAINER_EVENT_ENABLED"

    return-object p0

    :pswitch_4
    const-string p0, "CONTAINER_EVENT_ADMIN_UNLOCKED"

    return-object p0

    :pswitch_5
    const-string p0, "CONTAINER_EVENT_ADMIN_LOCKED"

    return-object p0

    :pswitch_6
    const-string p0, "CONTAINER_EVENT_LOCKSCREEN_STATE_CHANGED"

    return-object p0

    :pswitch_7
    const-string p0, "DEVICE_EVENT_OWNER_LICENSE_ACTIVATED"

    return-object p0

    :pswitch_8
    const-string p0, "DEVICE_EVENT_OWNER_ACTIVATED"

    return-object p0

    :pswitch_9
    const-string p0, "CONTAINER_EVENT_LICENSE_EXPIRED"

    return-object p0

    :pswitch_a
    const-string p0, "CONTAINER_EVENT_LICENSE_ACTIVATED"

    return-object p0

    :pswitch_b
    const-string p0, "CONTAINER_EVENT_REMOVED"

    return-object p0

    :pswitch_c
    const-string p0, "CONTAINER_EVENT_RESET"

    return-object p0

    :pswitch_d
    const-string p0, "CONTAINER_EVENT_UNLOCKED"

    return-object p0

    :pswitch_e
    const-string p0, "CONTAINER_EVENT_LOCKED"

    return-object p0

    :pswitch_f
    const-string p0, "CONTAINER_EVENT_SWITCH"

    return-object p0

    :pswitch_10
    const-string p0, "CONTAINER_EVENT_SHUTDOWN"

    return-object p0

    :pswitch_11
    const-string p0, "CONTAINER_EVENT_RUNNING"

    return-object p0

    :pswitch_12
    const-string p0, "CONTAINER_EVENT_CREATED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist unregister(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public blacklist onContainerAdminLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onContainerAdminUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onContainerEnabled(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onContainerOneLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onContainerReset(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onContainerSwitch(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onDeviceOwnerLicenseActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onDeviceOwnerLicenseExpired(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onLicenseActivated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onLicenseExpired(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onLockScreenStateChanged(Landroid/content/Context;IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onPersonalSwitch(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    sget-object v1, Landroid/os/ContainerStateReceiver;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_ID:Ljava/lang/String;

    const/16 v3, -0x2710

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_EVENT_ID:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Landroid/os/ContainerStateReceiver;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "onReceive failed to get UserInfo from handle:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v4, Landroid/os/ContainerStateReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " event: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/os/ContainerStateReceiver;->toEventString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    sget-object p0, Landroid/os/ContainerStateReceiver;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "invalid event:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    invoke-virtual {p0, p1, v1}, Landroid/os/ContainerStateReceiver;->onDeviceOwnerLicenseExpired(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    :pswitch_2
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerOneLocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :pswitch_3
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerEnabled(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :pswitch_4
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerAdminUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :pswitch_5
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerAdminLocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :pswitch_6
    sget-object v0, Landroid/os/ContainerStateReceiver;->EXTRA_LOCKSCREEN_VISIBLE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/os/ContainerStateReceiver;->onLockScreenStateChanged(Landroid/content/Context;IZLandroid/os/Bundle;)V

    return-void

    :pswitch_7
    invoke-virtual {p0, p1, v1}, Landroid/os/ContainerStateReceiver;->onDeviceOwnerLicenseActivated(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    :pswitch_8
    invoke-virtual {p0, p1, v1}, Landroid/os/ContainerStateReceiver;->onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    :pswitch_9
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onLicenseExpired(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :pswitch_a
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onLicenseActivated(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :pswitch_b
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :pswitch_c
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerReset(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :pswitch_d
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :pswitch_e
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :pswitch_f
    if-nez v2, :cond_1

    invoke-virtual {p0, p1, v1}, Landroid/os/ContainerStateReceiver;->onPersonalSwitch(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerSwitch(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :pswitch_10
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :pswitch_11
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :pswitch_12
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
