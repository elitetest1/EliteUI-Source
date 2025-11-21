.class public interface abstract Lcom/samsung/android/wifi/intelligence/icc/IIccTrService;
.super Ljava/lang/Object;
.source "IIccTrService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/intelligence/icc/IIccTrService$Stub;,
        Lcom/samsung/android/wifi/intelligence/icc/IIccTrService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.intelligence.icc.IIccTrService"


# virtual methods
.method public abstract blacklist initialize(Ljava/lang/String;IIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist trainAll()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist trainKey(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
