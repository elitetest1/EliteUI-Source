.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/BLASTBufferQueue$WaitForBufferReleaseCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/Choreographer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/Choreographer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda17;->f$0:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public final blacklist onWaitForBufferRelease(J)V
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda17;->f$0:Landroid/view/Choreographer;

    invoke-virtual {p0, p1, p2}, Landroid/view/Choreographer;->onWaitForBufferRelease(J)V

    return-void
.end method
