.class Landroid/app/ActivityThread$3;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->syncTransferSplashscreenViewTransaction(Landroid/window/SplashScreenView;Landroid/os/IBinder;Landroid/view/View;Landroid/view/SurfaceControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread;

.field final synthetic blacklist val$decorView:Landroid/view/View;

.field final synthetic blacklist val$token:Landroid/os/IBinder;

.field final synthetic blacklist val$transaction:Landroid/view/SurfaceControl$Transaction;

.field final synthetic blacklist val$view:Landroid/window/SplashScreenView;


# direct methods
.method public static synthetic blacklist $r8$lambda$e2pA0SDTW8TQCZhIFpuAjGCNxN8(Landroid/app/ActivityThread$3;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread$3;->lambda$onFrameDraw$0(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xkK_R_jszJ2NwSdbVmydvlZUyBE(Landroid/app/ActivityThread$3;Landroid/view/SurfaceControl$Transaction;Landroid/view/View;Landroid/os/IBinder;Landroid/window/SplashScreenView;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread$3;->lambda$onFrameDraw$1(Landroid/view/SurfaceControl$Transaction;Landroid/view/View;Landroid/os/IBinder;Landroid/window/SplashScreenView;Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/ActivityThread;Landroid/view/SurfaceControl$Transaction;Landroid/view/View;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    iput-object p1, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    iput-object p2, p0, Landroid/app/ActivityThread$3;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Landroid/app/ActivityThread$3;->val$decorView:Landroid/view/View;

    iput-object p4, p0, Landroid/app/ActivityThread$3;->val$token:Landroid/os/IBinder;

    iput-object p5, p0, Landroid/app/ActivityThread$3;->val$view:Landroid/window/SplashScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$0(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    invoke-static {p0, p1, p2}, Landroid/app/ActivityThread;->-$$Nest$mreportSplashscreenViewShown(Landroid/app/ActivityThread;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$1(Landroid/view/SurfaceControl$Transaction;Landroid/view/View;Landroid/os/IBinder;Landroid/window/SplashScreenView;Z)V
    .locals 2

    const-wide/16 v0, 0x8

    const-string/jumbo p5, "transferSplashscreenView"

    invoke-static {v0, v1, p5}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance p1, Landroid/app/ActivityThread$3$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p3, p4}, Landroid/app/ActivityThread$3$$ExternalSyntheticLambda1;-><init>(Landroid/app/ActivityThread$3;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .locals 6

    iget-object v2, p0, Landroid/app/ActivityThread$3;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Landroid/app/ActivityThread$3;->val$decorView:Landroid/view/View;

    iget-object v4, p0, Landroid/app/ActivityThread$3;->val$token:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/ActivityThread$3;->val$view:Landroid/window/SplashScreenView;

    new-instance v0, Landroid/app/ActivityThread$3$$ExternalSyntheticLambda0;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread$3$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityThread$3;Landroid/view/SurfaceControl$Transaction;Landroid/view/View;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-object v0
.end method

.method public blacklist onFrameDraw(J)V
    .locals 0

    return-void
.end method
