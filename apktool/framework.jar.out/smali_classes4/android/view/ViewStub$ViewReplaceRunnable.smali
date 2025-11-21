.class public Landroid/view/ViewStub$ViewReplaceRunnable;
.super Ljava/lang/Object;
.source "ViewStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewReplaceRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewStub;

.field public final greylist-max-o view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->this$0:Landroid/view/ViewStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->this$0:Landroid/view/ViewStub;

    iget-object p0, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, p0, v1}, Landroid/view/ViewStub;->-$$Nest$mreplaceSelfWithView(Landroid/view/ViewStub;Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method
