.class public final Landroid/service/dreams/DreamService$DreamActivityCallbacks;
.super Landroid/os/Binder;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DreamActivityCallbacks"
.end annotation


# instance fields
.field private final blacklist mActivityDreamToken:Landroid/os/IBinder;

.field private blacklist mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamService;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mActivityDreamToken:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public blacklist onActivityCreated(Landroid/service/dreams/DreamActivity;)V
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mActivityDreamToken:Landroid/os/IBinder;

    invoke-static {v0, p1, p0}, Landroid/service/dreams/DreamService;->-$$Nest$monActivityCreated(Landroid/service/dreams/DreamService;Landroid/service/dreams/DreamActivity;Landroid/os/IBinder;)V

    return-void
.end method

.method public blacklist onActivityDestroyed()V
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$monActivityDestroyed(Landroid/service/dreams/DreamService;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService$DreamActivityCallbacks;->mService:Ljava/lang/ref/WeakReference;

    return-void
.end method
