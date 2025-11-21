.class Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemAddDeleteListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onAnimationCancel #3"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    iget-object p1, p1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {p1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmHandler(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmAniTimeoutRunnable(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    iget-object p1, p1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object p1, p1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    iget-object p1, p1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {p1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V

    iget-object p0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    iget-object p0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onAnimationEnd #3"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    iget-object p1, p1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {p1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmHandler(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmAniTimeoutRunnable(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    iget-object p1, p1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object p1, p1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    iget-object p1, p1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {p1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V

    iget-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    iget-object p1, p1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {p1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    iget-object p1, p1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {p1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    iget-object p0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onAnimationEnd(Z)V

    :cond_0
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onAnimationStart #3"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    iget-object p1, p1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {p1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->isPressed()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    iget-object p1, p1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {p1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setPressed(Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    iget-object p1, p1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {p1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    iget-object p1, p1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {p1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;

    iget-object p0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onAnimationStart(Z)V

    :cond_1
    return-void
.end method
