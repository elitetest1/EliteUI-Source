.class public final synthetic Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Map;

.field public final synthetic blacklist f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map;

    iput-object p2, p0, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda1;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map;

    iget-object p0, p0, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda1;->f$1:Ljava/util/Map;

    check-cast p1, Landroid/hardware/display/DisplayTopology$TreeNode;

    check-cast p2, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v0, p0, p1, p2}, Landroid/hardware/display/DisplayTopology;->lambda$normalize$0(Ljava/util/Map;Ljava/util/Map;Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result p0

    return p0
.end method
