.class Landroid/hardware/HardwareBufferInfoRegistry$1;
.super Ljava/lang/Thread;
.source "HardwareBufferInfoRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/HardwareBufferInfoRegistry;->dumpHeapIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/HardwareBufferInfoRegistry;

.field final synthetic blacklist val$key:I


# direct methods
.method constructor blacklist <init>(Landroid/hardware/HardwareBufferInfoRegistry;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/HardwareBufferInfoRegistry$1;->this$0:Landroid/hardware/HardwareBufferInfoRegistry;

    iput p3, p0, Landroid/hardware/HardwareBufferInfoRegistry$1;->val$key:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    const-string v0, "Failed to dump heap for process: "

    const-string v1, "Dumping heap for process: "

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/log/core/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".hprof"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Landroid/hardware/HardwareBufferInfoRegistry;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/hardware/HardwareBufferInfoRegistry$1;->this$0:Landroid/hardware/HardwareBufferInfoRegistry;

    invoke-static {v0}, Landroid/hardware/HardwareBufferInfoRegistry;->-$$Nest$fgetmHasDumped(Landroid/hardware/HardwareBufferInfoRegistry;)[Z

    move-result-object v0

    iget p0, p0, Landroid/hardware/HardwareBufferInfoRegistry$1;->val$key:I

    sub-int/2addr p0, v4

    aput-boolean v4, v0, p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, Landroid/hardware/HardwareBufferInfoRegistry;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Landroid/hardware/HardwareBufferInfoRegistry$1;->this$0:Landroid/hardware/HardwareBufferInfoRegistry;

    invoke-static {v0}, Landroid/hardware/HardwareBufferInfoRegistry;->-$$Nest$fgetmHasDumped(Landroid/hardware/HardwareBufferInfoRegistry;)[Z

    move-result-object v0

    iget p0, p0, Landroid/hardware/HardwareBufferInfoRegistry$1;->val$key:I

    sub-int/2addr p0, v4

    aput-boolean v4, v0, p0

    return-void

    :goto_0
    iget-object v1, p0, Landroid/hardware/HardwareBufferInfoRegistry$1;->this$0:Landroid/hardware/HardwareBufferInfoRegistry;

    invoke-static {v1}, Landroid/hardware/HardwareBufferInfoRegistry;->-$$Nest$fgetmHasDumped(Landroid/hardware/HardwareBufferInfoRegistry;)[Z

    move-result-object v1

    iget p0, p0, Landroid/hardware/HardwareBufferInfoRegistry$1;->val$key:I

    sub-int/2addr p0, v4

    aput-boolean v4, v1, p0

    throw v0
.end method
