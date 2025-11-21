.class public final synthetic Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda1;->f$0:Landroid/os/OutcomeReceiver;

    iput-object p2, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda1;->f$0:Landroid/os/OutcomeReceiver;

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Exception;

    invoke-static {v0, p0}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->lambda$getPreferenceValue$3(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V

    return-void
.end method
