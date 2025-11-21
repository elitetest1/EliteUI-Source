.class public Lcom/samsung/android/net/ExtendedEthernetManager;
.super Ljava/lang/Object;
.source "ExtendedEthernetManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ExtendedEthernetManager"


# instance fields
.field private final blacklist mService:Lcom/samsung/android/net/IExtendedEthernetManager;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/net/IExtendedEthernetManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ExtendedEthernetManager"

    const-string v1, "ExtendedEthernetManager created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/net/ExtendedEthernetManager;->mService:Lcom/samsung/android/net/IExtendedEthernetManager;

    return-void
.end method


# virtual methods
.method public blacklist getConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;
    .locals 1

    const-string v0, "ExtendedEthernetManager"

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/net/ExtendedEthernetManager;->mService:Lcom/samsung/android/net/IExtendedEthernetManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/net/IExtendedEthernetManager;->getConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
