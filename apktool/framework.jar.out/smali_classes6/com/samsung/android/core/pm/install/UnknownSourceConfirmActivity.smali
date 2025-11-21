.class public Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UnknownSourceConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final blacklist EXTRA_INSTALL_TYPE:Ljava/lang/String; = "android.content.pm.extra.unknown.installtype"

.field private static final blacklist EXTRA_SESSION_ID:Ljava/lang/String; = "android.content.pm.extra.SESSION_ID"

.field private static final blacklist TAG:Ljava/lang/String; = "UnknownSourceAppManager"


# instance fields
.field private blacklist mButtonClicked:Z

.field private blacklist mSessionId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$Wn01MmwgVu9vjPOYRkHI_vHWO18(Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->lambda$initAlertParams$0(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mButtonClicked:Z

    return-void
.end method

.method private blacklist allowInstall()V
    .locals 2

    const-string v0, "UnknownSourceAppManager"

    const-string v1, "Allow installing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mSessionId:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageInstaller;->setUnknownSourceConfirmResult(IZ)V

    return-void
.end method

.method private blacklist initAlertParams(I)V
    .locals 5

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x104000a

    if-eq p1, v1, :cond_9

    const/16 v1, 0x7f

    if-eq p1, v1, :cond_5

    const/16 v1, 0x8c

    const v2, 0x1040ff4

    const v3, 0x1040ff3

    const v4, 0x1040ff0

    if-eq p1, v1, :cond_3

    const v1, 0x1040fef

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid install type: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UnknownSourceAppManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x1040ff7

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x1040ff6

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v4}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v3}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x1040fea

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x1040fe9

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v4}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v3}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x1040fee

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x1040fed

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v4}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v3}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x1040fec

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x1040feb

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v4}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v3}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v1, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;I)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x109008b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->isChinaDevice()Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x1040fe5

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x1040fe3

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x1040fe4

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x1040fe2

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_4
    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x1040fe1

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x1040fe0

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist initUI(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->initAlertParams(I)V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->setupAlert()V

    return-void
.end method

.method private blacklist isChinaDevice()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CountryISO"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$initAlertParams$0(ILandroid/content/DialogInterface;I)V
    .locals 1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mButtonClicked:Z

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const p3, 0x10008000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p3, "android.content.pm.extra.SESSION_ID"

    iget v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mSessionId:I

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "android.content.pm.extra.unknown.installtype"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist rejectInstall()V
    .locals 2

    const-string v0, "UnknownSourceAppManager"

    const-string v1, "Reject installing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mSessionId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageInstaller;->setUnknownSourceConfirmResult(IZ)V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onClick "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnknownSourceAppManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mButtonClicked:Z

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->rejectInstall()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->allowInstall()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->finish()V

    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.content.pm.extra.SESSION_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mSessionId:I

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.content.pm.extra.unknown.installtype"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->initUI(I)V

    return-void
.end method

.method public whitelist onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    iget-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->mButtonClicked:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceConfirmActivity;->rejectInstall()V

    :cond_0
    return-void
.end method
