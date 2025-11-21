.class Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "GraphicsRendererPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;


# direct methods
.method public static synthetic blacklist $r8$lambda$GJt6ssel04L6jjpkuVWeAkvkhOI(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;->lambda$onReceive$2(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$deG9p8TmfsTHbuY1HLqQm6tbfz4(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;->lambda$onReceive$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ewn-Fi6Y4joMJ7snhKuc0gq5OoY(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;->lambda$onReceive$1()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;->this$0:Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onReceive$0(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;->this$0:Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;

    invoke-static {v0, p1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->-$$Nest$mloadScpmPolicy(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;Landroid/content/Context;)V

    iget-object p0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;->this$0:Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;

    invoke-static {p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->-$$Nest$mapplyPolicyToChecker(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;)V

    return-void
.end method

.method private synthetic blacklist lambda$onReceive$1()V
    .locals 0

    iget-object p0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;->this$0:Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;

    invoke-static {p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->-$$Nest$mtryScpmRegister(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;)V

    return-void
.end method

.method private synthetic blacklist lambda$onReceive$2(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;->this$0:Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;

    invoke-static {v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->-$$Nest$mtryScpmRegister(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;)V

    iget-object v0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;->this$0:Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;

    invoke-static {v0, p1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->-$$Nest$mloadScpmPolicy(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;Landroid/content/Context;)V

    iget-object p0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;->this$0:Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;

    invoke-static {p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->-$$Nest$mapplyPolicyToChecker(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.samsung.android.scpm.policy.UPDATE.hwui-skiagl-blocklist"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ACTION_UPDATE_RENDER_ENGINE"

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;->this$0:Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;

    invoke-static {p2}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->-$$Nest$fgetmExecutorService(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    new-instance v0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v0, "com.samsung.android.scpm.policy.CLEAR_DATA"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACTION_CLEAR_DATA"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;->this$0:Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;

    invoke-static {p1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->-$$Nest$fgetmExecutorService(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance p2, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;)V

    const-wide/16 v0, 0x3c

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v0, v1, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_1
    const-string v0, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ACTION_LAZY_BOOT_COMPLETED"

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;->this$0:Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;

    invoke-static {p2}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;->-$$Nest$fgetmExecutorService(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    new-instance v0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/rendererpolicy/GraphicsRendererPolicy$1;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
