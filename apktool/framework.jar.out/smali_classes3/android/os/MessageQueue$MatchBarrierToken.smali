.class final Landroid/os/MessageQueue$MatchBarrierToken;
.super Landroid/os/MessageQueue$MessageCompare;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MatchBarrierToken"
.end annotation


# instance fields
.field blacklist mBarrierToken:I


# direct methods
.method constructor blacklist <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/MessageQueue$MessageCompare;-><init>(Landroid/os/MessageQueue-IA;)V

    iput p1, p0, Landroid/os/MessageQueue$MatchBarrierToken;->mBarrierToken:I

    return-void
.end method


# virtual methods
.method public blacklist compareMessage(Landroid/os/MessageQueue$MessageNode;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
    .locals 0

    invoke-static {p1}, Landroid/os/MessageQueue$MessageNode;->-$$Nest$fgetmMessage(Landroid/os/MessageQueue$MessageNode;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez p2, :cond_0

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget p0, p0, Landroid/os/MessageQueue$MatchBarrierToken;->mBarrierToken:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
