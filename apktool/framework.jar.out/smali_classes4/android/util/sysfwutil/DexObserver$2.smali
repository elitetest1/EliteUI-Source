.class Landroid/util/sysfwutil/DexObserver$2;
.super Ljava/lang/Thread;
.source "DexObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/sysfwutil/DexObserver;->onUpdateDexMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/util/sysfwutil/DexObserver;


# direct methods
.method constructor blacklist <init>(Landroid/util/sysfwutil/DexObserver;Ljava/lang/String;)V
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

    iput-object p1, p0, Landroid/util/sysfwutil/DexObserver$2;->this$0:Landroid/util/sysfwutil/DexObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    iget-object p0, p0, Landroid/util/sysfwutil/DexObserver$2;->this$0:Landroid/util/sysfwutil/DexObserver;

    invoke-static {p0}, Landroid/util/sysfwutil/DexObserver;->-$$Nest$fgetmListeners(Landroid/util/sysfwutil/DexObserver;)Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/BlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/sysfwutil/DexConnectionListener;

    invoke-interface {v0}, Landroid/util/sysfwutil/DexConnectionListener;->onConnect()V

    goto :goto_0

    :cond_0
    return-void
.end method
