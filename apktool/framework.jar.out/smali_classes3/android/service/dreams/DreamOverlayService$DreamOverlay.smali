.class Landroid/service/dreams/DreamOverlayService$DreamOverlay;
.super Landroid/service/dreams/IDreamOverlay$Stub;
.source "DreamOverlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamOverlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DreamOverlay"
.end annotation


# instance fields
.field private final blacklist mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamOverlayService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/service/dreams/DreamOverlayService;)V
    .locals 1

    invoke-direct {p0}, Landroid/service/dreams/IDreamOverlay$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService$DreamOverlay;->mService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public blacklist getClient(Landroid/service/dreams/IDreamOverlayClientCallback;)V
    .locals 1

    :try_start_0
    new-instance v0, Landroid/service/dreams/DreamOverlayService$OverlayClient;

    iget-object p0, p0, Landroid/service/dreams/DreamOverlayService$DreamOverlay;->mService:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-interface {p1, v0}, Landroid/service/dreams/IDreamOverlayClientCallback;->onDreamOverlayClient(Landroid/service/dreams/IDreamOverlayClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "DreamOverlayService"

    const-string v0, "could not send client to callback"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
