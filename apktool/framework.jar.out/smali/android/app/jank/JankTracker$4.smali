.class Landroid/app/jank/JankTracker$4;
.super Ljava/lang/Object;
.source "JankTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/jank/JankTracker;->registerForJankData()V
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

    iput-object p1, p0, Landroid/app/jank/JankTracker$4;->this$0:Landroid/app/jank/JankTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 0

    iget-object p0, p0, Landroid/app/jank/JankTracker$4;->this$0:Landroid/app/jank/JankTracker;

    invoke-static {p0}, Landroid/app/jank/JankTracker;->-$$Nest$mregisterJankDataListener(Landroid/app/jank/JankTracker;)V

    return-void
.end method
