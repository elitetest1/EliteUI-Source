.class public final synthetic Landroid/animation/AnimationHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/animation/AnimationHandler;

.field public final synthetic blacklist f$1:Landroid/view/Choreographer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/animation/AnimationHandler;Landroid/view/Choreographer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/animation/AnimationHandler$$ExternalSyntheticLambda1;->f$0:Landroid/animation/AnimationHandler;

    iput-object p2, p0, Landroid/animation/AnimationHandler$$ExternalSyntheticLambda1;->f$1:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public final whitelist doFrame(J)V
    .locals 1

    iget-object v0, p0, Landroid/animation/AnimationHandler$$ExternalSyntheticLambda1;->f$0:Landroid/animation/AnimationHandler;

    iget-object p0, p0, Landroid/animation/AnimationHandler$$ExternalSyntheticLambda1;->f$1:Landroid/view/Choreographer;

    invoke-static {v0, p0, p1, p2}, Landroid/animation/AnimationHandler;->$r8$lambda$cI3rukYIb_VjDv2y_olauD4FmZA(Landroid/animation/AnimationHandler;Landroid/view/Choreographer;J)V

    return-void
.end method
