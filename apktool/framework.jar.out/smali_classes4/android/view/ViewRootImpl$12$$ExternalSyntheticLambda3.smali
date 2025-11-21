.class public final synthetic Landroid/view/ViewRootImpl$12$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl$12;

.field public final synthetic blacklist f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl$12;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$12$$ExternalSyntheticLambda3;->f$0:Landroid/view/ViewRootImpl$12;

    iput-object p2, p0, Landroid/view/ViewRootImpl$12$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final whitelist onTransactionCommitted()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$12$$ExternalSyntheticLambda3;->f$0:Landroid/view/ViewRootImpl$12;

    iget-object p0, p0, Landroid/view/ViewRootImpl$12$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Landroid/view/ViewRootImpl$12;->$r8$lambda$sok1FwZFb3O08bJuS5CaI-v7eBU(Landroid/view/ViewRootImpl$12;Ljava/lang/Runnable;)V

    return-void
.end method
