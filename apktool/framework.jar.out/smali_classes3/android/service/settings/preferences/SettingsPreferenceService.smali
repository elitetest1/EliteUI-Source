.class public abstract Landroid/service/settings/preferences/SettingsPreferenceService;
.super Landroid/app/Service;
.source "SettingsPreferenceService.java"


# static fields
.field public static final whitelist ACTION_PREFERENCE_SERVICE:Ljava/lang/String; = "android.service.settings.preferences.action.PREFERENCE_SERVICE"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance p1, Landroid/service/settings/preferences/SettingsPreferenceService$1;

    invoke-virtual {p0}, Landroid/service/settings/preferences/SettingsPreferenceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/service/settings/preferences/SettingsPreferenceService$1;-><init>(Landroid/service/settings/preferences/SettingsPreferenceService;Landroid/os/PermissionEnforcer;)V

    return-object p1
.end method

.method public abstract whitelist onGetAllPreferenceMetadata(Landroid/service/settings/preferences/MetadataRequest;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/settings/preferences/MetadataRequest;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/service/settings/preferences/MetadataResult;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onGetPreferenceValue(Landroid/service/settings/preferences/GetValueRequest;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/settings/preferences/GetValueRequest;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/service/settings/preferences/GetValueResult;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onSetPreferenceValue(Landroid/service/settings/preferences/SetValueRequest;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/settings/preferences/SetValueRequest;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/service/settings/preferences/SetValueResult;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method
