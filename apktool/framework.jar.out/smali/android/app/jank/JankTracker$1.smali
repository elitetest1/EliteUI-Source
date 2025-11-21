.class Landroid/app/jank/JankTracker$1;
.super Ljava/lang/Object;
.source "JankTracker.java"

# interfaces
.implements Landroid/view/SurfaceControl$OnJankDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/jank/JankTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/jank/JankTracker;


# direct methods
.method constructor blacklist <init>(Landroid/app/jank/JankTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/jank/JankTracker$1;->this$0:Landroid/app/jank/JankTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onJankDataAvailable(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/SurfaceControl$JankData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/jank/JankTracker$1;->this$0:Landroid/app/jank/JankTracker;

    invoke-static {v0}, Landroid/app/jank/JankTracker;->-$$Nest$fgetmJankDataProcessor(Landroid/app/jank/JankTracker;)Landroid/app/jank/JankDataProcessor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/jank/JankTracker$1;->this$0:Landroid/app/jank/JankTracker;

    invoke-static {v0}, Landroid/app/jank/JankTracker;->-$$Nest$fgetmJankDataProcessor(Landroid/app/jank/JankTracker;)Landroid/app/jank/JankDataProcessor;

    move-result-object v0

    iget-object v1, p0, Landroid/app/jank/JankTracker$1;->this$0:Landroid/app/jank/JankTracker;

    invoke-static {v1}, Landroid/app/jank/JankTracker;->-$$Nest$fgetmActivityName(Landroid/app/jank/JankTracker;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Landroid/app/jank/JankTracker$1;->this$0:Landroid/app/jank/JankTracker;

    invoke-static {p0}, Landroid/app/jank/JankTracker;->-$$Nest$fgetmAppUid(Landroid/app/jank/JankTracker;)I

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/app/jank/JankDataProcessor;->processJankData(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method
