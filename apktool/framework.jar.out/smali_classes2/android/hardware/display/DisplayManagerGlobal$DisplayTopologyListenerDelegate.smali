.class final Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;
.super Ljava/lang/Object;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayTopologyListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$d_kmZBm9DHkbfoTYEWz_BtH_doY(Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;Landroid/hardware/display/DisplayTopology;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->lambda$onTopologyChanged$0(Landroid/hardware/display/DisplayTopology;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;)Ljava/util/function/Consumer;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->mListener:Ljava/util/function/Consumer;

    return-object p0
.end method

.method constructor blacklist <init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->mListener:Ljava/util/function/Consumer;

    iput-object p3, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private synthetic blacklist lambda$onTopologyChanged$0(Landroid/hardware/display/DisplayTopology;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->mListener:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method blacklist onTopologyChanged(Landroid/hardware/display/DisplayTopology;)V
    .locals 2

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$smextraLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending topology update: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;Landroid/hardware/display/DisplayTopology;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayTopologyListener {packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
