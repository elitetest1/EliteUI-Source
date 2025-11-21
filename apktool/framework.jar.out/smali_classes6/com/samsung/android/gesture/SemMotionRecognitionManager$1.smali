.class Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;
.super Ljava/lang/Object;
.source "SemMotionRecognitionManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/SemMotionRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 5

    const-string v0, "  >> check setting smart alert enabled : "

    iget-object v1, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    new-instance v2, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    invoke-direct {v2}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getMovementContext()Lcom/samsung/android/hardware/context/SemContextMovement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextMovement;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-static {v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->-$$Nest$fgetmotionService(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Lcom/samsung/android/gesture/IMotionRecognitionService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/gesture/IMotionRecognitionService;->getPickUpMotionStatus()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "MotionRecognitionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v1, p1

    :goto_0
    const-string v3, "MotionRecognitionManager"

    const-string v4, "RemoteException in getPickUpMotionStatus: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v1, :cond_2

    const/16 v0, 0x43

    invoke-virtual {v2, v0}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->setMotion(I)V

    const-string v0, "MotionRecognitionManager"

    const-string/jumbo v1, "mySemContextMotionListener : Send Smart alert event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->-$$Nest$fgetsListenerDelegates(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-static {v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->-$$Nest$fgetsListenerDelegates(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge p1, v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;->this$0:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->-$$Nest$fgetsListenerDelegates(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-virtual {v3, v2}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->motionCallback(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_1
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_3
    return-void
.end method
