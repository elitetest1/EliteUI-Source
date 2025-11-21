.class public abstract Lcom/android/internal/telecom/ICallStreamingService$Stub;
.super Landroid/os/Binder;
.source "ICallStreamingService.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallStreamingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallStreamingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallStreamingService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCallStreamingStarted:I = 0x2

.field static final blacklist TRANSACTION_onCallStreamingStateChanged:I = 0x4

.field static final blacklist TRANSACTION_onCallStreamingStopped:I = 0x3

.field static final blacklist TRANSACTION_setStreamingCallAdapter:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telecom.ICallStreamingService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallStreamingService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.internal.telecom.ICallStreamingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/ICallStreamingService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telecom/ICallStreamingService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/telecom/ICallStreamingService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telecom/ICallStreamingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo p0, "onCallStreamingStateChanged"

    return-object p0

    :cond_1
    const-string/jumbo p0, "onCallStreamingStopped"

    return-object p0

    :cond_2
    const-string/jumbo p0, "onCallStreamingStarted"

    return-object p0

    :cond_3
    const-string/jumbo p0, "setStreamingCallAdapter"

    return-object p0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.android.internal.telecom.ICallStreamingService"

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
    if-eq p1, v1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->onCallStreamingStateChanged(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->onCallStreamingStopped()V

    goto :goto_0

    :cond_4
    sget-object p1, Landroid/telecom/StreamingCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/StreamingCall;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->onCallStreamingStarted(Landroid/telecom/StreamingCall;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telecom/IStreamingCallAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IStreamingCallAdapter;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->setStreamingCallAdapter(Lcom/android/internal/telecom/IStreamingCallAdapter;)V

    :goto_0
    return v1
.end method
