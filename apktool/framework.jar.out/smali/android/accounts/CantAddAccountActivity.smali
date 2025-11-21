.class public Landroid/accounts/CantAddAccountActivity;
.super Landroid/app/Activity;
.source "CantAddAccountActivity.java"


# static fields
.field public static final greylist-max-o EXTRA_ERROR_CODE:Ljava/lang/String; = "android.accounts.extra.ERROR_CODE"


# direct methods
.method public static synthetic blacklist $r8$lambda$DUE9HGR8cu_dO5VayMy3a3jWJuI(Landroid/accounts/CantAddAccountActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Landroid/accounts/CantAddAccountActivity;->lambda$onCreate$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onCreate$0()Ljava/lang/String;
    .locals 1

    const v0, 0x1040503

    invoke-virtual {p0, v0}, Landroid/accounts/CantAddAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public greylist-max-o onCancelButtonClicked(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/accounts/CantAddAccountActivity;->onBackPressed()V

    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x1090049

    invoke-virtual {p0, p1}, Landroid/accounts/CantAddAccountActivity;->setContentView(I)V

    const p1, 0x10202e8

    invoke-virtual {p0, p1}, Landroid/accounts/CantAddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/accounts/CantAddAccountActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Landroid/accounts/CantAddAccountActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/accounts/CantAddAccountActivity$$ExternalSyntheticLambda0;-><init>(Landroid/accounts/CantAddAccountActivity;)V

    const-string p0, "Core.CANT_ADD_ACCOUNT_MESSAGE"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
