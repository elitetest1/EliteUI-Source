.class public abstract Lcom/android/internal/globalactions/ToggleAction;
.super Ljava/lang/Object;
.source "ToggleAction.java"

# interfaces
.implements Lcom/android/internal/globalactions/Action;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/globalactions/ToggleAction$State;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ToggleAction"


# instance fields
.field protected blacklist mDisabledIconResid:I

.field protected blacklist mDisabledStatusMessageResId:I

.field protected blacklist mEnabledIconResId:I

.field protected blacklist mEnabledStatusMessageResId:I

.field protected blacklist mMessageResId:I

.field protected blacklist mState:Lcom/android/internal/globalactions/ToggleAction$State;


# direct methods
.method public constructor blacklist <init>(IIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    iput p1, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledIconResId:I

    iput p2, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledIconResid:I

    iput p3, p0, Lcom/android/internal/globalactions/ToggleAction;->mMessageResId:I

    iput p4, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledStatusMessageResId:I

    iput p5, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledStatusMessageResId:I

    return-void
.end method


# virtual methods
.method protected blacklist changeStateFromPress(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_0
    iput-object p1, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    return-void
.end method

.method public blacklist create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/globalactions/ToggleAction;->willCreate()V

    const p2, 0x1090098

    const/4 v0, 0x0

    invoke-virtual {p4, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020006

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const p4, 0x102000b

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const v1, 0x102063c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/globalactions/ToggleAction;->isEnabled()Z

    move-result v2

    if-eqz p4, :cond_0

    iget v3, p0, Lcom/android/internal/globalactions/ToggleAction;->mMessageResId:I

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    iget-object p4, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v3, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    if-eq p4, v3, :cond_2

    iget-object p4, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v3, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOn:Lcom/android/internal/globalactions/ToggleAction$State;

    if-ne p4, v3, :cond_1

    goto :goto_0

    :cond_1
    move p4, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p4, 0x1

    :goto_1
    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    iget v3, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledIconResId:I

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledIconResid:I

    :goto_2
    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_4
    if-eqz v1, :cond_6

    if-eqz p4, :cond_5

    iget p0, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledStatusMessageResId:I

    goto :goto_3

    :cond_5
    iget p0, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledStatusMessageResId:I

    :goto_3
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_6
    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    return-object p2
.end method

.method public blacklist getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    iget p0, p0, Lcom/android/internal/globalactions/ToggleAction;->mMessageResId:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {p0}, Lcom/android/internal/globalactions/ToggleAction$State;->inTransition()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final blacklist onPress()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ToggleAction$State;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ToggleAction"

    const-string/jumbo v0, "shouldn\'t be able to toggle when in transition"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/globalactions/ToggleAction;->onToggle(Z)V

    invoke-virtual {p0, v0}, Lcom/android/internal/globalactions/ToggleAction;->changeStateFromPress(Z)V

    return-void
.end method

.method public abstract blacklist onToggle(Z)V
.end method

.method public blacklist updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    return-void
.end method

.method blacklist willCreate()V
    .locals 0

    return-void
.end method
