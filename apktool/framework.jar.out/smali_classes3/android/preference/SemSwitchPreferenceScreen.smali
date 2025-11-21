.class public Landroid/preference/SemSwitchPreferenceScreen;
.super Landroid/preference/SwitchPreference;
.source "SemSwitchPreferenceScreen.java"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/SemSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/SemSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/SemSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/16 p3, 0xd

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, ""

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "SemSwitchPreferenceScreen"

    const-string p4, "SwitchPreferenceScreen should get fragment property. Fragment property does not exist in SwitchPreferenceScreen"

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 p4, 0x140

    if-gt p3, p4, :cond_1

    iget p3, p1, Landroid/content/res/Configuration;->fontScale:F

    const p4, 0x3f8ccccd    # 1.1f

    cmpl-float p3, p3, p4

    if-gez p3, :cond_2

    :cond_1
    iget p3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 p4, 0x19b

    if-ge p3, p4, :cond_3

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    const p3, 0x3fa66666    # 1.3f

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_3

    :cond_2
    const p1, 0x10901fb

    invoke-virtual {p0, p1}, Landroid/preference/SemSwitchPreferenceScreen;->setLayoutResource(I)V

    goto :goto_0

    :cond_3
    const p1, 0x10901fc

    invoke-virtual {p0, p1}, Landroid/preference/SemSwitchPreferenceScreen;->setLayoutResource(I)V

    :goto_0
    iget-boolean p1, p0, Landroid/preference/SemSwitchPreferenceScreen;->mIsDeviceDefaultDark:Z

    if-eqz p1, :cond_4

    const p1, 0x10901fe

    invoke-virtual {p0, p1}, Landroid/preference/SemSwitchPreferenceScreen;->setWidgetLayoutResource(I)V

    goto :goto_1

    :cond_4
    const p1, 0x10901fd

    invoke-virtual {p0, p1}, Landroid/preference/SemSwitchPreferenceScreen;->setWidgetLayoutResource(I)V

    :goto_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/preference/SemSwitchPreferenceScreen;->setRecycleEnabled(Z)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected whitelist onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    const p0, 0x1020016

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetHoverPopupType(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected whitelist onClick()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public blacklist onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    invoke-virtual {p0}, Landroid/preference/SemSwitchPreferenceScreen;->isChecked()Z

    move-result p3

    invoke-virtual {p0}, Landroid/preference/SemSwitchPreferenceScreen;->isRTL()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/SemSwitchPreferenceScreen;->hasRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez p1, :cond_9

    invoke-virtual {p0}, Landroid/preference/SemSwitchPreferenceScreen;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x15

    if-eq p2, p1, :cond_5

    const/16 p1, 0x16

    if-eq p2, p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p0, v4}, Landroid/preference/SemSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v3}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    :cond_2
    return v1

    :cond_3
    if-nez v0, :cond_9

    if-nez p3, :cond_9

    invoke-virtual {p0, v2}, Landroid/preference/SemSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v1}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    :cond_4
    return v1

    :cond_5
    if-eqz v0, :cond_7

    if-nez p3, :cond_7

    invoke-virtual {p0, v2}, Landroid/preference/SemSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v1}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    :cond_6
    return v1

    :cond_7
    if-nez v0, :cond_9

    if-eqz p3, :cond_9

    invoke-virtual {p0, v4}, Landroid/preference/SemSwitchPreferenceScreen;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, v3}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    :cond_8
    return v1

    :cond_9
    :goto_1
    return v3
.end method

.method public blacklist performClick()V
    .locals 0

    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    return-void
.end method
