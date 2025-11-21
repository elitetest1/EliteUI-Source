.class Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;
.super Landroid/companion/IAssociationRequestCallback$Stub;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AssociationRequestCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/companion/CompanionDeviceManager$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method private constructor blacklist <init>(Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$Callback;)V
    .locals 0

    invoke-direct {p0}, Landroid/companion/IAssociationRequestCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$Callback;Landroid/companion/CompanionDeviceManager-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;-><init>(Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$Callback;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;)V
    .locals 0

    invoke-direct {p0}, Landroid/companion/IAssociationRequestCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;Landroid/companion/CompanionDeviceManager-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;)V

    return-void
.end method

.method private blacklist execute(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "TT;TU;>;TT;TU;)V"
        }
    .end annotation

    iget-object p0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz p0, :cond_0

    new-instance v0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private blacklist execute(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    new-instance p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    new-instance v0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method static synthetic blacklist lambda$execute$0(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$execute$1(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$execute$2(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onAssociationCreated(Landroid/companion/AssociationInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/companion/CompanionDeviceManager$Callback;)V

    invoke-direct {p0, v1, p1}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->execute(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAssociationPending(Landroid/app/PendingIntent;)V
    .locals 2

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda4;-><init>(Landroid/companion/CompanionDeviceManager$Callback;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->execute(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onFailure(ILjava/lang/CharSequence;)V
    .locals 2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->associationFailureCode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda5;-><init>(Landroid/companion/CompanionDeviceManager$Callback;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->execute(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda6;-><init>(Landroid/companion/CompanionDeviceManager$Callback;)V

    invoke-direct {p0, v0, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->execute(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
