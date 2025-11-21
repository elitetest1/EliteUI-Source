.class public final synthetic Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/om/OverlayManagerExt;

.field public final synthetic blacklist f$1:Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/om/OverlayManagerExt;Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda7;->f$0:Landroid/content/om/OverlayManagerExt;

    iput-object p2, p0, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda7;->f$1:Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda7;->f$0:Landroid/content/om/OverlayManagerExt;

    iget-object p0, p0, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda7;->f$1:Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/content/om/OverlayManagerExt;->$r8$lambda$Nv8iGNIYigGOOC9ElW9mJDCQXOs(Landroid/content/om/OverlayManagerExt;Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;Ljava/lang/String;)Landroid/content/om/OverlayInfoExt;

    move-result-object p0

    return-object p0
.end method
