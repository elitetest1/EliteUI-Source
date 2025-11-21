.class public interface abstract Lcom/samsung/android/wifi/intelligence/ins/ISemInsSensorCallback;
.super Ljava/lang/Object;
.source "ISemInsSensorCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/intelligence/ins/ISemInsSensorCallback$Stub;,
        Lcom/samsung/android/wifi/intelligence/ins/ISemInsSensorCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.intelligence.ins.ISemInsSensorCallback"


# virtual methods
.method public abstract blacklist onSensorChanged(JI[F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
