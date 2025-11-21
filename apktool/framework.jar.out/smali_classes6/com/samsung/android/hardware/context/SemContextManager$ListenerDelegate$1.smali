.class Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "SemContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->set(Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;Landroid/os/Looper;)V
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

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/hardware/context/SemContextEvent;

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-$$Nest$fgetmIsHistoryData(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Z

    move-result v1

    const-string v2, "SemContextManager"

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "History data is received. : type = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/context/SemContextListener;->onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    iget-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    iget-object p1, p1, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-$$Nest$fputmIsHistoryData(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;Z)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    iget-object v1, v1, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {v1, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->-$$Nest$mcheckHistoryMode(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextEvent;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AutoRotationEvent : Angle = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->getAngle()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getPedometerContext()Lcom/samsung/android/hardware/context/SemContextPedometer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[2] : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextPedometer;->getTotalStepCount()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextPedometer;->getWalkStepCount()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextPedometer;->getRunStepCount()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-$$Nest$fgetmDereisgeredListener(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;

    invoke-static {p0}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/hardware/context/SemContextListener;->onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V

    :cond_6
    :goto_1
    return-void
.end method
