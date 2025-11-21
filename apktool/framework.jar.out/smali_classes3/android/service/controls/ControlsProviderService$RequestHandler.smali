.class Landroid/service/controls/ControlsProviderService$RequestHandler;
.super Landroid/os/Handler;
.source "ControlsProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/ControlsProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# static fields
.field private static final blacklist MSG_ACTION:I = 0x3

.field private static final blacklist MSG_LOAD:I = 0x1

.field private static final blacklist MSG_LOAD_CONTROLS_PROVIDER_INFO:I = 0x65

.field private static final blacklist MSG_LOAD_SUGGESTED:I = 0x4

.field private static final blacklist MSG_SUBSCRIBE:I = 0x2


# instance fields
.field final synthetic blacklist this$0:Landroid/service/controls/ControlsProviderService;


# direct methods
.method public static synthetic blacklist $r8$lambda$31_wze8SG-2KzXpaBBIFEBY243Y(Landroid/service/controls/ControlsProviderService$RequestHandler;Landroid/service/controls/IControlsActionCallback;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/service/controls/ControlsProviderService$RequestHandler;->lambda$consumerFor$0(Landroid/service/controls/IControlsActionCallback;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/controls/ControlsProviderService;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private blacklist consumerFor(Ljava/lang/String;Landroid/service/controls/IControlsActionCallback;)Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/controls/IControlsActionCallback;",
            ")",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/service/controls/ControlsProviderService$RequestHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Landroid/service/controls/ControlsProviderService$RequestHandler$$ExternalSyntheticLambda0;-><init>(Landroid/service/controls/ControlsProviderService$RequestHandler;Landroid/service/controls/IControlsActionCallback;Ljava/lang/String;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$consumerFor$0(Landroid/service/controls/IControlsActionCallback;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/service/controls/actions/ControlAction;->isValidResponse(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not valid response result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ControlsProviderService"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {p0}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p1, p0, p2, p3}, Landroid/service/controls/IControlsActionCallback;->accept(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "ControlsProviderService"

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/controls/IControlsSubscriber;

    new-instance v3, Landroid/service/controls/ControlsProviderService$SubscriberProxy;

    iget-object v4, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v4}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, v1, v4, v0}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;-><init>(ZLandroid/os/IBinder;Landroid/service/controls/IControlsSubscriber;)V

    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-virtual {v0}, Landroid/service/controls/ControlsProviderService;->createPublisherForSuggested()Ljava/util/concurrent/Flow$Publisher;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "No publisher provided for suggested controls"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->onComplete()V

    goto/16 :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "createPublisherForSuggested mToken:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v4}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v3}, Ljava/util/concurrent/Flow$Publisher;->subscribe(Ljava/util/concurrent/Flow$Subscriber;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/controls/ControlsProviderService$ActionMessage;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "performControlAction mToken:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v3}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", ControlId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mControlId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    iget-object v2, v0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mControlId:Ljava/lang/String;

    iget-object v3, v0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mAction:Landroid/service/controls/actions/ControlAction;

    iget-object v4, v0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mControlId:Ljava/lang/String;

    iget-object v0, v0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mCb:Landroid/service/controls/IControlsActionCallback;

    invoke-direct {p0, v4, v0}, Landroid/service/controls/ControlsProviderService$RequestHandler;->consumerFor(Ljava/lang/String;Landroid/service/controls/IControlsActionCallback;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/service/controls/ControlsProviderService;->performControlAction(Ljava/lang/String;Landroid/service/controls/actions/ControlAction;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/controls/ControlsProviderService$SubscribeMessage;

    new-instance v1, Landroid/service/controls/ControlsProviderService$SubscriberProxy;

    iget-object v3, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v3}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, v0, Landroid/service/controls/ControlsProviderService$SubscribeMessage;->mSubscriber:Landroid/service/controls/IControlsSubscriber;

    const/4 v6, 0x0

    invoke-direct {v1, v3, v6, v4, v5}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;-><init>(Landroid/content/Context;ZLandroid/os/IBinder;Landroid/service/controls/IControlsSubscriber;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createPublisherFor mToken:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v4}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", ControlIds:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/service/controls/ControlsProviderService$SubscribeMessage;->mControlIds:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    iget-object v0, v0, Landroid/service/controls/ControlsProviderService$SubscribeMessage;->mControlIds:Ljava/util/List;

    invoke-virtual {v2, v0}, Landroid/service/controls/ControlsProviderService;->createPublisherFor(Ljava/util/List;)Ljava/util/concurrent/Flow$Publisher;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Flow$Publisher;->subscribe(Ljava/util/concurrent/Flow$Subscriber;)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/controls/IControlsSubscriber;

    new-instance v3, Landroid/service/controls/ControlsProviderService$SubscriberProxy;

    iget-object v4, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v4}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, v1, v4, v0}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;-><init>(ZLandroid/os/IBinder;Landroid/service/controls/IControlsSubscriber;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createPublisherForAllAvailable mToken:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v1}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-virtual {v0}, Landroid/service/controls/ControlsProviderService;->createPublisherForAllAvailable()Ljava/util/concurrent/Flow$Publisher;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/concurrent/Flow$Publisher;->subscribe(Ljava/util/concurrent/Flow$Subscriber;)V

    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/service/controls/IControlsProviderInfoSubscriber;

    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v0}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmControlsProviderInfoSupplier(Landroid/service/controls/ControlsProviderService;)Ljava/util/function/Supplier;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v0}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {p0}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmControlsProviderInfoSupplier(Landroid/service/controls/ControlsProviderService;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/controls/ControlsProviderInfo;

    invoke-interface {p1, v0, p0}, Landroid/service/controls/IControlsProviderInfoSubscriber;->onNext(Landroid/os/IBinder;Landroid/service/controls/ControlsProviderInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_5
    return-void
.end method
