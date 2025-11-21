.class public Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;
.super Landroid/app/Activity;
.source "MaintenanceModeOutroActivity.java"


# static fields
.field private static final blacklist EXIT_PROGRESS_TIMEOUT:J = 0x1d4c0L

.field private static final blacklist TAG:Ljava/lang/String; = "MaintenanceMode"


# instance fields
.field private blacklist mCallingPackage:Ljava/lang/String;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mExitButton:Landroid/widget/Button;

.field private blacklist mIsFold:Z

.field private blacklist mIsTablet:Z

.field private blacklist mProgressView:Landroid/view/View;

.field private blacklist mResources:Landroid/content/res/Resources;

.field private blacklist mRootView:Landroid/view/View;

.field private blacklist mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private blacklist mWm:Landroid/view/WindowManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$6cTla6fgg8xzSHycFW--HYILRxo(Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->lambda$showDialog$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HqLTXUICrEoxj2LQ8PkA_mMUawg(Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->lambda$showDialog$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$W4hhoa6qSVjlMTdXshuPwMzeEDo(Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->lambda$setContentView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$frW63gwRbAWtmMTGazKfPInEQrk(Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->lambda$showDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jIUX706gIGx-OuFqxZQTlwnNH4k(Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->lambda$showDialog$3()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mIsTablet:Z

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mIsFold:Z

    return-void
.end method

.method private blacklist exitMaintenanceMode()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "MaintenanceMode"

    const-string v1, "Exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist init()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mRootView:Landroid/view/View;

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mWm:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->prepareProgressView()V

    return-void
.end method

.method private synthetic blacklist lambda$setContentView$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->showDialog()V

    return-void
.end method

.method private synthetic blacklist lambda$showDialog$1()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->exitMaintenanceMode()V

    return-void
.end method

.method private synthetic blacklist lambda$showDialog$2()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mProgressView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mExitButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$showDialog$3()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mExitButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mProgressView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;)V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic blacklist lambda$showDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p1, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;)V

    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->confirmSecureLock(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$showDialog$5(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private blacklist prepareProgressView()V
    .locals 8

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v6, 0x20100

    const/4 v7, -0x3

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x7e8

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090208

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mProgressView:Landroid/view/View;

    return-void
.end method

.method private blacklist setContentView(Landroid/content/res/Configuration;)V
    .locals 8

    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mResources:Landroid/content/res/Resources;

    iget-boolean v3, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mIsTablet:Z

    iget-boolean v4, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mIsFold:Z

    const v6, 0x1090031

    const v7, 0x102040d

    const v5, 0x1090030

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->configureLayout(Landroid/app/Activity;Landroid/content/res/Resources;Landroid/content/res/Configuration;ZZIII)V

    iget-object p0, v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mCallingPackage:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    iget-boolean p0, v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mIsTablet:Z

    if-eqz p0, :cond_1

    const p0, 0x1020410

    invoke-virtual {v0, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iget-object p1, v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mResources:Landroid/content/res/Resources;

    const v1, 0x10502c5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    const p0, 0x1020411

    invoke-virtual {v0, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const p1, 0x10407f3

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const p0, 0x102040e

    invoke-virtual {v0, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    iput-object p0, v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mExitButton:Landroid/widget/Button;

    iget-boolean p1, v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mIsTablet:Z

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mResources:Landroid/content/res/Resources;

    const v1, 0x105029f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setWidth(I)V

    :cond_2
    iget-object p0, v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mExitButton:Landroid/widget/Button;

    iget-object p1, v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mContext:Landroid/content/Context;

    const v1, 0x10502a8

    invoke-static {p1, v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object p0, v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mExitButton:Landroid/widget/Button;

    new-instance p1, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;)V

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private blacklist showDialog()V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mIsTablet:Z

    if-eqz v1, :cond_0

    const v1, 0x10407ef

    goto :goto_0

    :cond_0
    const v1, 0x10407ee

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;)V

    const p0, 0x10407d0

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity$$ExternalSyntheticLambda1;-><init>()V

    const v1, 0x10407ce

    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->setContentView(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mCallingPackage:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    const/16 v0, 0x4d

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isTablet()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mIsTablet:Z

    invoke-static {}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isFold()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->mIsFold:Z

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->setContentView(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->init()V

    return-void
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeOutroActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
