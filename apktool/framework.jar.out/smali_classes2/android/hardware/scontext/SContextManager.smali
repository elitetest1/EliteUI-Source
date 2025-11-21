.class public Landroid/hardware/scontext/SContextManager;
.super Lcom/samsung/android/hardware/context/SemContextManager;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextManager"


# instance fields
.field private blacklist mAvailableServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

.field private final blacklist mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mMainLooper:Landroid/os/Looper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsHistoryDataListener(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckHistoryMode(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->checkHistoryMode(Landroid/hardware/scontext/SContextEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    iput-object p2, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    return-void
.end method

.method private blacklist addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_10

    const/4 p0, 0x2

    if-eq p1, p0, :cond_f

    const/4 p0, 0x3

    if-eq p1, p0, :cond_e

    const/4 p0, 0x6

    if-eq p1, p0, :cond_d

    const/16 p0, 0xc

    if-eq p1, p0, :cond_c

    const/16 p0, 0x21

    if-eq p1, p0, :cond_b

    const/16 p0, 0x2f

    if-eq p1, p0, :cond_a

    const/16 p0, 0x33

    if-eq p1, p0, :cond_9

    const/16 p0, 0x35

    if-eq p1, p0, :cond_8

    const/16 p0, 0x8

    if-eq p1, p0, :cond_7

    const/16 p0, 0x9

    if-eq p1, p0, :cond_6

    const/16 p0, 0x17

    if-eq p1, p0, :cond_5

    const/16 p0, 0x18

    if-eq p1, p0, :cond_4

    const/16 p0, 0x23

    if-eq p1, p0, :cond_3

    const/16 p0, 0x24

    if-eq p1, p0, :cond_2

    const/16 p0, 0x27

    if-eq p1, p0, :cond_1

    const/16 p0, 0x28

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Landroid/hardware/scontext/SContextAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Landroid/hardware/scontext/SContextExerciseAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextExerciseAttribute;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>()V

    return-object p0

    :cond_3
    new-instance p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>()V

    return-object p0

    :cond_4
    new-instance p0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>()V

    return-object p0

    :cond_5
    new-instance p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>()V

    return-object p0

    :cond_6
    new-instance p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>()V

    return-object p0

    :cond_7
    new-instance p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>()V

    return-object p0

    :cond_8
    new-instance p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;-><init>()V

    return-object p0

    :cond_9
    new-instance p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;-><init>()V

    return-object p0

    :cond_a
    new-instance p0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;-><init>()V

    return-object p0

    :cond_b
    new-instance p0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>()V

    return-object p0

    :cond_c
    new-instance p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>()V

    return-object p0

    :cond_d
    new-instance p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>()V

    return-object p0

    :cond_e
    new-instance p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>()V

    return-object p0

    :cond_f
    new-instance p0, Landroid/hardware/scontext/SContextPedometerAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>()V

    return-object p0

    :cond_10
    new-instance p0, Landroid/hardware/scontext/SContextApproachAttribute;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextApproachAttribute;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist checkHistoryMode(Landroid/hardware/scontext/SContextEvent;)Z
    .locals 3

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSContextChanged() : event = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getStepLevelMonitorContext()Landroid/hardware/scontext/SContextStepLevelMonitor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextStepLevelMonitor;->getMode()I

    move-result p1

    if-ne p1, v2, :cond_4

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getActivityBatchContext()Landroid/hardware/scontext/SContextActivityBatch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextActivityBatch;->getMode()I

    move-result p1

    if-ne p1, v2, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Angle : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextAutoRotation;->getAngle()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getPedometerContext()Landroid/hardware/scontext/SContextPedometer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextPedometer;->getMode()I

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x0

    :goto_1
    const-string p1, "SContextManager"

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private blacklist checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "SContextManager"

    const-string p1, "Listener is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result p0

    return p0
.end method

.method private blacklist getAvailableServiceMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/scontext/SContextListener;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public blacklist changeParameters(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    if-ne p2, v0, :cond_1

    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result p0

    return p0
.end method

.method public blacklist changeParameters(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextPedometerAttribute;

    move v2, p3

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v1 .. v6}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result p0

    return p0
.end method

.method public blacklist changeParameters(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x23

    if-ne p2, v0, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    const/4 v2, 0x1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result p0

    return p0
.end method

.method public blacklist changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/16 v2, 0x21

    if-eq p2, v2, :cond_3

    const/16 v2, 0x23

    if-eq p2, v2, :cond_3

    const/16 v2, 0x27

    if-eq p2, v2, :cond_3

    const/16 v2, 0x2f

    if-eq p2, v2, :cond_3

    const/16 v2, 0x33

    if-eq p2, v2, :cond_3

    const/16 v2, 0x35

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p0, "SContextManager"

    const-string p1, "  .changeParameters : SContextListener is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    :goto_1
    return v0
.end method

.method public whitelist getFeatureLevel(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getFeatureLevel(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist initializeSContextService(Landroid/hardware/scontext/SContextListener;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "SContextManager"

    const-string p1, "  .initializeSContextService : SContextListener is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->initializeSemContextService(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist isAvailableService(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result p0

    return p0
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result p0

    return p0
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    new-instance v0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    if-ne p2, v0, :cond_2

    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x21

    if-ne p2, v0, :cond_3

    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x24

    if-ne p2, v0, :cond_4

    new-instance v0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result p0

    return p0
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextPedometerAttribute;

    move v2, p3

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v1 .. v6}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result p0

    return p0
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;III)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>(II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    if-ne p2, v0, :cond_1

    new-instance v0, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>(II)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x1d

    if-ne p2, v0, :cond_2

    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>(II)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result p0

    return p0
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move v6, p7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>(IIDI)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result p0

    return p0
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;IIII)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x23

    if-ne p2, v0, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    const/16 v5, 0x5dc

    const/16 v6, 0x5dc

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v1 .. v6}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result p0

    return p0
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1c

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>(IIII)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result p0

    return p0
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;IIIIII)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x18

    if-ne p2, v0, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>(IIIII)V

    goto :goto_0

    :cond_0
    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    const/16 p3, 0x23

    if-ne p2, p3, :cond_1

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    new-instance v2, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    invoke-direct/range {v2 .. v7}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result p0

    return p0
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;IIIZ)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x17

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    invoke-direct {v0, p3, p4, p5}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>(IIZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result p0

    return p0
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x30

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    return v0

    :cond_1
    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {p1}, Landroid/hardware/scontext/SContextListener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->setClientInfo(Ljava/lang/String;)V

    invoke-super {p0, v1, p2, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "  .registerListener : listener = "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", service="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SContextManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_5
    return v0
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;Landroid/os/Looper;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-direct {v1, p0, p1, p4, v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {p1}, Landroid/hardware/scontext/SContextListener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->setClientInfo(Ljava/lang/String;)V

    invoke-super {p0, v1, p2, p3, p4}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "  .registerListener : listener = "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", service="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SContextManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/os/Looper;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;Landroid/os/Looper;)Z

    move-result p0

    return p0
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;I[I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1b

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>([I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result p0

    return p0
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;I[II)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1e

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>([II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result p0

    return p0
.end method

.method public blacklist requestHistoryData(Landroid/hardware/scontext/SContextListener;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/16 v0, 0x21

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_1

    const-string p0, "SContextManager"

    const-string p1, "  .requestHistoryData : This service is not supported!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    if-nez v0, :cond_4

    new-instance v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {p1}, Landroid/hardware/scontext/SContextListener;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->setClientInfo(Ljava/lang/String;)V

    invoke-super {p0, v0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->requestHistoryData(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    return-void
.end method

.method public blacklist requestToUpdate(Landroid/hardware/scontext/SContextListener;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v1, "SContextManager"

    if-eq p2, v0, :cond_1

    const/16 v0, 0x19

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1d

    if-eq p2, v0, :cond_1

    const/16 v0, 0x28

    if-eq p2, v0, :cond_1

    const/16 v0, 0x32

    if-eq p2, v0, :cond_1

    const/16 v0, 0x33

    if-eq p2, v0, :cond_1

    const/16 v0, 0x34

    if-eq p2, v0, :cond_1

    const-string p0, "  .requestToUpdate : This service is not supported!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "  .requestToUpdate : SContextListener is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->requestToUpdate(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    return-void
.end method

.method public blacklist setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result p0

    return p0
.end method

.method public blacklist setReferenceData(I[B[B)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    invoke-direct {v0, p2, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>([B[B)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result p0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->clear()V

    iget-object p0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "  .unregisterListener : listener = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SContextManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    const-string v1, "SContextManager"

    if-nez v0, :cond_1

    const-string p0, "  .unregisterListener : SContextListener is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-super {p0, v0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "  .unregisterListener : listener = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", service="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
