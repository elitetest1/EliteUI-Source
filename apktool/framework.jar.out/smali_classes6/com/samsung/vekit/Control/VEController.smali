.class public Lcom/samsung/vekit/Control/VEController;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "VEController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;,
        Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;,
        Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;,
        Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;,
        Lcom/samsung/vekit/Control/VEController$ControllerCallbackMsg;
    }
.end annotation


# static fields
.field public static final blacklist UI_ANIMATION_MANAGER:I = -0x1

.field public static final blacklist VERSION:Ljava/lang/String; = "3.0.3"


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist analyzer:Lcom/samsung/vekit/Control/VEAnalyzer;

.field private blacklist animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

.field blacklist animationStatusListener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

.field private blacklist captureEventHandler:Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

.field blacklist captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

.field private blacklist controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

.field blacklist controllerStatusListener:Lcom/samsung/vekit/Listener/VEControllerStatusListener;

.field blacklist exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

.field blacklist isAnimating:Z

.field blacklist isPlaying:Z

.field blacklist playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

.field private blacklist portraitVideoEventHandler:Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;

.field blacklist renderTime:J

.field blacklist seekTime:J

.field blacklist viewMode:Lcom/samsung/vekit/Common/Type/ViewMode;


# direct methods
.method public constructor blacklist <init>()V
    .locals 4

    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->CONTROLLER:Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "Controller"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    iput-boolean v3, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    iput-boolean v3, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v1, "[VEKit] Version : 3.0.3"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    new-instance v1, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    new-instance v1, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    new-instance v1, Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

    invoke-direct {v1, p0, v0}, Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->captureEventHandler:Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

    new-instance v1, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->portraitVideoEventHandler:Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;

    new-instance v1, Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v1}, Lcom/samsung/vekit/Common/VEContext;-><init>()V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    new-instance v1, Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v3, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v1, v3, v0}, Lcom/samsung/vekit/Control/VEAnalyzer;-><init>(Lcom/samsung/vekit/Common/VEContext;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->analyzer:Lcom/samsung/vekit/Control/VEAnalyzer;

    iput-object v2, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    new-instance v0, Lcom/samsung/vekit/Control/VEController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Control/VEController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/vekit/Control/VEController;)V

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerStatusListener:Lcom/samsung/vekit/Listener/VEControllerStatusListener;

    iput-object v2, p0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    new-instance v0, Lcom/samsung/vekit/Control/VEController$1;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Control/VEController$1;-><init>(Lcom/samsung/vekit/Control/VEController;)V

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->animationStatusListener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$100(Lcom/samsung/vekit/Control/VEController;IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/vekit/Control/VEController;->handleError(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/samsung/vekit/Control/VEController;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/vekit/Control/VEController;->handleItemError(III)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/samsung/vekit/Control/VEController;ILjava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/vekit/Control/VEController;->handleAudioPcmUpdate(ILjava/util/HashMap;)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/samsung/vekit/Control/VEController;)Lcom/samsung/vekit/Common/VEContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    return-object p0
.end method

.method private blacklist handleAudioPcmUpdate(ILjava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/PcmInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getItemManager()Lcom/samsung/vekit/Manager/ItemManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Manager/ItemManager;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/vekit/Item/Item;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string p1, "Item is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string p1, "Data is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/vekit/Item/Item;->getPcmInfoListener()Lcom/samsung/vekit/Listener/PcmInfoListener;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string p1, "listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-interface {p1, p2}, Lcom/samsung/vekit/Listener/PcmInfoListener;->onUpdate(Ljava/util/HashMap;)V

    return-void
.end method

.method private blacklist handleError(IILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleExecuteError with errorType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extension : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extension2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/vekit/Common/Type/ErrorType;->values()[Lcom/samsung/vekit/Common/Type/ErrorType;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/vekit/Control/VEController$2;->$SwitchMap$com$samsung$vekit$Common$Type$ErrorType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ViewMode;->PREVIEW:Lcom/samsung/vekit/Common/Type/ViewMode;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/vekit/Listener/PlayerStatusListener;->onError(Lcom/samsung/vekit/Common/Type/ErrorType;J)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/vekit/Listener/ExportStatusListener;->onError(Lcom/samsung/vekit/Common/Type/ErrorType;J)V

    return-void

    :cond_1
    sget-object p1, Lcom/samsung/vekit/Common/Type/ViewMode;->PREVIEW:Lcom/samsung/vekit/Common/Type/ViewMode;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result p1

    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/vekit/Control/VEController;->pause()V

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    iget-wide p2, p0, Lcom/samsung/vekit/Control/VEController;->seekTime:J

    invoke-interface {p1, p2, p3}, Lcom/samsung/vekit/Listener/PlayerStatusListener;->onCodecReclaim(J)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/vekit/Control/VEController;->pauseExport()J

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    iget-wide p2, p0, Lcom/samsung/vekit/Control/VEController;->renderTime:J

    invoke-interface {p1, p2, p3}, Lcom/samsung/vekit/Listener/ExportStatusListener;->onCodecReclaim(J)V

    :cond_3
    return-void
.end method

.method private blacklist handleItemError(III)V
    .locals 3

    invoke-static {}, Lcom/samsung/vekit/Common/Type/ElementType;->values()[Lcom/samsung/vekit/Common/Type/ElementType;

    move-result-object v0

    aget-object v0, v0, p2

    sget-object v1, Lcom/samsung/vekit/Control/VEController$2;->$SwitchMap$com$samsung$vekit$Common$Type$ElementType:[I

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Type/ElementType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p3, 0x2

    if-eq v0, p3, :cond_0

    const/4 p3, 0x3

    if-eq v0, p3, :cond_0

    const/4 p3, 0x4

    if-eq v0, p3, :cond_0

    const/4 p3, 0x5

    if-eq v0, p3, :cond_0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Invalid elementType : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported listener error handling ElementType : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", errorType : "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getItemManager()Lcom/samsung/vekit/Manager/ItemManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/vekit/Manager/ItemManager;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Listener/ItemStatusListener;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/vekit/Common/Type/ItemErrorType;->values()[Lcom/samsung/vekit/Common/Type/ItemErrorType;

    move-result-object v1

    aget-object p1, v1, p1

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleItemError itemErrorType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", elementType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", elementId : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/ItemStatusListener;->onError(Lcom/samsung/vekit/Common/Type/ItemErrorType;)V

    :cond_2
    return-void
.end method

.method private blacklist onAnalyzeEvent(IIII)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->analyzer:Lcom/samsung/vekit/Control/VEAnalyzer;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Control/VEAnalyzer;->onEvent(IIII)V

    return-void
.end method

.method private blacklist onAnimationEvent(IIIF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    if-eqz v0, :cond_0

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private blacklist onAnimationEvent(III[F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private blacklist onControllerEvent(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    if-eqz v0, :cond_0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private blacklist onControllerEvent(IIIJ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    if-eqz v0, :cond_0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private blacklist onControllerEvent(IIILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private blacklist onPortraitVideoEvent(IIILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPortraitVideoEvent, status : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->portraitVideoEventHandler:Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->portraitVideoEventHandler:Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist animate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->animate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    return-void
.end method

.method public blacklist attachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/VEContext;->getAnimationManager()Lcom/samsung/vekit/Manager/AnimationManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Manager/AnimationManager;->attachAnimation(Lcom/samsung/vekit/Animation/Animation;)V

    return-void
.end method

.method public blacklist cancelAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->cancelAnimation()V

    return-void
.end method

.method public blacklist captureAnimatedFrame(Lcom/samsung/vekit/Item/ImageItem;IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/vekit/Task/CaptureFrameThread;->addRequest(Lcom/samsung/vekit/Item/ImageItem;IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    :cond_0
    return-void
.end method

.method public blacklist captureLatestFrame(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/vekit/Task/CaptureFrameThread;->addRequest(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    :cond_0
    return-void
.end method

.method public blacklist captureSuperHDRFrame(IIIILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p6}, Lcom/samsung/vekit/Task/CaptureFrameThread;->addRequest(IIIILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    :cond_0
    return-void
.end method

.method public blacklist captureSuperHDRFrame(Lcom/samsung/vekit/Item/Item;IILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/vekit/Task/CaptureFrameThread;->addRequest(Lcom/samsung/vekit/Item/Item;IILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    :cond_0
    return-void
.end method

.method public blacklist clearAnimations()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/VEContext;->getAnimationManager()Lcom/samsung/vekit/Manager/AnimationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/vekit/Manager/AnimationManager;->clearAnimations()V

    return-void
.end method

.method public blacklist create()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->createFramework(Lcom/samsung/vekit/Control/VEController;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void
.end method

.method public blacklist detachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/VEContext;->getAnimationManager()Lcom/samsung/vekit/Manager/AnimationManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Manager/AnimationManager;->detachAnimation(Lcom/samsung/vekit/Animation/Animation;)V

    return-void
.end method

.method public blacklist finalizeController()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->finalizeFramework()V

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameThread;->stopThread()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    :cond_0
    return-void
.end method

.method public blacklist getAnalyzer()Lcom/samsung/vekit/Control/VEAnalyzer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->analyzer:Lcom/samsung/vekit/Control/VEAnalyzer;

    return-object p0
.end method

.method public blacklist getCurrentMediaPosition()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->getCurrentMediaPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->seekTime:J

    return-wide v0
.end method

.method public blacklist getExportPosition()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->getExportPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->renderTime:J

    return-wide v0
.end method

.method public blacklist getState()Lcom/samsung/vekit/Common/State/VEKitState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/VEContext;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getVEKitVersion()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v0, "getVEKitVersion version : 3.0.3"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "3.0.3"

    return-object p0
.end method

.method public blacklist initializeController(Landroid/view/Surface;IIIILcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FrameworkType;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->initializeFramework(Landroid/view/Surface;IIIILcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FrameworkType;)V

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/VEContext;->initialize()V

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p1, v8}, Lcom/samsung/vekit/Common/VEContext;->setFrameworkType(Lcom/samsung/vekit/Common/Type/FrameworkType;)V

    iput-object p6, p0, Lcom/samsung/vekit/Control/VEController;->viewMode:Lcom/samsung/vekit/Common/Type/ViewMode;

    sget-object p1, Lcom/samsung/vekit/Common/Type/ViewMode;->PREVIEW:Lcom/samsung/vekit/Common/Type/ViewMode;

    if-ne p6, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/vekit/Task/CaptureFrameThread;

    iget-object p2, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    iget-object p3, p0, Lcom/samsung/vekit/Control/VEController;->captureEventHandler:Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

    invoke-direct {p1, p2, p3}, Lcom/samsung/vekit/Task/CaptureFrameThread;-><init>(Lcom/samsung/vekit/Common/VEContext;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    :cond_0
    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    invoke-virtual {p0}, Lcom/samsung/vekit/Task/CaptureFrameThread;->startThread()V

    :cond_1
    return-void
.end method

.method public blacklist isAnimating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    return p0
.end method

.method public blacklist isPlaying()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    return p0
.end method

.method synthetic blacklist lambda$new$0$com-samsung-vekit-Control-VEController(Lcom/samsung/vekit/Common/Type/EventType;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onEvent : EventType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/EventType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist pause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->pause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    invoke-virtual {p0}, Lcom/samsung/vekit/Control/VEController;->getCurrentMediaPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->seekTime:J

    return-void
.end method

.method public blacklist pauseExport()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->pauseExport()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->renderTime:J

    return-wide v0
.end method

.method public blacklist play()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Layer/LayerGroup;->calculateTotalDuration()J

    invoke-virtual {v0}, Lcom/samsung/vekit/Layer/LayerGroup;->update()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->play()V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist release()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->releaseFramework()V

    return-void
.end method

.method public blacklist resizeGraphicBuffers(II)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->resizeGraphicBuffers(II)Z

    move-result p0

    return p0
.end method

.method public blacklist resumeExport(J)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->resumeExport(J)V

    return-void
.end method

.method public blacklist seekTo(JLcom/samsung/vekit/Common/Type/SeekType;)Lcom/samsung/vekit/Control/VEController;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "show : invalid state [playing]"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    iput-wide p1, p0, Lcom/samsung/vekit/Control/VEController;->seekTime:J

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->seekTo(JLcom/samsung/vekit/Common/Type/SeekType;)V

    return-object p0
.end method

.method public blacklist setExportInfo(Lcom/samsung/vekit/Common/Object/ExportInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setExportInfo  width : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/ExportInfo;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/ExportInfo;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/ExportInfo;->getFd()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->setExportInfo(Lcom/samsung/vekit/Common/Object/ExportInfo;)V

    return-void
.end method

.method public blacklist setExportstatuslistener(Lcom/samsung/vekit/Listener/ExportStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    return-void
.end method

.method public blacklist setPlayerStatusListener(Lcom/samsung/vekit/Listener/PlayerStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    return-void
.end method

.method public blacklist setPreviewInfo(Lcom/samsung/vekit/Common/Object/PreviewInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setPreviewInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->setPreviewInfo(Lcom/samsung/vekit/Common/Object/PreviewInfo;)V

    return-void
.end method

.method public blacklist show()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "show : invalid state [playing]"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->show()V

    return-void
.end method

.method public blacklist stop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    return-void
.end method

.method public blacklist update()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/vekit/Common/Object/Element;->update()V

    return-void
.end method

.method public blacklist updateViewport(Lcom/samsung/vekit/Common/Object/Vector4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector4<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector4;->getX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector4;->getY()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector4;->getZ()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector4;->getW()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->updateViewport(IIII)V

    return-void
.end method
