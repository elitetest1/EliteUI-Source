.class public abstract Landroid/app/LauncherActivity;
.super Landroid/app/ListActivity;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LauncherActivity$IconResizer;,
        Landroid/app/LauncherActivity$ActivityAdapter;,
        Landroid/app/LauncherActivity$ListItem;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mIconResizer:Landroid/app/LauncherActivity$IconResizer;

.field greylist-max-o mIntent:Landroid/content/Intent;

.field greylist-max-o mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private greylist-max-o updateAlertTitle()V
    .locals 1

    const v0, 0x1020204

    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/LauncherActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private greylist-max-o updateButtonText()V
    .locals 2

    const v0, 0x1020019

    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/LauncherActivity$1;

    invoke-direct {v1, p0}, Landroid/app/LauncherActivity$1;-><init>(Landroid/app/LauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected whitelist getTargetIntent()Landroid/content/Intent;
    .locals 0

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    return-object p0
.end method

.method protected whitelist intentForPosition(I)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroid/app/LauncherActivity;->mAdapter:Landroid/widget/ListAdapter;

    check-cast p0, Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-virtual {p0, p1}, Landroid/app/LauncherActivity$ActivityAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected whitelist itemForPosition(I)Landroid/app/LauncherActivity$ListItem;
    .locals 0

    iget-object p0, p0, Landroid/app/LauncherActivity;->mAdapter:Landroid/widget/ListAdapter;

    check-cast p0, Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-virtual {p0, p1}, Landroid/app/LauncherActivity$ActivityAdapter;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object p0

    return-object p0
.end method

.method public whitelist makeListItems()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/LauncherActivity$ListItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/LauncherActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->onSortResultList(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    new-instance v5, Landroid/app/LauncherActivity$ListItem;

    iget-object v6, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Landroid/app/LauncherActivity$ListItem;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroid/app/LauncherActivity$IconResizer;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/app/LauncherActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0, v1}, Landroid/app/LauncherActivity;->setProgressBarIndeterminateVisibility(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/LauncherActivity;->onSetContentView()V

    new-instance p1, Landroid/app/LauncherActivity$IconResizer;

    invoke-direct {p1, p0}, Landroid/app/LauncherActivity$IconResizer;-><init>(Landroid/app/LauncherActivity;)V

    iput-object p1, p0, Landroid/app/LauncherActivity;->mIconResizer:Landroid/app/LauncherActivity$IconResizer;

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/LauncherActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object p1, p0, Landroid/app/LauncherActivity;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance p1, Landroid/app/LauncherActivity$ActivityAdapter;

    iget-object v2, p0, Landroid/app/LauncherActivity;->mIconResizer:Landroid/app/LauncherActivity$IconResizer;

    invoke-direct {p1, p0, v2}, Landroid/app/LauncherActivity$ActivityAdapter;-><init>(Landroid/app/LauncherActivity;Landroid/app/LauncherActivity$IconResizer;)V

    iput-object p1, p0, Landroid/app/LauncherActivity;->mAdapter:Landroid/widget/ListAdapter;

    iget-object p1, p0, Landroid/app/LauncherActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/app/LauncherActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Landroid/app/LauncherActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    invoke-direct {p0}, Landroid/app/LauncherActivity;->updateAlertTitle()V

    invoke-direct {p0}, Landroid/app/LauncherActivity;->updateButtonText()V

    iget-object p1, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/LauncherActivity;->setProgressBarIndeterminateVisibility(Z)V

    :cond_1
    return-void
.end method

.method protected greylist-max-o onEvaluateShowIcons()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected whitelist onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p0, p3}, Landroid/app/LauncherActivity;->intentForPosition(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected whitelist onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected whitelist onSetContentView()V
    .locals 1

    const v0, 0x109002c

    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->setContentView(I)V

    return-void
.end method

.method protected greylist-max-o onSortResultList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object p0, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public whitelist setTitle(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->setTitle(I)V

    invoke-direct {p0}, Landroid/app/LauncherActivity;->updateAlertTitle()V

    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/app/LauncherActivity;->updateAlertTitle()V

    return-void
.end method
