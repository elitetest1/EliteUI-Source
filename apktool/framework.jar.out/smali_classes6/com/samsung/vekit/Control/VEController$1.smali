.class Lcom/samsung/vekit/Control/VEController$1;
.super Ljava/lang/Object;
.source "VEController.java"

# interfaces
.implements Lcom/samsung/vekit/Listener/AnimationStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/vekit/Control/VEController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/vekit/Control/VEController;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/vekit/Control/VEController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAnimationCanceled(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-static {p1}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onAnimationCanceled : UI Animations"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-virtual {p1}, Lcom/samsung/vekit/Control/VEController;->clearAnimations()V

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    return-void
.end method

.method public blacklist onAnimationFinished(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-static {p1}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onAnimationFinished : UI Animations"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-virtual {p1}, Lcom/samsung/vekit/Control/VEController;->cancelAnimation()V

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    return-void
.end method

.method public blacklist onAnimationStarted(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-static {p1}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onAnimationStarted : UI Animations"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    return-void
.end method

.method public blacklist onAnimationUpdated(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController$1;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-static {p0}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onAnimationUpdated : UI Animations"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
