.class Landroid/service/quickaccesswallet/QuickAccessWalletService$1;
.super Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;
.source "QuickAccessWalletService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;


# direct methods
.method public static synthetic blacklist $r8$lambda$9e17Q0jrUnQZ2DWqCGo8-uWeZM8(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->lambda$onWalletCardsRequested$0(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9ipcwuf0P7iXuQz7JMdxlXr_5u8(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->lambda$registerWalletServiceEventListener$4(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FPuoAi57c8J8fYPrvmRhEqCRHpk(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->lambda$onGestureTargetActivityIntentRequested$3(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YBJjWHG2URHeF746CU6NxERBKHw(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->lambda$unregisterWalletServiceEventListener$5(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bWe8uy7_ce1okL5L69Se-aD2o4Q(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->lambda$onTargetActivityIntentRequested$2(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$q9oG19_S9axUJ5ANbNK1R1iQrDo(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->lambda$onWalletCardSelected$1(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-direct {p0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onGestureTargetActivityIntentRequested$3(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 0

    iget-object p0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$monGestureTargetActivityIntentRequestedInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method private synthetic blacklist lambda$onTargetActivityIntentRequested$2(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 0

    iget-object p0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$monTargetActivityIntentRequestedInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method private synthetic blacklist lambda$onWalletCardSelected$1(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
    .locals 0

    iget-object p0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-virtual {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    return-void
.end method

.method private synthetic blacklist lambda$onWalletCardsRequested$0(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 0

    iget-object p0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$monWalletCardsRequestedInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method private synthetic blacklist lambda$registerWalletServiceEventListener$4(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 0

    iget-object p0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$mregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method private synthetic blacklist lambda$unregisterWalletServiceEventListener$5(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .locals 0

    iget-object p0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$munregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    return-void
.end method


# virtual methods
.method public blacklist onGestureTargetActivityIntentRequested(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/Flags;->launchWalletOptionOnPowerDoubleTap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda2;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public blacklist onTargetActivityIntentRequested(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda3;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
    .locals 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda0;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda5;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onWalletDismissed()V
    .locals 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda4;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist registerWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .locals 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda1;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist unregisterWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .locals 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda6;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
