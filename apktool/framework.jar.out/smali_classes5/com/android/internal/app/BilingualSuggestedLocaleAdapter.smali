.class public Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;
.super Lcom/android/internal/app/SuggestedLocaleAdapter;
.source "BilingualSuggestedLocaleAdapter.java"


# instance fields
.field private final blacklist mSecondaryLocale:Ljava/util/Locale;

.field private final blacklist mSecondaryLocaleTextDir:I

.field private blacklist mSelectedLocaleInfo:Lcom/android/internal/app/LocaleStore$LocaleInfo;

.field private final blacklist mShowSelection:Z


# direct methods
.method public constructor blacklist <init>(Ljava/util/Set;ZLjava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;Z",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;-><init>(Ljava/util/Set;ZLjava/util/Locale;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;ZLjava/util/Locale;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;Z",
            "Ljava/util/Locale;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/SuggestedLocaleAdapter;-><init>(Ljava/util/Set;Z)V

    iput-object p3, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mSecondaryLocale:Ljava/util/Locale;

    invoke-static {p3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mSecondaryLocaleTextDir:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mSecondaryLocaleTextDir:I

    :goto_0
    iput-boolean p4, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mShowSelection:Z

    return-void
.end method

.method private blacklist isSelectedLocaleInfo(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mSelectedLocaleInfo:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mSelectedLocaleInfo:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist setHeaderText(Landroid/widget/TextView;II)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    return-void
.end method

.method private blacklist setItemState(ZLandroid/view/View;)V
    .locals 3

    move-object p0, p2

    check-cast p0, Landroid/widget/RelativeLayout;

    const v0, 0x102039e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x10203ef

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x10203f1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const p1, 0x1080715

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist setLocaleToListItem(Landroid/view/View;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 4

    if-eqz p2, :cond_2

    const v0, 0x10203ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {p2, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    iget-boolean v1, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {p2, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x10203f1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mSecondaryLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mSecondaryLocaleTextDir:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-boolean p0, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutDirection(I)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot set locale, locale info is null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getSelectedLocaleInfo()Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mSelectedLocaleInfo:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    return-object p0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x10900b4

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iget-boolean p3, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mShowSelection:Z

    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->isSelectedLocaleInfo(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result p3

    invoke-direct {p0, p3, p2}, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->setItemState(ZLandroid/view/View;)V

    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->setLocaleToListItem(Landroid/view/View;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    return-object p2

    :cond_3
    instance-of p1, p2, Landroid/widget/TextView;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x10900b5

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_4
    move-object p1, p2

    check-cast p1, Landroid/widget/TextView;

    if-nez v0, :cond_5

    const p3, 0x1040771

    const v0, 0x1040ce7

    invoke-direct {p0, p1, p3, v0}, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->setHeaderText(Landroid/widget/TextView;II)V

    return-object p2

    :cond_5
    const p3, 0x104076d

    const v0, 0x1040ce6

    invoke-direct {p0, p1, p3, v0}, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->setHeaderText(Landroid/widget/TextView;II)V

    return-object p2
.end method

.method public blacklist setSelectedLocaleInfo(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->mSelectedLocaleInfo:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/BilingualSuggestedLocaleAdapter;->notifyDataSetChanged()V

    return-void
.end method
