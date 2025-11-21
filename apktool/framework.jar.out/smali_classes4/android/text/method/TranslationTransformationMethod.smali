.class public Landroid/text/method/TranslationTransformationMethod;
.super Ljava/lang/Object;
.source "TranslationTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod2;


# static fields
.field private static final blacklist PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

.field private static final blacklist TAG:Ljava/lang/String; = "TranslationTransformationMethod"


# instance fields
.field private blacklist SEP_VERSION:Ljava/lang/Float;

.field private blacklist mAllowLengthChanges:Z

.field private blacklist mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

.field private final blacklist mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/method/TranslationTransformationMethod;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/translation/ViewTranslationResponse;Landroid/text/method/TransformationMethod;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "17.0"

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/TranslationTransformationMethod;->SEP_VERSION:Ljava/lang/Float;

    iput-object p1, p0, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    iput-object p2, p0, Landroid/text/method/TranslationTransformationMethod;->mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

    return-void
.end method

.method private blacklist isWhitespace(Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Landroid/text/method/TranslationTransformationMethod;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist getOriginalTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 0

    iget-object p0, p0, Landroid/text/method/TranslationTransformationMethod;->mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

    return-object p0
.end method

.method public whitelist getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-boolean v0, v1, Landroid/text/method/TranslationTransformationMethod;->mAllowLengthChanges:Z

    const-string v3, "TranslationTransformationMethod"

    if-nez v0, :cond_0

    const-string v0, "Caller did not enable length changes; not transforming to translated text"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    iget-object v0, v1, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    const-string v4, "android:text"

    invoke-virtual {v0, v4}, Landroid/view/translation/ViewTranslationResponse;->getValue(Ljava/lang/String;)Landroid/view/translation/TranslationResponseValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/translation/TranslationResponseValue;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "show_origin_message"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0}, Landroid/view/translation/TranslationResponseValue;->getStatusCode()I

    move-result v5

    const-wide v6, 0x402e333333333333L    # 15.1

    const-string v8, "\n\n"

    const/4 v9, 0x1

    const/4 v11, 0x0

    if-nez v5, :cond_3

    invoke-virtual {v0}, Landroid/view/translation/TranslationResponseValue;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v12, v1, Landroid/text/method/TranslationTransformationMethod;->SEP_VERSION:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    float-to-double v12, v12

    cmpl-double v12, v12, v6

    if-ltz v12, :cond_2

    instance-of v12, v2, Landroid/widget/TextView;

    if-eqz v12, :cond_2

    if-eqz v4, :cond_2

    :try_start_0
    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v12

    const/16 v13, 0xe6

    invoke-virtual {v12, v13}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    const/16 v14, 0xb3

    invoke-virtual {v12, v14}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v13}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v13

    invoke-virtual {v12}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v12

    invoke-virtual {v0}, Landroid/view/translation/TranslationResponseValue;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v14, "show_disclaimer"

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    new-instance v14, Landroid/text/SpannableString;

    invoke-direct {v14, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v15, Landroid/text/SpannableString;

    invoke-direct {v15, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/RelativeSizeSpan;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-wide/from16 v16, v6

    const v6, 0x3e99999a    # 0.3f

    :try_start_1
    invoke-direct {v0, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v15}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v18, 0x0

    const/16 v10, 0x21

    invoke-virtual {v15, v0, v9, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v6

    invoke-virtual {v7, v0, v9, v6, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    aget v6, v13, v18

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v14}, Landroid/text/SpannableString;->length()I

    move-result v6

    move/from16 v8, v18

    invoke-virtual {v14, v0, v8, v6, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v11, :cond_1

    :try_start_4
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    aget v6, v12, v8

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    invoke-virtual {v0, v5, v8, v6, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v6, 0x3f6b851f    # 0.92f

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    invoke-virtual {v0, v5, v8, v6, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v11, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v14

    goto :goto_1

    :cond_1
    :goto_0
    move-object v5, v14

    move-object v8, v15

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v7, v8

    :goto_1
    move-object v8, v15

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-wide/from16 v16, v6

    :goto_2
    move-object v7, v8

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "trans color change exception "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_2
    move-wide/from16 v16, v6

    goto :goto_4

    :cond_3
    move-wide/from16 v16, v6

    const-string v5, ""

    :goto_4
    move-object v7, v8

    :goto_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/method/TranslationTransformationMethod;->isWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_7

    :cond_4
    iget-object v0, v1, Landroid/text/method/TranslationTransformationMethod;->SEP_VERSION:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v16

    if-ltz v0, :cond_6

    instance-of v0, v2, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eqz v11, :cond_5

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/16 v18, 0x0

    aput-object p1, v2, v18

    aput-object v8, v2, v9

    aput-object v5, v2, v0

    aput-object v7, v2, v1

    const/4 v0, 0x4

    aput-object v11, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_6

    :cond_5
    const/16 v18, 0x0

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object p1, v1, v18

    aput-object v8, v1, v9

    aput-object v5, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    :cond_6
    :goto_6
    return-object v5

    :cond_7
    :goto_7
    return-object p1
.end method

.method public blacklist getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;
    .locals 0

    iget-object p0, p0, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    return-object p0
.end method

.method public whitelist onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public blacklist setLengthChangesAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/text/method/TranslationTransformationMethod;->mAllowLengthChanges:Z

    return-void
.end method
