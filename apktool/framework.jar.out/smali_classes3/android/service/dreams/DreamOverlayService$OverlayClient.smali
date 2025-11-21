.class Landroid/service/dreams/DreamOverlayService$OverlayClient;
.super Landroid/service/dreams/IDreamOverlayClient$Stub;
.source "DreamOverlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamOverlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayClient"
.end annotation


# instance fields
.field private blacklist mDreamComponent:Landroid/content/ComponentName;

.field blacklist mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

.field private blacklist mIsPreview:Z

.field private final blacklist mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamOverlayService;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mShowComplications:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$1uIjb1iUnLzUD01_CdVaDy-WEtA(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/service/dreams/DreamOverlayService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->lambda$endDream$2(Landroid/service/dreams/DreamOverlayService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8F3_4_F93lM18N49iFgh7-BtiRQ(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;Landroid/service/dreams/DreamOverlayService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->lambda$startDream$0(Landroid/view/WindowManager$LayoutParams;Landroid/service/dreams/DreamOverlayService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Yi-XjfKpyGogsH5uyRFJYon192U(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/service/dreams/DreamOverlayService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->lambda$comeToFront$3(Landroid/service/dreams/DreamOverlayService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$u5MBh8NY8HtjzTJlMIdlaVkDPRY(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/service/dreams/DreamOverlayService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->lambda$wakeUp$1(Landroid/service/dreams/DreamOverlayService;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetComponent(Landroid/service/dreams/DreamOverlayService$OverlayClient;)Landroid/content/ComponentName;
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misDreamInPreviewMode(Landroid/service/dreams/DreamOverlayService$OverlayClient;)Z
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->isDreamInPreviewMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mredirectWake(Landroid/service/dreams/DreamOverlayService$OverlayClient;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->redirectWake(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestExit(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->requestExit()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldShowComplications(Landroid/service/dreams/DreamOverlayService$OverlayClient;)Z
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->shouldShowComplications()Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamOverlayService;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/service/dreams/IDreamOverlayClient$Stub;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mService:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private blacklist applyToDream(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/DreamOverlayService;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/dreams/DreamOverlayService;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private blacklist getComponent()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mDreamComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method private blacklist isDreamInPreviewMode()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mIsPreview:Z

    return p0
.end method

.method private synthetic blacklist lambda$comeToFront$3(Landroid/service/dreams/DreamOverlayService;)V
    .locals 0

    invoke-static {p1, p0}, Landroid/service/dreams/DreamOverlayService;->-$$Nest$mcomeToFront(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method private synthetic blacklist lambda$endDream$2(Landroid/service/dreams/DreamOverlayService;)V
    .locals 0

    invoke-static {p1, p0}, Landroid/service/dreams/DreamOverlayService;->-$$Nest$mendDream(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method private synthetic blacklist lambda$startDream$0(Landroid/view/WindowManager$LayoutParams;Landroid/service/dreams/DreamOverlayService;)V
    .locals 0

    invoke-static {p2, p0, p1}, Landroid/service/dreams/DreamOverlayService;->-$$Nest$mstartDream(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private synthetic blacklist lambda$wakeUp$1(Landroid/service/dreams/DreamOverlayService;)V
    .locals 0

    invoke-static {p1, p0}, Landroid/service/dreams/DreamOverlayService;->-$$Nest$mwakeUp(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method private blacklist redirectWake(Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    invoke-interface {p0, p1}, Landroid/service/dreams/IDreamOverlayCallback;->onRedirectWake(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "DreamOverlayService"

    const-string v0, "could not request redirect wake"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist requestExit()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    invoke-interface {p0}, Landroid/service/dreams/IDreamOverlayCallback;->onExitRequested()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not request exit:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DreamOverlayService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist shouldShowComplications()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mShowComplications:Z

    return p0
.end method


# virtual methods
.method public blacklist comeToFront()V
    .locals 1

    new-instance v0, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda3;-><init>(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->applyToDream(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist endDream()V
    .locals 1

    new-instance v0, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda1;-><init>(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->applyToDream(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onWakeRequested()V
    .locals 1

    invoke-static {}, Landroid/service/dreams/Flags;->dreamWakeRedirect()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->applyToDream(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public blacklist startDream(Landroid/view/WindowManager$LayoutParams;Landroid/service/dreams/IDreamOverlayCallback;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p3

    iput-object p3, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mDreamComponent:Landroid/content/ComponentName;

    iput-boolean p5, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mShowComplications:Z

    iput-boolean p4, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mIsPreview:Z

    iput-object p2, p0, Landroid/service/dreams/DreamOverlayService$OverlayClient;->mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    new-instance p2, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda2;-><init>(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0, p2}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->applyToDream(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist wakeUp()V
    .locals 1

    new-instance v0, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamOverlayService$OverlayClient$$ExternalSyntheticLambda4;-><init>(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->applyToDream(Ljava/util/function/Consumer;)V

    return-void
.end method
