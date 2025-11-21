.class public Lcom/android/internal/app/MediaRouteControllerDialog;
.super Landroid/app/AlertDialog;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;


# instance fields
.field private final blacklist mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$ny9FfsOHzkhKTFP04BfvAdzzgyU(Lcom/android/internal/app/MediaRouteControllerDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/MediaRouteControllerDialog;->lambda$onCreate$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance p2, Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-direct {p2, p1, p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;-><init>(Landroid/content/Context;Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;)V

    iput-object p2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    return-void
.end method

.method private synthetic blacklist lambda$onCreate$0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->onDisconnectButtonClick()V

    return-void
.end method


# virtual methods
.method public blacklist dismissView()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->dismiss()V

    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/AlertDialog;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->onAttachedToWindow()V

    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104082d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/MediaRouteControllerDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    const/4 v2, -0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900c5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/MediaRouteControllerDialog;->setView(Landroid/view/View;IIII)V

    iget-object p0, v3, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {p0, v4}, Lcom/android/internal/app/MediaRouteControllerContentManager;->bindViews(Landroid/view/View;)V

    invoke-super {v3, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {v3}, Lcom/android/internal/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const p1, 0x10202ce

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_0
    iget-object p0, v3, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->update()V

    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->onDetachedFromWindow()V

    invoke-super {p0}, Landroid/app/AlertDialog;->onDetachedFromWindow()V

    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v1, 0x18

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    const/4 p2, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteControllerContentManager;->requestUpdateRouteVolume(I)V

    return p2
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist setMediaRouteDeviceIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public blacklist setMediaRouteDeviceTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
