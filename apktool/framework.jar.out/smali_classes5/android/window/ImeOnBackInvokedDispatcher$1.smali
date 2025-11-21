.class Landroid/window/ImeOnBackInvokedDispatcher$1;
.super Landroid/os/ResultReceiver;
.source "ImeOnBackInvokedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/window/ImeOnBackInvokedDispatcher;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/ImeOnBackInvokedDispatcher;


# direct methods
.method constructor blacklist <init>(Landroid/window/ImeOnBackInvokedDispatcher;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/window/ImeOnBackInvokedDispatcher$1;->this$0:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/window/ImeOnBackInvokedDispatcher$1;->this$0:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual {v0}, Landroid/window/ImeOnBackInvokedDispatcher;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/window/ImeOnBackInvokedDispatcher$1;->this$0:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-static {p0, p1, p2, v0}, Landroid/window/ImeOnBackInvokedDispatcher;->-$$Nest$mreceive(Landroid/window/ImeOnBackInvokedDispatcher;ILandroid/os/Bundle;Landroid/window/WindowOnBackInvokedDispatcher;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/window/ImeOnBackInvokedDispatcher$1;->this$0:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-static {p0}, Landroid/window/ImeOnBackInvokedDispatcher;->-$$Nest$fgetmQueuedReceive(Landroid/window/ImeOnBackInvokedDispatcher;)Ljava/util/ArrayDeque;

    move-result-object p0

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method
