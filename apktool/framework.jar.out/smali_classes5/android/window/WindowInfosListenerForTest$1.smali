.class Landroid/window/WindowInfosListenerForTest$1;
.super Landroid/window/WindowInfosListener;
.source "WindowInfosListenerForTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/window/WindowInfosListenerForTest;->addWindowInfosListener(Ljava/util/function/BiConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$calledWithInitialState:Ljava/util/concurrent/CountDownLatch;

.field final synthetic blacklist val$consumer:Ljava/util/function/BiConsumer;


# direct methods
.method constructor blacklist <init>(Landroid/window/WindowInfosListenerForTest;Ljava/util/concurrent/CountDownLatch;Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p2, p0, Landroid/window/WindowInfosListenerForTest$1;->val$calledWithInitialState:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Landroid/window/WindowInfosListenerForTest$1;->val$consumer:Ljava/util/function/BiConsumer;

    invoke-direct {p0}, Landroid/window/WindowInfosListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onWindowInfosChanged([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/window/WindowInfosListenerForTest$1;->val$calledWithInitialState:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "WindowInfosListenerForTest"

    const-string v1, "Exception thrown while waiting for listener to be called with initial state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p1, p2}, Landroid/window/WindowInfosListenerForTest;->-$$Nest$smbuildParams([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)Landroid/util/Pair;

    move-result-object p1

    iget-object p0, p0, Landroid/window/WindowInfosListenerForTest$1;->val$consumer:Ljava/util/function/BiConsumer;

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
