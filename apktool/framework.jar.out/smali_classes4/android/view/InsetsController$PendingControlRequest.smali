.class Landroid/view/InsetsController$PendingControlRequest;
.super Ljava/lang/Object;
.source "InsetsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingControlRequest"
.end annotation


# instance fields
.field final blacklist animationType:I

.field final blacklist cancellationSignal:Landroid/os/CancellationSignal;

.field final blacklist layoutInsetsDuringAnimation:I

.field final blacklist listener:Landroid/view/WindowInsetsAnimationControlListener;

.field final blacklist mInsetsAnimationSpec:Landroid/view/InsetsAnimationSpec;

.field blacklist types:I

.field final blacklist useInsetsAnimationThread:Z


# direct methods
.method constructor blacklist <init>(ILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/InsetsAnimationSpec;IILandroid/os/CancellationSignal;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/InsetsController$PendingControlRequest;->types:I

    iput-object p2, p0, Landroid/view/InsetsController$PendingControlRequest;->listener:Landroid/view/WindowInsetsAnimationControlListener;

    iput-object p3, p0, Landroid/view/InsetsController$PendingControlRequest;->mInsetsAnimationSpec:Landroid/view/InsetsAnimationSpec;

    iput p4, p0, Landroid/view/InsetsController$PendingControlRequest;->animationType:I

    iput p5, p0, Landroid/view/InsetsController$PendingControlRequest;->layoutInsetsDuringAnimation:I

    iput-object p6, p0, Landroid/view/InsetsController$PendingControlRequest;->cancellationSignal:Landroid/os/CancellationSignal;

    iput-boolean p7, p0, Landroid/view/InsetsController$PendingControlRequest;->useInsetsAnimationThread:Z

    return-void
.end method
