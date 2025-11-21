.class public Landroid/view/SurfaceControl$LockDebuggingTransaction;
.super Landroid/view/SurfaceControl$Transaction;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockDebuggingTransaction"
.end annotation


# instance fields
.field blacklist mMonitor:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceControl$LockDebuggingTransaction;->mMonitor:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected blacklist checkPreconditions(Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-object p0, p0, Landroid/view/SurfaceControl$LockDebuggingTransaction;->mMonitor:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unlocked access to synchronized SurfaceControl.Transaction"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
