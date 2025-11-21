.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda14;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda14;->f$0:Ljava/util/ArrayList;

    invoke-static {p0}, Landroid/view/ViewRootImpl;->lambda$addFrameCommitCallbackIfNeeded$6(Ljava/util/ArrayList;)V

    return-void
.end method
