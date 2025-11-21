.class public final Landroid/app/search/SearchTarget$Builder;
.super Ljava/lang/Object;
.source "SearchTarget.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/search/SearchTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mHidden:Z

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mLayoutType:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mParentId:Ljava/lang/String;

.field private blacklist mResultType:I

.field private blacklist mScore:F

.field private blacklist mSearchAction:Landroid/app/search/SearchAction;

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private blacklist mSliceUri:Landroid/net/Uri;

.field private blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroid/app/search/SearchTarget$Builder;->mId:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Landroid/app/search/SearchTarget$Builder;->mLayoutType:Ljava/lang/String;

    iput p1, p0, Landroid/app/search/SearchTarget$Builder;->mResultType:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroid/app/search/SearchTarget$Builder;->mScore:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/app/search/SearchTarget$Builder;->mHidden:Z

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/search/SearchTarget;
    .locals 15

    new-instance v0, Landroid/app/search/SearchTarget;

    iget v1, p0, Landroid/app/search/SearchTarget$Builder;->mResultType:I

    iget-object v2, p0, Landroid/app/search/SearchTarget$Builder;->mLayoutType:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/search/SearchTarget$Builder;->mId:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/search/SearchTarget$Builder;->mParentId:Ljava/lang/String;

    iget v5, p0, Landroid/app/search/SearchTarget$Builder;->mScore:F

    iget-boolean v6, p0, Landroid/app/search/SearchTarget$Builder;->mHidden:Z

    iget-object v7, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    iget-object v8, p0, Landroid/app/search/SearchTarget$Builder;->mUserHandle:Landroid/os/UserHandle;

    iget-object v9, p0, Landroid/app/search/SearchTarget$Builder;->mSearchAction:Landroid/app/search/SearchAction;

    iget-object v10, p0, Landroid/app/search/SearchTarget$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v11, p0, Landroid/app/search/SearchTarget$Builder;->mSliceUri:Landroid/net/Uri;

    iget-object v12, p0, Landroid/app/search/SearchTarget$Builder;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v13, p0, Landroid/app/search/SearchTarget$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Landroid/app/search/SearchTarget;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Landroid/os/UserHandle;Landroid/app/search/SearchAction;Landroid/content/pm/ShortcutInfo;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/app/search/SearchTarget-IA;)V

    return-object v0
.end method

.method public whitelist setAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/app/search/SearchTarget$Builder;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SearchTarget packageName is different from appWidgetProviderInfo\'s packageName"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchTarget$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Landroid/app/search/SearchTarget$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setHidden(Z)Landroid/app/search/SearchTarget$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/search/SearchTarget$Builder;->mHidden:Z

    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setParentId(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/search/SearchTarget$Builder;->mParentId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setScore(F)Landroid/app/search/SearchTarget$Builder;
    .locals 0

    iput p1, p0, Landroid/app/search/SearchTarget$Builder;->mScore:F

    return-object p0
.end method

.method public whitelist setSearchAction(Landroid/app/search/SearchAction;)Landroid/app/search/SearchTarget$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/search/SearchTarget$Builder;->mSearchAction:Landroid/app/search/SearchAction;

    return-object p0
.end method

.method public whitelist setShortcutInfo(Landroid/content/pm/ShortcutInfo;)Landroid/app/search/SearchTarget$Builder;
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SearchTarget packageName is different from shortcut\'s packageName"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setShouldHide(Z)Landroid/app/search/SearchTarget$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/app/search/SearchTarget$Builder;->mHidden:Z

    return-object p0
.end method

.method public whitelist setSliceUri(Landroid/net/Uri;)Landroid/app/search/SearchTarget$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/search/SearchTarget$Builder;->mSliceUri:Landroid/net/Uri;

    return-object p0
.end method

.method public whitelist setUserHandle(Landroid/os/UserHandle;)Landroid/app/search/SearchTarget$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Landroid/app/search/SearchTarget$Builder;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method
