.class Lcom/android/internal/app/SmRccPolicy$MyHandler;
.super Landroid/os/Handler;
.source "SmRccPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SmRccPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/SmRccPolicy;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/SmRccPolicy;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x14

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x46

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/internal/app/SmRccPolicy;->-$$Nest$mcallResetSmRccOpen(Lcom/android/internal/app/SmRccPolicy;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/SmRccPolicy;->updateRccRestrict(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/SmRccPolicy;->updateRccOpen(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/SmRccPolicy;->updateRccShow(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/SmRccPolicy;->removeRccPackage(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/app/SmRccPolicy$RccApp;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/SmRccPolicy;->addRccPackage(Lcom/android/internal/app/SmRccPolicy$RccApp;)V

    return-void

    :cond_6
    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy$MyHandler;->this$0:Lcom/android/internal/app/SmRccPolicy;

    invoke-static {p0}, Lcom/android/internal/app/SmRccPolicy;->-$$Nest$mloadRccAppFromSm(Lcom/android/internal/app/SmRccPolicy;)V

    return-void
.end method
