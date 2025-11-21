.class Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal$1;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->bindToServiceSync(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

.field final synthetic blacklist val$context:Landroid/content/Context;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal$1;->this$0:Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    iput-object p2, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "smart face service died"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal$1;->this$0:Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->unbindService(Landroid/content/Context;)V

    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "smart face service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal$1;->this$0:Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    invoke-static {p0, p2}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->-$$Nest$mfinishConnection(Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;Landroid/os/IBinder;)V

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "smart face service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal$1;->this$0:Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;

    iget-object p0, p0, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/samsung/android/smartface/SmartFaceManager$ServiceManagerGlobal;->unbindService(Landroid/content/Context;)V

    return-void
.end method
