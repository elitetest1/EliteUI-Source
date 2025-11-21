.class final Landroid/os/MessageQueue$MatchHandlerWhatAndObject;
.super Landroid/os/MessageQueue$MessageCompare;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MatchHandlerWhatAndObject"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/MessageQueue$MessageCompare;-><init>(Landroid/os/MessageQueue-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/MessageQueue-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/MessageQueue$MatchHandlerWhatAndObject;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compareMessage(Landroid/os/MessageQueue$MessageNode;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
    .locals 0

    invoke-static {p1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object p0

    iget-object p1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p1, p2, :cond_1

    iget p1, p0, Landroid/os/Message;->what:I

    if-ne p1, p3, :cond_1

    if-eqz p4, :cond_0

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne p0, p4, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
