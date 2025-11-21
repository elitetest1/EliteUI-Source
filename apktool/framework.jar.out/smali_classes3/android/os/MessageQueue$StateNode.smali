.class Landroid/os/MessageQueue$StateNode;
.super Landroid/os/MessageQueue$StackNode;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateNode"
.end annotation


# direct methods
.method constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/MessageQueue$StackNode;-><init>(I)V

    return-void
.end method
