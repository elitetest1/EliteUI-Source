.class Lcom/android/internal/app/AbstractResolverComparator$1;
.super Landroid/os/Handler;
.source "AbstractResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AbstractResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/AbstractResolverComparator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/Looper;)V
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

    iput-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "AbstractResolverComp"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    const-string p1, "RANKER_RESULT_TIMEOUT; unbinding services"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    iget-object p1, p1, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {p1}, Lcom/android/internal/app/AbstractResolverComparator;->afterCompute()V

    iget-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-static {p1}, Lcom/android/internal/app/AbstractResolverComparator;->-$$Nest$fgetmChooserActivityLogger(Lcom/android/internal/app/AbstractResolverComparator;)Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-static {p0}, Lcom/android/internal/app/AbstractResolverComparator;->-$$Nest$fgetmChooserActivityLogger(Lcom/android/internal/app/AbstractResolverComparator;)Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetAppShareRankingTimeout()V

    return-void

    :cond_1
    const-string v0, "RANKER_SERVICE_RESULT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    iget-object v0, v0, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->handleResultMessage(Landroid/os/Message;)V

    iget-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    iget-object p1, p1, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {p0}, Lcom/android/internal/app/AbstractResolverComparator;->afterCompute()V

    :cond_2
    return-void
.end method
