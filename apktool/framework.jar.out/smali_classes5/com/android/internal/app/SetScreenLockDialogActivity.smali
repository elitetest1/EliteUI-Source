.class public Lcom/android/internal/app/SetScreenLockDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SetScreenLockDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SetScreenLockDialogActivity$LaunchReason;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_LAUNCH_REASON:Ljava/lang/String; = "launch_reason"

.field public static final blacklist EXTRA_ORIGIN_USER_ID:Ljava/lang/String; = "origin_user_id"

.field public static final blacklist LAUNCH_REASON_DISABLE_QUIET_MODE:I = 0x1

.field public static final blacklist LAUNCH_REASON_PRIVATE_SPACE_SETTINGS_ACCESS:I = 0x2

.field public static final blacklist LAUNCH_REASON_RESET_PRIVATE_SPACE_SETTINGS_ACCESS:I = 0x3

.field public static final blacklist LAUNCH_REASON_UNKNOWN:I = -0x1

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final blacklist TAG:Ljava/lang/String; = "SetScreenLockDialog"


# instance fields
.field private blacklist mOriginUserId:I

.field private blacklist mReason:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method public static blacklist createBaseIntent(I)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/internal/app/SetScreenLockDialogActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "launch_reason"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private blacklist setLaunchUserSpecificMessage(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    iget v0, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mReason:I

    const/4 v1, 0x2

    const v2, 0x1040caf

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const p0, 0x1040cae

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mOriginUserId:I

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_2
    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.BIOMETRIC_ENROLL"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.provider.extra.BIOMETRIC_AUTHENTICATORS_ALLOWED"

    const v0, 0x8000

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/SetScreenLockDialogActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->finish()V

    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroid/multiuser/Flags;->showSetScreenLockDialog()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "launch_reason"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mReason:I

    const-string v0, "origin_user_id"

    const/16 v2, -0x2710

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mOriginUserId:I

    iget p1, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mReason:I

    const-string v0, "SetScreenLockDialog"

    if-ne p1, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid launch reason: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mReason:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->finish()V

    return-void

    :cond_1
    const-class p1, Landroid/app/KeyguardManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/SetScreenLockDialogActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    if-nez p1, :cond_2

    const-string p0, "Error fetching keyguard manager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "Closing the activity since screen lock is already set"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Launching screen lock setup dialog due to "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mReason:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x1040ec6

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040ec5

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Lcom/android/internal/app/SetScreenLockDialogActivity;->setLaunchUserSpecificMessage(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->create()V

    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->finish()V

    return-void
.end method

.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->finish()V

    return-void
.end method
