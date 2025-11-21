.class Landroid/service/settings/preferences/SettingsPreferenceService$1$2;
.super Ljava/lang/Object;
.source "SettingsPreferenceService.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/settings/preferences/SettingsPreferenceService$1;->getPreferenceValue(Landroid/service/settings/preferences/GetValueRequest;Landroid/service/settings/preferences/IGetValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/service/settings/preferences/GetValueResult;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/service/settings/preferences/IGetValueCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/settings/preferences/SettingsPreferenceService$1;Landroid/service/settings/preferences/IGetValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p2, p0, Landroid/service/settings/preferences/SettingsPreferenceService$1$2;->val$callback:Landroid/service/settings/preferences/IGetValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/Exception;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceService$1$2;->val$callback:Landroid/service/settings/preferences/IGetValueCallback;

    invoke-interface {p0}, Landroid/service/settings/preferences/IGetValueCallback;->onFailure()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public bridge synthetic whitelist onError(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Landroid/service/settings/preferences/SettingsPreferenceService$1$2;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public blacklist onResult(Landroid/service/settings/preferences/GetValueResult;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceService$1$2;->val$callback:Landroid/service/settings/preferences/IGetValueCallback;

    invoke-interface {p0, p1}, Landroid/service/settings/preferences/IGetValueCallback;->onSuccess(Landroid/service/settings/preferences/GetValueResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public bridge synthetic whitelist onResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/service/settings/preferences/GetValueResult;

    invoke-virtual {p0, p1}, Landroid/service/settings/preferences/SettingsPreferenceService$1$2;->onResult(Landroid/service/settings/preferences/GetValueResult;)V

    return-void
.end method
