.class public Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;
.super Landroid/app/Activity;
.source "UnknownSourceAppBlockActivity.java"


# static fields
.field private static final blacklist SECURITY_PORTAL:Ljava/lang/String; = "https://security.samsungmobile.com/securityPost.smsb"

.field private static final blacklist TAG:Ljava/lang/String; = "UnknownSourceAppManager"


# instance fields
.field private blacklist mAm:Landroid/app/ActivityManager;

.field private blacklist mBrowserUidForLink:I

.field private blacklist mButtonClicked:Z

.field private blacklist mInstallType:I

.field private blacklist mIsAppBlockActivityClosed:Z

.field private blacklist mIsBrowserClosed:Z

.field private blacklist mLinkClicked:Z

.field private final blacklist mSemProcessListener:Landroid/app/ActivityManager$SemProcessListener;

.field private blacklist mSessionId:I

.field private blacklist mUiMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBrowserUidForLink(Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mBrowserUidForLink:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAppBlockActivityClosed(Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mIsAppBlockActivityClosed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsBrowserClosed(Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mIsBrowserClosed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAppBlockActivityClosed(Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mIsAppBlockActivityClosed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBrowserClosed(Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mIsBrowserClosed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrejectInstall(Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->rejectInstall()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mButtonClicked:Z

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mLinkClicked:Z

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mIsAppBlockActivityClosed:Z

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mIsBrowserClosed:Z

    new-instance v0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity$1;-><init>(Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;)V

    iput-object v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mSemProcessListener:Landroid/app/ActivityManager$SemProcessListener;

    return-void
.end method

.method private blacklist changeToBlockButton()V
    .locals 3

    const v0, 0x10203b7

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x10203b8

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCreate$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Insets;->left:I

    iget v1, p1, Landroid/graphics/Insets;->top:I

    iget v2, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method

.method private blacklist rejectInstall()V
    .locals 2

    const-string v0, "UnknownSourceAppManager"

    const-string v1, "Reject installing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mSessionId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageInstaller;->setUnknownSourceConfirmResult(IZ)V

    return-void
.end method

.method private blacklist setContentView()V
    .locals 6

    const v0, 0x1090032

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->setContentView(I)V

    const v0, 0x1020220

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x1020222

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x102021f

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x1020221

    invoke-virtual {p0, v3}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v4

    const/16 v5, 0x8

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget v3, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mInstallType:I

    const/16 v4, 0x96

    if-ne v3, v4, :cond_1

    const v3, 0x108063b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x1040fdf

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x104020a

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const v0, 0x1040209

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->changeToBlockButton()V

    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->setContentView()V

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iget v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mUiMode:I

    if-eq v0, v1, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mUiMode:I

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1060566

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const v0, 0x1020220

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->semSetDisplayCutoutBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mUiMode:I

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mSessionId:I

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.content.pm.extra.unknown.installtype"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mInstallType:I

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mAm:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mSemProcessListener:Landroid/app/ActivityManager$SemProcessListener;

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->semRegisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V

    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->setContentView()V

    return-void
.end method

.method protected whitelist onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mAm:Landroid/app/ActivityManager;

    iget-object p0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mSemProcessListener:Landroid/app/ActivityManager$SemProcessListener;

    invoke-virtual {v0, p0}, Landroid/app/ActivityManager;->semUnregisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V

    return-void
.end method

.method public blacklist onInstallButtonClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mButtonClicked:Z

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x10203b7

    if-ne v1, v2, :cond_0

    const-string p1, "UnknownSourceAppManager"

    const-string v1, "Allow installing"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p1

    iget v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mSessionId:I

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageInstaller;->setUnknownSourceConfirmResult(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x10203b8

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->rejectInstall()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->finish()V

    return-void
.end method

.method public blacklist onLinkClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mLinkClicked:Z

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "https://security.samsungmobile.com/securityPost.smsb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mBrowserUidForLink:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UnknownSourceAppManager"

    const-string v2, "Cannot resolve a browser for link"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->rejectInstall()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public whitelist onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mButtonClicked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mLinkClicked:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->rejectInstall()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->mLinkClicked:Z

    return-void
.end method
