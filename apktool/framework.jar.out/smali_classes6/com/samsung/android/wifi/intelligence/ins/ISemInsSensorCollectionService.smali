.class public interface abstract Lcom/samsung/android/wifi/intelligence/ins/ISemInsSensorCollectionService;
.super Ljava/lang/Object;
.source "ISemInsSensorCollectionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/intelligence/ins/ISemInsSensorCollectionService$Stub;,
        Lcom/samsung/android/wifi/intelligence/ins/ISemInsSensorCollectionService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.intelligence.ins.ISemInsSensorCollectionService"


# virtual methods
.method public abstract blacklist start(Lcom/samsung/android/wifi/intelligence/ins/ISemInsSensorCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
