.class public Lcom/samsung/android/knox/SemContainerState;
.super Ljava/lang/Object;
.source "SemContainerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/SemContainerState$StateReceiver;,
        Lcom/samsung/android/knox/SemContainerState$StateListener;,
        Lcom/samsung/android/knox/SemContainerState$LockListener;,
        Lcom/samsung/android/knox/SemContainerState$EventListener;
    }
.end annotation


# static fields
.field public static greylist ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String; = "com.samsung.android.knox.ACTION_CONTAINER_STATE_RECEIVER"

.field private static final greylist CONTAINER_MODE_LAUNCHER:I = 0x1

.field private static final greylist CONTAINER_MODE_PERSONAL:I = 0x0

.field private static greylist DEBUG:Z = false

.field private static greylist TAG:Ljava/lang/String; = "SemContainerState"


# instance fields
.field private greylist mEventListener:Lcom/samsung/android/knox/SemContainerState$EventListener;

.field private greylist mLockListener:Lcom/samsung/android/knox/SemContainerState$LockListener;

.field private greylist mReceiver:Lcom/samsung/android/knox/SemContainerState$StateReceiver;

.field private greylist mStateListener:Lcom/samsung/android/knox/SemContainerState$StateListener;


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetmEventListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$EventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/SemContainerState;->mEventListener:Lcom/samsung/android/knox/SemContainerState$EventListener;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fgetmLockListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/SemContainerState;->mLockListener:Lcom/samsung/android/knox/SemContainerState$LockListener;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fgetmStateListener(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/SemContainerState;->mStateListener:Lcom/samsung/android/knox/SemContainerState$StateListener;

    return-object p0
.end method

.method static constructor greylist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mReceiver:Lcom/samsung/android/knox/SemContainerState$StateReceiver;

    iput-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mStateListener:Lcom/samsung/android/knox/SemContainerState$StateListener;

    iput-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mLockListener:Lcom/samsung/android/knox/SemContainerState$LockListener;

    iput-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mEventListener:Lcom/samsung/android/knox/SemContainerState$EventListener;

    return-void
.end method


# virtual methods
.method public whitelist register(Landroid/content/Context;Lcom/samsung/android/knox/SemContainerState$StateListener;Lcom/samsung/android/knox/SemContainerState$LockListener;Lcom/samsung/android/knox/SemContainerState$EventListener;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/samsung/android/knox/SemContainerState;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/knox/SemContainerState;->mLockListener:Lcom/samsung/android/knox/SemContainerState$LockListener;

    iput-object p2, p0, Lcom/samsung/android/knox/SemContainerState;->mStateListener:Lcom/samsung/android/knox/SemContainerState$StateListener;

    iput-object p4, p0, Lcom/samsung/android/knox/SemContainerState;->mEventListener:Lcom/samsung/android/knox/SemContainerState$EventListener;

    new-instance p2, Lcom/samsung/android/knox/SemContainerState$StateReceiver;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/knox/SemContainerState$StateReceiver;-><init>(Lcom/samsung/android/knox/SemContainerState;Lcom/samsung/android/knox/SemContainerState-IA;)V

    iput-object p2, p0, Lcom/samsung/android/knox/SemContainerState;->mReceiver:Lcom/samsung/android/knox/SemContainerState$StateReceiver;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public whitelist unregister(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mReceiver:Lcom/samsung/android/knox/SemContainerState$StateReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/knox/SemContainerState;->mLockListener:Lcom/samsung/android/knox/SemContainerState$LockListener;

    iput-object p1, p0, Lcom/samsung/android/knox/SemContainerState;->mStateListener:Lcom/samsung/android/knox/SemContainerState$StateListener;

    iput-object p1, p0, Lcom/samsung/android/knox/SemContainerState;->mEventListener:Lcom/samsung/android/knox/SemContainerState$EventListener;

    iput-object p1, p0, Lcom/samsung/android/knox/SemContainerState;->mReceiver:Lcom/samsung/android/knox/SemContainerState$StateReceiver;

    return-void
.end method
