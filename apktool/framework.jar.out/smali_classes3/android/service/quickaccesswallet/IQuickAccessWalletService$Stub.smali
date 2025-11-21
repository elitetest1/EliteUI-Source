.class public abstract Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;
.super Landroid/os/Binder;
.source "IQuickAccessWalletService.java"

# interfaces
.implements Landroid/service/quickaccesswallet/IQuickAccessWalletService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/IQuickAccessWalletService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onGestureTargetActivityIntentRequested:I = 0x7

.field static final blacklist TRANSACTION_onTargetActivityIntentRequested:I = 0x6

.field static final blacklist TRANSACTION_onWalletCardSelected:I = 0x2

.field static final blacklist TRANSACTION_onWalletCardsRequested:I = 0x1

.field static final blacklist TRANSACTION_onWalletDismissed:I = 0x3

.field static final blacklist TRANSACTION_registerWalletServiceEventListener:I = 0x4

.field static final blacklist TRANSACTION_unregisterWalletServiceEventListener:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletService"

    invoke-virtual {p0, p0, v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    return-object v0

    :cond_1
    new-instance v0, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "onGestureTargetActivityIntentRequested"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "onTargetActivityIntentRequested"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "unregisterWalletServiceEventListener"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "registerWalletServiceEventListener"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "onWalletDismissed"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "onWalletCardSelected"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "onWalletCardsRequested"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.service.quickaccesswallet.IQuickAccessWalletService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->onGestureTargetActivityIntentRequested(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->onTargetActivityIntentRequested(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    goto :goto_0

    :pswitch_2
    sget-object p1, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->unregisterWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    goto :goto_0

    :pswitch_3
    sget-object p1, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->registerWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->onWalletDismissed()V

    goto :goto_0

    :pswitch_5
    sget-object p1, Landroid/service/quickaccesswallet/SelectWalletCardRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/quickaccesswallet/SelectWalletCardRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    goto :goto_0

    :pswitch_6
    sget-object p1, Landroid/service/quickaccesswallet/GetWalletCardsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1, p3}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
