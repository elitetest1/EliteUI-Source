.class public Landroid/credentials/selection/IntentFactory;
.super Ljava/lang/Object;
.source "IntentFactory.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CredManIntentHelper"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createCancelUiIntent(Landroid/content/Context;Landroid/os/IBinder;ZLjava/lang/String;I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/credentials/selection/IntentCreationResult$Builder;

    invoke-direct {v1, v0}, Landroid/credentials/selection/IntentCreationResult$Builder;-><init>(Landroid/content/Intent;)V

    invoke-static {p0, v0, v1, p4}, Landroid/credentials/selection/IntentFactory;->setCredentialSelectorUiComponentName(Landroid/content/Context;Landroid/content/Intent;Landroid/credentials/selection/IntentCreationResult$Builder;I)V

    new-instance p0, Landroid/credentials/selection/CancelSelectionRequest;

    new-instance p4, Landroid/credentials/selection/RequestToken;

    invoke-direct {p4, p1}, Landroid/credentials/selection/RequestToken;-><init>(Landroid/os/IBinder;)V

    invoke-direct {p0, p4, p2, p3}, Landroid/credentials/selection/CancelSelectionRequest;-><init>(Landroid/credentials/selection/RequestToken;ZLjava/lang/String;)V

    const-string p1, "android.credentials.selection.extra.CANCEL_UI_REQUEST"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static blacklist createCredentialSelectorIntent(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/selection/RequestInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/ProviderData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;",
            "Landroid/os/ResultReceiver;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentForCredMan(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;

    move-result-object p0

    invoke-virtual {p0}, Landroid/credentials/selection/IntentCreationResult;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createCredentialSelectorIntentForAutofill(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/selection/RequestInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;",
            "Landroid/os/ResultReceiver;",
            "I)",
            "Landroid/credentials/selection/IntentCreationResult;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentInternal(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createCredentialSelectorIntentForCredMan(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/selection/RequestInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/ProviderData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;",
            "Landroid/os/ResultReceiver;",
            "I)",
            "Landroid/credentials/selection/IntentCreationResult;"
        }
    .end annotation

    invoke-static {p0, p1, p3, p4, p5}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentInternal(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;

    move-result-object p0

    invoke-virtual {p0}, Landroid/credentials/selection/IntentCreationResult;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p3, "android.credentials.selection.extra.ENABLED_PROVIDER_DATA_LIST"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method private static blacklist createCredentialSelectorIntentInternal(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/selection/RequestInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;",
            "Landroid/os/ResultReceiver;",
            "I)",
            "Landroid/credentials/selection/IntentCreationResult;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/credentials/selection/IntentCreationResult$Builder;

    invoke-direct {v1, v0}, Landroid/credentials/selection/IntentCreationResult$Builder;-><init>(Landroid/content/Intent;)V

    invoke-static {p0, v0, v1, p4}, Landroid/credentials/selection/IntentFactory;->setCredentialSelectorUiComponentName(Landroid/content/Context;Landroid/content/Intent;Landroid/credentials/selection/IntentCreationResult$Builder;I)V

    const-string p0, "android.credentials.selection.extra.DISABLED_PROVIDER_DATA_LIST"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p0, "android.credentials.selection.extra.REQUEST_INFO"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "android.credentials.selection.extra.RESULT_RECEIVER"

    invoke-static {p3}, Landroid/credentials/selection/IntentFactory;->toIpcFriendlyResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/credentials/selection/IntentCreationResult$Builder;->build()Landroid/credentials/selection/IntentCreationResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getOemOverrideComponentName(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult$Builder;I)Landroid/content/ComponentName;
    .locals 8

    const-string v0, "Found enabled oem CredMan UI component."

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104039d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "CredManIntentHelper"

    const/4 v4, 0x0

    if-nez v2, :cond_6

    :try_start_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to parse OEM component name "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiPackageName(Ljava/lang/String;)Landroid/credentials/selection/IntentCreationResult$Builder;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->propagateUserContextForIntentCreation()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-wide/32 v5, 0x100000

    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v5

    invoke-virtual {p2, v2, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-interface {v5, v2, v6, v7, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_5

    iget-boolean v5, p2, Landroid/content/pm/ActivityInfo;->enabled:Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    const/4 v6, 0x1

    if-ne p0, v6, :cond_1

    move v5, v6

    goto :goto_2

    :cond_1
    const/4 v6, 0x2

    if-ne p0, v6, :cond_2

    const/4 v5, 0x0

    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    iget-boolean p0, p2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz p0, :cond_3

    sget-object p0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->SUCCESS:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, p0}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v2

    goto :goto_3

    :cond_3
    sget-object p0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_FOUND_BUT_NOT_ENABLED:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, p0}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    const-string p0, "Found enabled oem CredMan UI component but it was not enabled."

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    sget-object p0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_BUT_NOT_FOUND:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, p0}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unable to find oem CredMan UI component: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    sget-object p0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_BUT_NOT_FOUND:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, p0}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    const-string p0, "Invalid OEM ComponentName format."

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-object v4

    :cond_6
    sget-object p0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_NOT_SPECIFIED:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, p0}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    const-string p0, "Invalid empty OEM component name."

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private static blacklist setCredentialSelectorUiComponentName(Landroid/content/Context;Landroid/content/Intent;Landroid/credentials/selection/IntentCreationResult$Builder;I)V
    .locals 2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->configurableSelectorUiEnabled()Z

    move-result v0

    const v1, 0x104036b

    if-eqz v0, :cond_1

    invoke-static {p0, p2, p3}, Landroid/credentials/selection/IntentFactory;->getOemOverrideComponentName(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult$Builder;I)Landroid/content/ComponentName;

    move-result-object p0

    const/4 p3, 0x0

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/credentials/selection/IntentCreationResult$Builder;->setFallbackUiPackageName(Ljava/lang/String;)Landroid/credentials/selection/IntentCreationResult$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fallback CredMan IU not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CredManIntentHelper"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez p0, :cond_0

    move-object p0, p3

    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void

    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void
.end method

.method private static blacklist toIpcFriendlyResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/ResultReceiver;",
            ">(TT;)",
            "Landroid/os/ResultReceiver;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ResultReceiver;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method
