.class public interface abstract Landroid/app/IHwuiCallback;
.super Ljava/lang/Object;
.source "IHwuiCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IHwuiCallback$Stub;,
        Landroid/app/IHwuiCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IHwuiCallback"


# virtual methods
.method public abstract blacklist onResult(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
