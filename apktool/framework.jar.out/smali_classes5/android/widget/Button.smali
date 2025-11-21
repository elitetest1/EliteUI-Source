.class public Landroid/widget/Button;
.super Landroid/widget/TextView;
.source "Button.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist WEAR_MATERIAL3_BUTTON:J = 0x1671debeL

.field private static blacklist sUseWearMaterial3Style:Ljava/lang/Boolean;


# instance fields
.field private blacklist mIsThemeDeviceDefault:Z


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-static {p1}, Landroid/widget/Button;->getButtonDefaultStyleAttr(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Landroid/widget/Button;->getButtonDefaultStyleRes()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/widget/Button;->mIsThemeDeviceDefault:Z

    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p4, 0x11200b3

    const/4 v0, 0x1

    invoke-virtual {p1, p4, p3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p3, Landroid/util/TypedValue;->data:I

    if-eqz p1, :cond_0

    move p2, v0

    :cond_0
    iput-boolean p2, p0, Landroid/widget/Button;->mIsThemeDeviceDefault:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/Button;->getHoverUIFeatureLevel()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    :cond_1
    return-void
.end method

.method private static blacklist getButtonDefaultStyleAttr(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Landroid/widget/Button;->useWearMaterial3Style(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Landroid/widget/Button;->sUseWearMaterial3Style:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x1010048

    return p0
.end method

.method private static blacklist getButtonDefaultStyleRes()I
    .locals 1

    sget-object v0, Landroid/widget/Button;->sUseWearMaterial3Style:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1030592

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist useWearMaterial3Style(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Landroid/widget/flags/Flags;->useWearMaterial3Ui()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x1671debe

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    move-result p0

    const v0, 0x1030128

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Button;->mIsThemeDeviceDefault:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/flags/Flags;->enableArrowIconOnHoverWhenClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x3ea

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method
