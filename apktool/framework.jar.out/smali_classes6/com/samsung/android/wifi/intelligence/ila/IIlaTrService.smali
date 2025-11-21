.class public interface abstract Lcom/samsung/android/wifi/intelligence/ila/IIlaTrService;
.super Ljava/lang/Object;
.source "IIlaTrService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/intelligence/ila/IIlaTrService$Stub;,
        Lcom/samsung/android/wifi/intelligence/ila/IIlaTrService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.intelligence.ila.IIlaTrService"


# virtual methods
.method public abstract blacklist train(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
