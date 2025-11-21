.class public Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;
.super Ljava/lang/Object;
.source "SemTipPopupWrapper.java"


# instance fields
.field private final blacklist BIXBY_TOOLTIP_DISPLAY_LIMIT_COUNT:I

.field private blacklist mContent:Landroid/text/SpannableString;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mKey:Ljava/lang/String;

.field private blacklist mPopup:Lcom/samsung/android/widget/SemTipPopup;

.field private blacklist mPrefrerences:Landroid/content/SharedPreferences;

.field private blacklist mTitle:Landroid/text/SpannableString;


# direct methods
.method public static synthetic blacklist $r8$lambda$8poRK6e3nB0AwByx7m0yrd1OIHY(Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->lambda$show$0(I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->BIXBY_TOOLTIP_DISPLAY_LIMIT_COUNT:I

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mTitle:Landroid/text/SpannableString;

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContent:Landroid/text/SpannableString;

    return-void
.end method

.method private blacklist addCount(I)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPrefrerences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    const-string v0, "count"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic blacklist lambda$show$0(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->hideTipPermanently()V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method public blacklist hideTipPermanently()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPrefrerences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "count"

    const/4 v1, 0x5

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public blacklist init(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {v0, p1}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPrefrerences:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/16 p2, 0x8c

    const/16 v1, 0xff

    invoke-static {v0, p2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/widget/SemTipPopup;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->setOutsideTouchEnabled(Z)V

    return-void
.end method

.method public blacklist setContent(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContent:Landroid/text/SpannableString;

    return-void
.end method

.method public blacklist setTitle(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mTitle:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mTitle:Landroid/text/SpannableString;

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, v3, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public blacklist show(I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mTitle:Landroid/text/SpannableString;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v1, v4, v2

    const-string v1, "\n\n"

    aput-object v1, v4, v3

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContent:Landroid/text/SpannableString;

    aput-object v5, v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mContent:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPrefrerences:Landroid/content/SharedPreferences;

    const-string v1, "count"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    :goto_1
    return-void

    :cond_2
    if-ne v0, v3, :cond_3

    iget-object v1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    iget-object p1, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    new-instance v1, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/widget/SemTipPopup;->setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->addCount(I)V

    return-void
.end method

.method public blacklist update()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SemTipPopupWrapper;->mPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTipPopup;->update()V

    return-void
.end method
