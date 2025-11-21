.class public Landroid/text/style/TextAppearanceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TextAppearanceSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final blacklist mElegantTextHeight:Z

.field private final greylist-max-o mFamilyName:Ljava/lang/String;

.field private final blacklist mFontFeatureSettings:Ljava/lang/String;

.field private final blacklist mFontVariationSettings:Ljava/lang/String;

.field private final blacklist mHasElegantTextHeight:Z

.field private final blacklist mHasLetterSpacing:Z

.field private final blacklist mLetterSpacing:F

.field private final blacklist mShadowColor:I

.field private final blacklist mShadowDx:F

.field private final blacklist mShadowDy:F

.field private final blacklist mShadowRadius:F

.field private final greylist-max-o mStyle:I

.field private final greylist-max-o mTextColor:Landroid/content/res/ColorStateList;

.field private final greylist-max-o mTextColorLink:Landroid/content/res/ColorStateList;

.field private final blacklist mTextFontWeight:I

.field private final blacklist mTextLocales:Landroid/os/LocaleList;

.field private final greylist-max-o mTextSize:I

.field private final greylist-max-o mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;II)V
    .locals 8

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    sget-object v0, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    const/4 v4, 0x2

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v5

    const/16 v6, 0xc

    const/4 v7, 0x0

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->canLoadUnsafeResources()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iput-object v7, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    :goto_0
    iget-object v5, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v5, :cond_1

    iput-object v7, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iput-object v5, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-eq v6, v5, :cond_5

    if-eq v6, v4, :cond_4

    if-eq v6, v0, :cond_3

    iput-object v7, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "monospace"

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "serif"

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "sans"

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    :goto_1
    const/16 v0, 0x12

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    const/16 v0, 0x13

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    goto :goto_2

    :cond_6
    iput-object v7, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    goto :goto_2

    :cond_7
    iput-object v7, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    :goto_2
    const/16 v0, 0xa

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    const/16 v0, 0x8

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    const/16 v0, 0x9

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    const/4 v0, 0x7

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-ltz p3, :cond_8

    const p2, 0x1030005

    sget-object v0, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 19

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    sget-object v4, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v5, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ColorStateList;

    :cond_1
    invoke-static {v0}, Landroid/graphics/LeakyTypefaceStorage;->readTypefaceFromParcel(Landroid/os/Parcel;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    const-class v8, Landroid/os/LocaleList;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const-class v9, Landroid/os/LocaleList;

    invoke-virtual {v0, v8, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v18}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/graphics/Typeface;ILandroid/os/LocaleList;FFFIZZZFLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    iput p3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    iput-object p4, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iput-object p5, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    const/4 p2, -0x1

    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    const/4 p2, 0x0

    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    const/4 p3, 0x0

    iput p3, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    iput-boolean p3, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    iput-boolean p3, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    iput-boolean p3, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/graphics/Typeface;ILandroid/os/LocaleList;FFFIZZZFLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    iput p3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    iput-object p4, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iput-object p5, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    iput-object p6, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    iput p7, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    iput-object p8, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    iput p9, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    iput p10, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    iput p11, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    iput p12, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    iput-boolean p13, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    iput-boolean p14, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    iput-boolean p15, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    move/from16 p1, p16

    iput p1, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    move-object/from16 p1, p17

    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    move-object/from16 p1, p18

    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getFamily()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getFontFeatureSettings()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getFontVariationSettings()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getLetterSpacing()F
    .locals 0

    iget p0, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    return p0
.end method

.method public whitelist getLinkTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public whitelist getShadowColor()I
    .locals 0

    iget p0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    return p0
.end method

.method public whitelist getShadowDx()F
    .locals 0

    iget p0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    return p0
.end method

.method public whitelist getShadowDy()F
    .locals 0

    iget p0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    return p0
.end method

.method public whitelist getShadowRadius()F
    .locals 0

    iget p0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    return p0
.end method

.method public whitelist getSpanTypeId()I
    .locals 0

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getSpanTypeIdInternal()I

    move-result p0

    return p0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .locals 0

    const/16 p0, 0x11

    return p0
.end method

.method public whitelist getTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public whitelist getTextFontWeight()I
    .locals 0

    iget p0, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    return p0
.end method

.method public whitelist getTextLocales()Landroid/os/LocaleList;
    .locals 0

    iget-object p0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    return-object p0
.end method

.method public whitelist getTextSize()I
    .locals 0

    iget p0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    return p0
.end method

.method public whitelist getTextStyle()I
    .locals 0

    iget p0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    return p0
.end method

.method public whitelist getTypeface()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public blacklist hasElegantTextHeight()Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    return p0
.end method

.method public blacklist hasLetterSpacing()Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    return p0
.end method

.method public whitelist isElegantTextHeight()Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextAppearanceSpan{familyName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textColorLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", typeface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textFontWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextFontWeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textLocales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shadowRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getShadowRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", shadowDx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getShadowDx()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", shadowDy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getShadowDy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", shadowColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getShadowColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "#%08X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", elegantTextHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->isElegantTextHeight()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", letterSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getLetterSpacing()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fontFeatureSettings=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', fontVariationSettings=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getFontVariationSettings()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/text/style/TextAppearanceSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    :cond_1
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    if-eqz v0, :cond_2

    iget v1, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    iget p0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    invoke-virtual {p1, v1, v2, p0, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_2
    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .locals 6

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v2, v1

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_a

    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    const/4 v4, 0x1

    if-ltz v3, :cond_7

    const/16 v5, 0x3e8

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_6

    move v1, v4

    :cond_6
    invoke-static {v0, v3, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, v2

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_8

    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_8
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    const/high16 v1, -0x41800000    # -0.25f

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :cond_9
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_a
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    if-lez v0, :cond_b

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_b
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    if-eqz v0, :cond_c

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextLocales(Landroid/os/LocaleList;)V

    :cond_c
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setElegantTextHeight(Z)V

    :cond_d
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_e
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_f
    iget-object p0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    if-eqz p0, :cond_10

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_10
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/TextAppearanceSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/LeakyTypefaceStorage;->writeTypefaceToParcel(Landroid/graphics/Typeface;Landroid/os/Parcel;)V

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p2, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
