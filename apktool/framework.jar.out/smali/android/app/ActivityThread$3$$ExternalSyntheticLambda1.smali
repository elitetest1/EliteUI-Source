.class public final synthetic Landroid/app/ActivityThread$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ActivityThread$3;

.field public final synthetic blacklist f$1:Landroid/os/IBinder;

.field public final synthetic blacklist f$2:Landroid/window/SplashScreenView;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ActivityThread$3;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityThread$3$$ExternalSyntheticLambda1;->f$0:Landroid/app/ActivityThread$3;

    iput-object p2, p0, Landroid/app/ActivityThread$3$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/app/ActivityThread$3$$ExternalSyntheticLambda1;->f$2:Landroid/window/SplashScreenView;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$3$$ExternalSyntheticLambda1;->f$0:Landroid/app/ActivityThread$3;

    iget-object v1, p0, Landroid/app/ActivityThread$3$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder;

    iget-object p0, p0, Landroid/app/ActivityThread$3$$ExternalSyntheticLambda1;->f$2:Landroid/window/SplashScreenView;

    invoke-static {v0, v1, p0}, Landroid/app/ActivityThread$3;->$r8$lambda$e2pA0SDTW8TQCZhIFpuAjGCNxN8(Landroid/app/ActivityThread$3;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method
