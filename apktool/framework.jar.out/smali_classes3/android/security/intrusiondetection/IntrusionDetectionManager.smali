.class public Landroid/security/intrusiondetection/IntrusionDetectionManager;
.super Ljava/lang/Object;
.source "IntrusionDetectionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;,
        Landroid/security/intrusiondetection/IntrusionDetectionManager$IntrusionDetectionError;,
        Landroid/security/intrusiondetection/IntrusionDetectionManager$IntrusionDetectionState;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_DATA_SOURCE_UNAVAILABLE:I = 0x4

.field public static final whitelist ERROR_PERMISSION_DENIED:I = 0x1

.field public static final whitelist ERROR_TRANSPORT_UNAVAILABLE:I = 0x3

.field public static final whitelist ERROR_UNKNOWN:I = 0x0

.field public static final whitelist STATE_DISABLED:I = 0x1

.field public static final whitelist STATE_ENABLED:I = 0x2

.field public static final whitelist STATE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "IntrusionDetectionManager"


# instance fields
.field private final blacklist mService:Landroid/security/intrusiondetection/IIntrusionDetectionService;

.field private final blacklist mStateCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/security/intrusiondetection/IIntrusionDetectionService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mStateCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionService;

    return-void
.end method


# virtual methods
.method public whitelist addStateCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mStateCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p0, "IntrusionDetectionManager"

    const-string p1, "addStateCallback callback already present"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/security/intrusiondetection/IntrusionDetectionManager$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/security/intrusiondetection/IntrusionDetectionManager$1;-><init>(Landroid/security/intrusiondetection/IntrusionDetectionManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :try_start_0
    iget-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionService;

    invoke-interface {p1, v0}, Landroid/security/intrusiondetection/IIntrusionDetectionService;->addStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mStateCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist disable(Ljava/util/concurrent/Executor;Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionService;

    new-instance v1, Landroid/security/intrusiondetection/IntrusionDetectionManager$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/security/intrusiondetection/IntrusionDetectionManager$3;-><init>(Landroid/security/intrusiondetection/IntrusionDetectionManager;Ljava/util/concurrent/Executor;Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;)V

    invoke-interface {v0, v1}, Landroid/security/intrusiondetection/IIntrusionDetectionService;->disable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist enable(Ljava/util/concurrent/Executor;Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionService;

    new-instance v1, Landroid/security/intrusiondetection/IntrusionDetectionManager$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/security/intrusiondetection/IntrusionDetectionManager$2;-><init>(Landroid/security/intrusiondetection/IntrusionDetectionManager;Ljava/util/concurrent/Executor;Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;)V

    invoke-interface {v0, v1}, Landroid/security/intrusiondetection/IIntrusionDetectionService;->enable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist removeStateCallback(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mStateCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "IntrusionDetectionManager"

    const-string/jumbo p1, "removeStateCallback callback not present"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mStateCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    :try_start_0
    iget-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionService;

    invoke-interface {v1, v0}, Landroid/security/intrusiondetection/IIntrusionDetectionService;->removeStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager;->mStateCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
