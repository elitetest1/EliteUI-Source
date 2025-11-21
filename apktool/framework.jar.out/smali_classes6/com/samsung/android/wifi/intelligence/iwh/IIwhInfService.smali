.class public interface abstract Lcom/samsung/android/wifi/intelligence/iwh/IIwhInfService;
.super Ljava/lang/Object;
.source "IIwhInfService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/intelligence/iwh/IIwhInfService$Stub;,
        Lcom/samsung/android/wifi/intelligence/iwh/IIwhInfService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.intelligence.iwh.IIwhInfService"


# virtual methods
.method public abstract blacklist iwhInfResult(Ljava/lang/String;ILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
