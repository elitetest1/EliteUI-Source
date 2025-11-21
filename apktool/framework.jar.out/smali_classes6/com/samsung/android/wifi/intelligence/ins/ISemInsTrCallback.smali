.class public interface abstract Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrCallback;
.super Ljava/lang/Object;
.source "ISemInsTrCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrCallback$Stub;,
        Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.intelligence.ins.ISemInsTrCallback"


# virtual methods
.method public abstract blacklist onNsmMetricsUpdate(Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onPathMetricsUpdate(Lcom/samsung/android/wifi/intelligence/ins/tr/entity/ModelMetrics;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTrainingCompleted(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
