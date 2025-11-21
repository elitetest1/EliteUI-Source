.class public abstract Landroid/app/servertransaction/WindowStateTransactionItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "WindowStateTransactionItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;
    }
.end annotation


# instance fields
.field private final blacklist mWindow:Landroid/view/IWindow;


# direct methods
.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/IWindow;

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/IWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/IWindow;

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/app/servertransaction/WindowStateTransactionItem;

    iget-object p0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    iget-object p1, p1, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 2

    iget-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    instance-of v1, v0, Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;

    invoke-interface {v0}, Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;->onExecutingWindowStateTransactionItem()V

    :cond_0
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/servertransaction/WindowStateTransactionItem;->execute(Landroid/app/ClientTransactionHandler;Landroid/view/IWindow;Landroid/app/servertransaction/PendingTransactionActions;)V

    return-void
.end method

.method public abstract blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/view/IWindow;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mWindow="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-interface {p0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
