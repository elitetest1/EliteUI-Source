.class Landroid/service/dreams/DreamService$2;
.super Landroid/service/dreams/IDreamOverlayCallback$Stub;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/dreams/DreamService;


# direct methods
.method public static synthetic blacklist $r8$lambda$nzQBFl9MaG0AFcrDeJVEwGouvWE(Landroid/service/dreams/DreamService$2;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamService$2;->lambda$onExitRequested$0()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/dreams/DreamService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamOverlayCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onExitRequested$0()V
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {p0}, Landroid/service/dreams/DreamService;->-$$Nest$mfinishInternal(Landroid/service/dreams/DreamService;)V

    return-void
.end method


# virtual methods
.method public blacklist onExitRequested()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    new-instance v3, Landroid/service/dreams/DreamService$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/service/dreams/DreamService$2$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamService$2;)V

    invoke-static {v2, v3}, Landroid/service/dreams/DreamService;->-$$Nest$mpostIfNeeded(Landroid/service/dreams/DreamService;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public blacklist onRedirectWake(Z)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {p0, p1}, Landroid/service/dreams/DreamService;->-$$Nest$fputmRedirectWake(Landroid/service/dreams/DreamService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
