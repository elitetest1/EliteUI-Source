.class Landroid/view/ViewRootImpl$12;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->registerCallbacksForSync(ZLandroid/window/SurfaceSyncGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;

.field final synthetic blacklist val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

.field final synthetic blacklist val$syncBuffer:Z

.field final synthetic blacklist val$t:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public static synthetic blacklist $r8$lambda$9jo0CsXLLVTEwvUxXSpxypxZwTM(Landroid/view/ViewRootImpl$12;Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$12;->lambda$onFrameDraw$2(Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$A5SMbnWYBInqC6gHEx7OcVXH_s4(Landroid/view/ViewRootImpl$12;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl$12;->lambda$onFrameDraw$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CTo3ExVBk8akdVTGlqHPAoYLRVI(Landroid/view/ViewRootImpl$12;JLandroid/window/SurfaceSyncGroup;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/ViewRootImpl$12;->lambda$onFrameDraw$3(JLandroid/window/SurfaceSyncGroup;ZZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sok1FwZFb3O08bJuS5CaI-v7eBU(Landroid/view/ViewRootImpl$12;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$12;->lambda$onFrameDraw$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$12;->val$t:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Landroid/view/ViewRootImpl$12;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    iput-boolean p4, p0, Landroid/view/ViewRootImpl$12;->val$syncBuffer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$0()V
    .locals 1

    iget-object p0, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to submit the sync transaction after 4s. Likely to ANR soon"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$1(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$2(Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_APPLY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "syncBuffer_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->addDebugName(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received ready transaction from native, debugName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$12$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$12$$ExternalSyntheticLambda2;-><init>(Landroid/view/ViewRootImpl$12;)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sget v2, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    int-to-long v2, v2

    const-wide/16 v4, 0xfa0

    mul-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmSimpleExecutor(Landroid/view/ViewRootImpl;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/view/ViewRootImpl$12$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Landroid/view/ViewRootImpl$12$$ExternalSyntheticLambda3;-><init>(Landroid/view/ViewRootImpl$12;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p2}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$3(JLandroid/window/SurfaceSyncGroup;ZZ)V
    .locals 3

    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_BLAST()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received frameCommittedCallback lastAttemptedDrawFrameNum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " didProduceBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p5, :cond_1

    iget-object p4, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/BLASTBufferQueue;->clearSyncTransaction()V

    iget-object p0, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/BLASTBufferQueue;->gatherPendingTransactions(J)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p3}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    return-void

    :cond_1
    if-nez p4, :cond_2

    invoke-virtual {p3}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .locals 6

    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_BLAST()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received frameDrawingCallback syncResult="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " frameNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$12;->val$t:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    :cond_1
    and-int/lit8 p1, p1, 0x6

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/view/ViewRootImpl$12;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    iget-object v0, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/graphics/BLASTBufferQueue;->gatherPendingTransactions(J)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Landroid/view/ViewRootImpl$12;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    invoke-virtual {p0}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_BLAST()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Setting up sync and frameCommitCallback"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean p1, p0, Landroid/view/ViewRootImpl$12;->val$syncBuffer:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object p1

    iget-object v0, p0, Landroid/view/ViewRootImpl$12;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    new-instance v1, Landroid/view/ViewRootImpl$12$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/view/ViewRootImpl$12$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewRootImpl$12;Landroid/window/SurfaceSyncGroup;)V

    invoke-virtual {p1, v1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to syncNextTransaction. Possibly something else is trying to sync?"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroid/view/ViewRootImpl$12;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    invoke-virtual {p1}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl$12;->val$surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    iget-boolean v5, p0, Landroid/view/ViewRootImpl$12;->val$syncBuffer:Z

    new-instance v0, Landroid/view/ViewRootImpl$12$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/ViewRootImpl$12$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewRootImpl$12;JLandroid/window/SurfaceSyncGroup;Z)V

    return-object v0
.end method

.method public blacklist onFrameDraw(J)V
    .locals 0

    return-void
.end method
