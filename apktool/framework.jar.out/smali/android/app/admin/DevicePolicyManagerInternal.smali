.class public abstract Landroid/app/admin/DevicePolicyManagerInternal;
.super Ljava/lang/Object;
.source "DevicePolicyManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V
.end method

.method public abstract blacklist broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V
.end method

.method public abstract blacklist canSilentlyInstallPackage(Ljava/lang/String;I)Z
.end method

.method public abstract blacklist clearResetPasswordTokenMDM(Landroid/content/ComponentName;I)Z
.end method

.method public abstract greylist-max-o createShowAdminSupportIntent(IZ)Landroid/content/Intent;
.end method

.method public abstract greylist-max-o createUserRestrictionSupportIntent(ILjava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract blacklist enforceAuditLoggingPolicy(Z)V
.end method

.method public abstract blacklist enforcePermission(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract blacklist enforceSecurityLoggingPolicy(Z)V
.end method

.method public abstract blacklist getAllCrossProfilePackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getApplicationRestrictionsMDM(Landroid/content/ComponentName;Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract blacklist getApplicationRestrictionsPerAdminForUser(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getCrossProfileWidgetProviders(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getDOMinimumRequiredWifiSecurityLevel()I
.end method

.method public abstract blacklist getDOWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;
.end method

.method public abstract blacklist getDefaultCrossProfilePackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getDelegatedPackages(I)Ljava/util/Map;
.end method

.method public abstract blacklist getDeviceOwnerComponent(Z)Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract blacklist getDeviceOwnerUserId()I
.end method

.method protected abstract greylist-max-o getDevicePolicyCache()Landroid/app/admin/DevicePolicyCache;
.end method

.method protected abstract blacklist getDeviceStateCache()Landroid/app/admin/DeviceStateCache;
.end method

.method public abstract greylist-max-o getPrintingDisabledReasonForUser(I)Ljava/lang/CharSequence;
.end method

.method public abstract blacklist getProfileOwnerAsUser(I)Landroid/content/ComponentName;
.end method

.method public abstract blacklist getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;
.end method

.method public abstract blacklist getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method public abstract blacklist hasPermission(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract blacklist isActiveDeviceOwner(I)Z
.end method

.method public abstract blacklist isActiveProfileOwner(I)Z
.end method

.method public abstract blacklist isActiveSupervisionApp(I)Z
.end method

.method public abstract blacklist isDeviceOrProfileOwnerInCallingUser(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isResetPasswordTokenActiveMDM(Landroid/content/ComponentName;I)Z
.end method

.method public abstract greylist-max-o isUserAffiliatedWithDevice(I)Z
.end method

.method public abstract blacklist isUserOrganizationManaged(I)Z
.end method

.method public abstract blacklist notifyChangesOnWifiPolicy()V
.end method

.method public abstract greylist-max-o reportSeparateProfileChallengeChanged(I)V
.end method

.method public abstract blacklist resetOp(ILjava/lang/String;I)V
.end method

.method public abstract blacklist resetPasswordWithTokenMDM(Landroid/content/ComponentName;Ljava/lang/String;[BII)Z
.end method

.method public abstract blacklist setApplicationRestrictionsMDM(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;I)V
.end method

.method public abstract blacklist setInternalEventsCallback(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract blacklist setKeyguardDisabledFeaturesMDM(Landroid/content/ComponentName;II)V
.end method

.method public abstract blacklist setMaximumFailedPasswordsForWipeMDM(Landroid/content/ComponentName;II)V
.end method

.method public abstract blacklist setMaximumTimeToLockMDM(Landroid/content/ComponentName;JI)V
.end method

.method public abstract blacklist setMinimumRequiredWifiSecurityLevel(Landroid/content/ComponentName;II)V
.end method

.method public abstract blacklist setPasswordExpirationTimeoutMDM(Landroid/content/ComponentName;JI)V
.end method

.method public abstract blacklist setPasswordHistoryLengthMDM(Landroid/content/ComponentName;II)V
.end method

.method public abstract blacklist setPasswordMinimumLengthMDM(Landroid/content/ComponentName;II)V
.end method

.method public abstract blacklist setPasswordMinimumLettersMDM(Landroid/content/ComponentName;II)V
.end method

.method public abstract blacklist setPasswordMinimumLowerCaseMDM(Landroid/content/ComponentName;II)V
.end method

.method public abstract blacklist setPasswordMinimumNonLetterMDM(Landroid/content/ComponentName;II)V
.end method

.method public abstract blacklist setPasswordMinimumNumericMDM(Landroid/content/ComponentName;II)V
.end method

.method public abstract blacklist setPasswordMinimumSymbolsMDM(Landroid/content/ComponentName;II)V
.end method

.method public abstract blacklist setPasswordMinimumUpperCaseMDM(Landroid/content/ComponentName;II)V
.end method

.method public abstract blacklist setPasswordQualityMDM(Landroid/content/ComponentName;II)V
.end method

.method public abstract blacklist setResetPasswordTokenMDM(Landroid/content/ComponentName;[BI)Z
.end method

.method public abstract blacklist setTrustAgentConfigurationMDM(ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
.end method

.method public abstract blacklist setWifiSsidPolicy(Landroid/content/ComponentName;Landroid/app/admin/WifiSsidPolicy;I)V
.end method

.method public abstract blacklist supportsResetOp(I)Z
.end method
