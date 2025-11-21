.class Landroid/widget/EdgeEffect$2;
.super Ljava/lang/Object;
.source "EdgeEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/EdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/EdgeEffect;


# direct methods
.method constructor blacklist <init>(Landroid/widget/EdgeEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/EdgeEffect$2;->this$0:Landroid/widget/EdgeEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/widget/EdgeEffect$2;->this$0:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Landroid/widget/EdgeEffect;->-$$Nest$fgetmTempDeltaDistance(Landroid/widget/EdgeEffect;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/EdgeEffect$2;->this$0:Landroid/widget/EdgeEffect;

    invoke-static {v2}, Landroid/widget/EdgeEffect;->-$$Nest$fgetmTempDisplacement(Landroid/widget/EdgeEffect;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iget-object p0, p0, Landroid/widget/EdgeEffect$2;->this$0:Landroid/widget/EdgeEffect;

    invoke-static {p0}, Landroid/widget/EdgeEffect;->-$$Nest$fgetmHandler(Landroid/widget/EdgeEffect;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    const-wide/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
