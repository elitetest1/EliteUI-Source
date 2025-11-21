.class public interface abstract Lcom/samsung/android/wifi/intelligence/ins/ISemInsInfCallback;
.super Ljava/lang/Object;
.source "ISemInsInfCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/intelligence/ins/ISemInsInfCallback$Stub;,
        Lcom/samsung/android/wifi/intelligence/ins/ISemInsInfCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.intelligence.ins.ISemInsInfCallback"


# virtual methods
.method public abstract blacklist onResultInfer(Lcom/samsung/android/wifi/intelligence/ins/inf/entity/ResultInfer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
