.class public abstract Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
.super Ljava/lang/Object;
.source "QualifiedNetworksService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/QualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "NetworkAvailabilityProvider"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

.field private blacklist mQualifiedNetworkTypesList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private final blacklist mSlotIndex:I

.field final synthetic blacklist this$0:Landroid/telephony/data/QualifiedNetworksService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monReconnectQualifiedNetworkType(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->onReconnectQualifiedNetworkType(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monRequestNetworkValidation(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->onRequestNetworkValidation(Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monUpdateHandoverEnabled(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->onUpdateHandoverEnabled(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monUpdateQualifiedNetworkTypes(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;I[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->onUpdateQualifiedNetworkTypes(I[I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForQualifiedNetworkTypesChanged(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;Landroid/telephony/data/IQualifiedNetworksServiceCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->registerForQualifiedNetworkTypesChanged(Landroid/telephony/data/IQualifiedNetworksServiceCallback;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/data/QualifiedNetworksService;I)V
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

    iput-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mQualifiedNetworkTypesList:Landroid/util/SparseArray;

    iput p2, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mSlotIndex:I

    return-void
.end method

.method static synthetic blacklist lambda$updateQualifiedNetworkTypes$0(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private blacklist onReconnectQualifiedNetworkType(II)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/telephony/data/IQualifiedNetworksServiceCallback;->onReconnectQualifiedNetworkType(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to call onReconnectQualifiedNetworkType. "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist onRequestNetworkValidation(Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    const-string/jumbo v1, "onRequestNetworkValidation"

    invoke-static {v0, v1}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mlog(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    iget v1, p1, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;->mNetworkCapability:I

    iget-object v2, p1, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;->mCallback:Lcom/android/internal/telephony/IIntegerConsumer;

    invoke-interface {v0, v1, v2}, Landroid/telephony/data/IQualifiedNetworksServiceCallback;->onNetworkValidationRequested(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to call onRequestNetworkValidation. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    iget-object p0, p1, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;->mCallback:Lcom/android/internal/telephony/IIntegerConsumer;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-static {p1}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist onUpdateHandoverEnabled(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/data/IQualifiedNetworksServiceCallback;->onHandoverEnabledChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to call onHandoverEnabledChanged. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist onUpdateQualifiedNetworkTypes(I[I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mQualifiedNetworkTypesList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/telephony/data/IQualifiedNetworksServiceCallback;->onQualifiedNetworkTypesChanged(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to call onQualifiedNetworksChanged. "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist registerForQualifiedNetworkTypesChanged(Landroid/telephony/data/IQualifiedNetworksServiceCallback;)V
    .locals 4

    iput-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mQualifiedNetworkTypesList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mQualifiedNetworkTypesList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mQualifiedNetworkTypesList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-interface {v0, v1, v2}, Landroid/telephony/data/IQualifiedNetworksServiceCallback;->onQualifiedNetworkTypesChanged(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to call onQualifiedNetworksChanged. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api close()V
.end method

.method public final whitelist getSlotIndex()I
    .locals 0

    iget p0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mSlotIndex:I

    return p0
.end method

.method public final blacklist reconnectQualifiedNetworkType(II)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v0}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmHandler(Landroid/telephony/data/QualifiedNetworksService;)Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v0

    iget p0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mSlotIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0, p1, p2}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public whitelist reportEmergencyDataNetworkPreferredTransportChanged(I)V
    .locals 2

    invoke-static {}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reportEmergencyDataNetworkPreferredTransportChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist reportThrottleStatusChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/ThrottleStatus;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reportThrottleStatusChanged: statuses size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist requestNetworkValidation(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "resultCodeCallback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$1;

    invoke-direct {v0, p0, p2, p3}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$1;-><init>(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-object p2, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {p2}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmHandler(Landroid/telephony/data/QualifiedNetworksService;)Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object p2

    iget p0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mSlotIndex:I

    new-instance p3, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;

    const/4 v1, 0x0

    invoke-direct {p3, p1, v0, v1}, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;-><init>(ILcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/data/QualifiedNetworksService-IA;)V

    const/4 p1, 0x7

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p0, v0, p3}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final blacklist updateHandoverEnabled(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v0}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmHandler(Landroid/telephony/data/QualifiedNetworksService;)Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v0

    const/16 v1, 0x9

    iget p0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mSlotIndex:I

    invoke-virtual {v0, v1, p0, p1}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final whitelist updateQualifiedNetworkTypes(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p2

    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v0}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmHandler(Landroid/telephony/data/QualifiedNetworksService;)Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v0

    const/4 v1, 0x4

    iget p0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mSlotIndex:I

    invoke-virtual {v0, v1, p0, p1, p2}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
