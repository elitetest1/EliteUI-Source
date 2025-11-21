.class Landroid/telecom/Connection$FailureSignalingConnection;
.super Landroid/telecom/Connection;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FailureSignalingConnection"
.end annotation


# instance fields
.field private greylist-max-o mImmutable:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/telecom/DisconnectCause;)V
    .locals 1

    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    invoke-virtual {p0, p1}, Landroid/telecom/Connection$FailureSignalingConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    return-void
.end method


# virtual methods
.method public greylist-max-o checkImmutable()V
    .locals 1

    iget-boolean p0, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Connection is immutable"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
