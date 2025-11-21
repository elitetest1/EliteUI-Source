.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameCommitCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl;

.field public final synthetic blacklist f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda18;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda18;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final blacklist onFrameCommit(Z)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda18;->f$0:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda18;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Landroid/view/ViewRootImpl;->$r8$lambda$hJns2m_v4-v566PumKnUXo0pyqc(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;Z)V

    return-void
.end method
