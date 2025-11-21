.class Landroid/service/vr/VrListenerService$1;
.super Landroid/service/vr/IVrListener$Stub;
.source "VrListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/vr/VrListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/vr/VrListenerService;


# direct methods
.method constructor blacklist <init>(Landroid/service/vr/VrListenerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/vr/VrListenerService$1;->this$0:Landroid/service/vr/VrListenerService;

    invoke-direct {p0}, Landroid/service/vr/IVrListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist focusedActivityChanged(Landroid/content/ComponentName;ZI)V
    .locals 1

    iget-object p0, p0, Landroid/service/vr/VrListenerService$1;->this$0:Landroid/service/vr/VrListenerService;

    invoke-static {p0}, Landroid/service/vr/VrListenerService;->-$$Nest$fgetmHandler(Landroid/service/vr/VrListenerService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
