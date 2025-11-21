.class Landroid/printservice/recommendation/RecommendationService$MyHandler;
.super Landroid/os/Handler;
.source "RecommendationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/recommendation/RecommendationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field static final greylist-max-o MSG_CONNECT:I = 0x1

.field static final greylist-max-o MSG_DISCONNECT:I = 0x2

.field static final greylist-max-o MSG_UPDATE:I = 0x3


# instance fields
.field final synthetic blacklist this$0:Landroid/printservice/recommendation/RecommendationService;


# direct methods
.method constructor blacklist <init>(Landroid/printservice/recommendation/RecommendationService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-static {v0}, Landroid/printservice/recommendation/RecommendationService;->-$$Nest$fgetmCallbacks(Landroid/printservice/recommendation/RecommendationService;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-static {p0}, Landroid/printservice/recommendation/RecommendationService;->-$$Nest$fgetmCallbacks(Landroid/printservice/recommendation/RecommendationService;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p0, p1}, Landroid/printservice/recommendation/IRecommendationServiceCallbacks;->onRecommendationsUpdated(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "PrintServiceRecS"

    const-string v0, "Could not update recommended services"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object p1, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-virtual {p1}, Landroid/printservice/recommendation/RecommendationService;->onDisconnected()V

    iget-object p0, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/printservice/recommendation/RecommendationService;->-$$Nest$fputmCallbacks(Landroid/printservice/recommendation/RecommendationService;Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V

    return-void

    :cond_3
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    invoke-static {v0, p1}, Landroid/printservice/recommendation/RecommendationService;->-$$Nest$fputmCallbacks(Landroid/printservice/recommendation/RecommendationService;Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V

    iget-object p0, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-virtual {p0}, Landroid/printservice/recommendation/RecommendationService;->onConnected()V

    return-void
.end method
