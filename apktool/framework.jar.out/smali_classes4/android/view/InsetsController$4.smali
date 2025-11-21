.class Landroid/view/InsetsController$4;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/InsetsAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;ZJLandroid/view/animation/Interpolator;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$durationMs:J

.field final synthetic blacklist val$interpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsController;JLandroid/view/animation/Interpolator;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-wide p2, p0, Landroid/view/InsetsController$4;->val$durationMs:J

    iput-object p4, p0, Landroid/view/InsetsController$4;->val$interpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDurationMs(Z)J
    .locals 0

    iget-wide p0, p0, Landroid/view/InsetsController$4;->val$durationMs:J

    return-wide p0
.end method

.method public blacklist getInsetsInterpolator(Z)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsController$4;->val$interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method
