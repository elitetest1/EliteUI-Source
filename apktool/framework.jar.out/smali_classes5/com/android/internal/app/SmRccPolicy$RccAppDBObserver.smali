.class Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;
.super Landroid/database/ContentObserver;
.source "SmRccPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SmRccPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RccAppDBObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/SmRccPolicy;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/SmRccPolicy;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;->this$0:Lcom/android/internal/app/SmRccPolicy;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 4

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "package_name"

    invoke-virtual {p2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "action"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "show"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "open"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "restrict"

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "insert"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v3, 0x14

    iput v3, v0, Landroid/os/Message;->what:I

    new-instance v3, Lcom/android/internal/app/SmRccPolicy$RccApp;

    invoke-direct {v3, p1, v1, v2, p2}, Lcom/android/internal/app/SmRccPolicy$RccApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;->this$0:Lcom/android/internal/app/SmRccPolicy;

    invoke-static {p0}, Lcom/android/internal/app/SmRccPolicy;->-$$Nest$fgetmHandler(Lcom/android/internal/app/SmRccPolicy;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-string v3, "delete"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/16 v0, 0x1e

    iput v0, p2, Landroid/os/Message;->what:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;->this$0:Lcom/android/internal/app/SmRccPolicy;

    invoke-static {p0}, Lcom/android/internal/app/SmRccPolicy;->-$$Nest$fgetmHandler(Lcom/android/internal/app/SmRccPolicy;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    const-string/jumbo v3, "update_show"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/16 v0, 0x28

    iput v0, p2, Landroid/os/Message;->what:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Landroid/os/Message;->arg1:I

    :cond_3
    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;->this$0:Lcom/android/internal/app/SmRccPolicy;

    invoke-static {p0}, Lcom/android/internal/app/SmRccPolicy;->-$$Nest$fgetmHandler(Lcom/android/internal/app/SmRccPolicy;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_4
    const-string/jumbo v1, "update_open"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/16 v0, 0x32

    iput v0, p2, Landroid/os/Message;->what:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Landroid/os/Message;->arg1:I

    :cond_5
    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;->this$0:Lcom/android/internal/app/SmRccPolicy;

    invoke-static {p0}, Lcom/android/internal/app/SmRccPolicy;->-$$Nest$fgetmHandler(Lcom/android/internal/app/SmRccPolicy;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_6
    const-string/jumbo v1, "update_restrict"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3c

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    :cond_7
    iget-object p0, p0, Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;->this$0:Lcom/android/internal/app/SmRccPolicy;

    invoke-static {p0}, Lcom/android/internal/app/SmRccPolicy;->-$$Nest$fgetmHandler(Lcom/android/internal/app/SmRccPolicy;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    :goto_0
    return-void
.end method
