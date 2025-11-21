.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/SurfaceControl$OnJankDataListener;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/SurfaceControl$OnJankDataListener;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;->f$0:Landroid/view/SurfaceControl$OnJankDataListener;

    iput-object p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;->f$0:Landroid/view/SurfaceControl$OnJankDataListener;

    iget-object p0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    invoke-static {v0, p0}, Landroid/view/ViewRootImpl;->lambda$registerOnJankDataListener$12(Landroid/view/SurfaceControl$OnJankDataListener;Ljava/util/List;)V

    return-void
.end method
