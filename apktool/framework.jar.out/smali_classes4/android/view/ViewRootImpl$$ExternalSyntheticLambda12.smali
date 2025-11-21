.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl;

.field public final synthetic blacklist f$1:Landroid/window/SurfaceSyncGroup;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda12;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda12;->f$1:Landroid/window/SurfaceSyncGroup;

    return-void
.end method


# virtual methods
.method public final whitelist onTransactionCommitted()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda12;->f$0:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda12;->f$1:Landroid/window/SurfaceSyncGroup;

    invoke-static {v0, p0}, Landroid/view/ViewRootImpl;->$r8$lambda$TI2E4T7Zv26Wd7gyyvhUtR9KaLs(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method
