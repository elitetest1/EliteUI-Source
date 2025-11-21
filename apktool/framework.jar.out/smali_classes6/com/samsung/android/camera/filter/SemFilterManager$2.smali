.class Lcom/samsung/android/camera/filter/SemFilterManager$2;
.super Landroid/database/ContentObserver;
.source "SemFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/filter/SemFilterManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/camera/filter/SemFilterManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V
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

    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager$2;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager$2;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    invoke-static {p1}, Lcom/samsung/android/camera/filter/SemFilterManager;->-$$Nest$fgetmCallbackHandler(Lcom/samsung/android/camera/filter/SemFilterManager;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager$2;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    invoke-static {p1}, Lcom/samsung/android/camera/filter/SemFilterManager;->-$$Nest$fgetmCallbackHandler(Lcom/samsung/android/camera/filter/SemFilterManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterManager$2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/filter/SemFilterManager$2$1;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager$2;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    iget-object p1, p1, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$2;->this$0:Lcom/samsung/android/camera/filter/SemFilterManager;

    iget-object p0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;->onFilterChanged(I)V

    :cond_1
    return-void
.end method
