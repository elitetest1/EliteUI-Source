.class Landroid/os/MessageQueue$StackNode;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StackNode"
.end annotation


# instance fields
.field private final blacklist mType:I


# direct methods
.method constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/MessageQueue$StackNode;->mType:I

    return-void
.end method


# virtual methods
.method final blacklist getNodeType()I
    .locals 0

    iget p0, p0, Landroid/os/MessageQueue$StackNode;->mType:I

    return p0
.end method

.method final blacklist isMessageNode()Z
    .locals 0

    iget p0, p0, Landroid/os/MessageQueue$StackNode;->mType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
