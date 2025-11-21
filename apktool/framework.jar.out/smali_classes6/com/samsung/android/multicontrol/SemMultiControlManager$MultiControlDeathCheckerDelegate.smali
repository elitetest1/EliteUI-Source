.class Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;
.super Lcom/samsung/android/multicontrol/IMultiControlDeathChecker$Stub;
.source "SemMultiControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multicontrol/SemMultiControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiControlDeathCheckerDelegate"
.end annotation


# instance fields
.field private blacklist mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/multicontrol/IMultiControlDeathChecker$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;

    return-void
.end method


# virtual methods
.method blacklist nullOutListenerLocked()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/multicontrol/SemMultiControlManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/multicontrol/SemMultiControlManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
