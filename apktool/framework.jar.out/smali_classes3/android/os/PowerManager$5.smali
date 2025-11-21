.class Landroid/os/PowerManager$5;
.super Landroid/os/IThermalHeadroomListener$Stub;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/PowerManager;->addThermalHeadroomListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalHeadroomChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/PowerManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/os/PowerManager$OnThermalHeadroomChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalHeadroomChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/os/PowerManager$5;->this$0:Landroid/os/PowerManager;

    iput-object p2, p0, Landroid/os/PowerManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/os/PowerManager$5;->val$listener:Landroid/os/PowerManager$OnThermalHeadroomChangedListener;

    invoke-direct {p0}, Landroid/os/IThermalHeadroomListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onHeadroomChange$0(Landroid/os/PowerManager$OnThermalHeadroomChangedListener;FFILjava/util/Map;)V
    .locals 0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/PowerManager$OnThermalHeadroomChangedListener;->onThermalHeadroomChanged(FFILjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public blacklist onHeadroomChange(FFI[F)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/PowerManager$5;->this$0:Landroid/os/PowerManager;

    invoke-static {v0, p4}, Landroid/os/PowerManager;->-$$Nest$mconvertThresholdsToMap(Landroid/os/PowerManager;[F)Ljava/util/Map;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_0
    iget-object p4, p0, Landroid/os/PowerManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/os/PowerManager$5;->val$listener:Landroid/os/PowerManager$OnThermalHeadroomChangedListener;

    new-instance v1, Landroid/os/PowerManager$5$$ExternalSyntheticLambda0;

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/os/PowerManager$5$$ExternalSyntheticLambda0;-><init>(Landroid/os/PowerManager$OnThermalHeadroomChangedListener;FFILjava/util/Map;)V

    invoke-interface {p4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
