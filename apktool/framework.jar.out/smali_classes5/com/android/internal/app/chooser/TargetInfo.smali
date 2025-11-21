.class public interface abstract Lcom/android/internal/app/chooser/TargetInfo;
.super Ljava/lang/Object;
.source "TargetInfo.java"


# direct methods
.method public static blacklist prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->fixUris(I)V

    :cond_0
    return-void
.end method

.method public static blacklist refreshIntentCreatorToken(Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->preventIntentRedirect()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->cloneForCreatorToken()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->refreshIntentCreatorToken(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setCreatorToken(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failure from system"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public abstract blacklist cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;
.end method

.method public abstract blacklist getAllSourceIntents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract blacklist getDisplayLabel()Ljava/lang/CharSequence;
.end method

.method public abstract blacklist getExtendedInfo()Ljava/lang/CharSequence;
.end method

.method public abstract blacklist getResolveInfo()Landroid/content/pm/ResolveInfo;
.end method

.method public abstract blacklist getResolvedComponentName()Landroid/content/ComponentName;
.end method

.method public abstract blacklist getResolvedIntent()Landroid/content/Intent;
.end method

.method public abstract blacklist isPinned()Z
.end method

.method public abstract blacklist isSuspended()Z
.end method

.method public blacklist setSkipFixUris(Z)V
    .locals 0

    return-void
.end method

.method public abstract blacklist start(Landroid/app/Activity;Landroid/os/Bundle;)Z
.end method

.method public abstract blacklist startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
.end method

.method public abstract blacklist startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
.end method
