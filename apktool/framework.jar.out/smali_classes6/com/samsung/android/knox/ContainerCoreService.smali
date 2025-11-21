.class public abstract Lcom/samsung/android/knox/ContainerCoreService;
.super Landroid/app/Service;
.source "ContainerCoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;
    }
.end annotation


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance p1, Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;-><init>(Lcom/samsung/android/knox/ContainerCoreService;Lcom/samsung/android/knox/ContainerCoreService-IA;)V

    return-object p1
.end method

.method public abstract greylist onCommandReceived(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract greylist onEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract greylist onPolicyUpdated(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract greylist onTestMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method
