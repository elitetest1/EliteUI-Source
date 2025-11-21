.class public Lcom/android/internal/app/MediaRouteChooserDialog;
.super Landroid/app/AlertDialog;
.source "MediaRouteChooserDialog.java"

# interfaces
.implements Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;


# instance fields
.field private final blacklist mContentManager:Lcom/android/internal/app/MediaRouteChooserContentManager;

.field private blacklist mExtendedSettingsButton:Landroid/widget/Button;

.field private blacklist mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

.field private final blacklist mShowProgressBarWhenEmpty:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-boolean p3, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mShowProgressBarWhenEmpty:Z

    new-instance p2, Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-direct {p2, p1, p0}, Lcom/android/internal/app/MediaRouteChooserContentManager;-><init>(Landroid/content/Context;Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;)V

    iput-object p2, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mContentManager:Lcom/android/internal/app/MediaRouteChooserContentManager;

    return-void
.end method

.method static blacklist isLightTheme(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x1010590

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist updateExtendedSettingsButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist dismissView()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->dismiss()V

    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/AlertDialog;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mContentManager:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->onAttachedToWindow()V

    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900c4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->setView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mContentManager:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {v1}, Lcom/android/internal/app/MediaRouteChooserContentManager;->getRouteTypes()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const v1, 0x104082c

    goto :goto_0

    :cond_0
    const v1, 0x104082b

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x108055f

    goto :goto_1

    :cond_1
    const v1, 0x108055e

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setIcon(I)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x1020424

    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->updateExtendedSettingsButton()V

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mContentManager:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->bindViews(Landroid/view/View;)V

    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mContentManager:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->onDetachedFromWindow()V

    invoke-super {p0}, Landroid/app/AlertDialog;->onDetachedFromWindow()V

    return-void
.end method

.method public blacklist setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->updateExtendedSettingsButton()V

    :cond_0
    return-void
.end method

.method public blacklist setRouteTypes(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mContentManager:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteChooserContentManager;->setRouteTypes(I)V

    return-void
.end method

.method public blacklist showProgressBarWhenEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mShowProgressBarWhenEmpty:Z

    return p0
.end method
