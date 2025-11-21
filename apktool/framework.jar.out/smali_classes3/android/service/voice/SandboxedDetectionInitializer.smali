.class public interface abstract Landroid/service/voice/SandboxedDetectionInitializer;
.super Ljava/lang/Object;
.source "SandboxedDetectionInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist INITIALIZATION_STATUS_SUCCESS:I = 0x0

.field public static final whitelist INITIALIZATION_STATUS_UNKNOWN:I = 0x64

.field public static final blacklist KEY_INITIALIZATION_STATUS:Ljava/lang/String; = "initialization_status"

.field public static final blacklist MAXIMUM_NUMBER_OF_INITIALIZATION_STATUS_CUSTOM_ERROR:I = 0x2


# direct methods
.method public static blacklist createInitializationStatusConsumer(Landroid/os/IRemoteCallback;)Ljava/util/function/IntConsumer;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Landroid/service/voice/SandboxedDetectionInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/service/voice/SandboxedDetectionInitializer$$ExternalSyntheticLambda0;-><init>(Landroid/os/IRemoteCallback;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static whitelist getMaxCustomInitializationStatus()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static synthetic blacklist lambda$createInitializationStatusConsumer$0(Landroid/os/IRemoteCallback;I)V
    .locals 2

    invoke-static {}, Landroid/service/voice/SandboxedDetectionInitializer;->getMaxCustomInitializationStatus()I

    move-result v0

    if-gt p1, v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "initialization_status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The initialization status is invalid for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract whitelist onUpdateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;JLjava/util/function/IntConsumer;)V
.end method
