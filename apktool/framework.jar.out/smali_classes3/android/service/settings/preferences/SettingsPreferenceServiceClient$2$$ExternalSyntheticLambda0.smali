.class public final synthetic Landroid/service/settings/preferences/SettingsPreferenceServiceClient$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$1:Landroid/service/settings/preferences/GetValueResult;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OutcomeReceiver;Landroid/service/settings/preferences/GetValueResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$2$$ExternalSyntheticLambda0;->f$0:Landroid/os/OutcomeReceiver;

    iput-object p2, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$2$$ExternalSyntheticLambda0;->f$1:Landroid/service/settings/preferences/GetValueResult;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$2$$ExternalSyntheticLambda0;->f$0:Landroid/os/OutcomeReceiver;

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$2$$ExternalSyntheticLambda0;->f$1:Landroid/service/settings/preferences/GetValueResult;

    invoke-static {v0, p0}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$2;->lambda$onSuccess$0(Landroid/os/OutcomeReceiver;Landroid/service/settings/preferences/GetValueResult;)V

    return-void
.end method
