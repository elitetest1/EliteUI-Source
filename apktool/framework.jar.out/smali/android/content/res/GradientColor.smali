.class public Landroid/content/res/GradientColor;
.super Landroid/content/res/ComplexColor;
.source "GradientColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/GradientColor$GradientColorFactory;,
        Landroid/content/res/GradientColor$GradientTileMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG_GRADIENT:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "GradientColor"

.field private static final greylist-max-o TILE_MODE_CLAMP:I = 0x0

.field private static final greylist-max-o TILE_MODE_MIRROR:I = 0x2

.field private static final greylist-max-o TILE_MODE_REPEAT:I = 0x1


# instance fields
.field private greylist-max-o mCenterColor:I

.field private greylist-max-o mCenterX:F

.field private greylist-max-o mCenterY:F

.field private greylist-max-o mChangingConfigurations:I

.field private greylist-max-o mDefaultColor:I

.field private greylist-max-o mEndColor:I

.field private greylist-max-o mEndX:F

.field private greylist-max-o mEndY:F

.field private greylist-max-o mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

.field private greylist-max-o mGradientRadius:F

.field private greylist-max-o mGradientType:I

.field private greylist-max-o mHasCenterColor:Z

.field private greylist-max-o mItemColors:[I

.field private greylist-max-o mItemOffsets:[F

.field private greylist-max-o mItemsThemeAttrs:[[I

.field private greylist-max-o mShader:Landroid/graphics/Shader;

.field private greylist-max-o mStartColor:I

.field private greylist-max-o mStartX:F

.field private greylist-max-o mStartY:F

.field private greylist-max-o mThemeAttrs:[I

.field private greylist-max-o mTileMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChangingConfigurations(Landroid/content/res/GradientColor;)I
    .locals 0

    iget p0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    return p0
.end method

.method private constructor greylist-max-o <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    iput v1, p0, Landroid/content/res/GradientColor;->mCenterY:F

    iput v1, p0, Landroid/content/res/GradientColor;->mStartX:F

    iput v1, p0, Landroid/content/res/GradientColor;->mStartY:F

    iput v1, p0, Landroid/content/res/GradientColor;->mEndX:F

    iput v1, p0, Landroid/content/res/GradientColor;->mEndY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    iput v1, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/res/GradientColor;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    iput v1, p0, Landroid/content/res/GradientColor;->mCenterY:F

    iput v1, p0, Landroid/content/res/GradientColor;->mStartX:F

    iput v1, p0, Landroid/content/res/GradientColor;->mStartY:F

    iput v1, p0, Landroid/content/res/GradientColor;->mEndX:F

    iput v1, p0, Landroid/content/res/GradientColor;->mEndY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    iput v1, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    if-eqz p1, :cond_3

    iget v0, p1, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    iput v0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    iget v0, p1, Landroid/content/res/GradientColor;->mDefaultColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    iget-object v0, p1, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    iget v0, p1, Landroid/content/res/GradientColor;->mGradientType:I

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    iget v0, p1, Landroid/content/res/GradientColor;->mCenterX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    iget v0, p1, Landroid/content/res/GradientColor;->mCenterY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    iget v0, p1, Landroid/content/res/GradientColor;->mStartX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    iget v0, p1, Landroid/content/res/GradientColor;->mStartY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    iget v0, p1, Landroid/content/res/GradientColor;->mEndX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    iget v0, p1, Landroid/content/res/GradientColor;->mEndY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    iget v0, p1, Landroid/content/res/GradientColor;->mStartColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    iget v0, p1, Landroid/content/res/GradientColor;->mCenterColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    iget v0, p1, Landroid/content/res/GradientColor;->mEndColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    iget-boolean v0, p1, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    iget v0, p1, Landroid/content/res/GradientColor;->mGradientRadius:F

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    iget v0, p1, Landroid/content/res/GradientColor;->mTileMode:I

    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemColors:[I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    :cond_0
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemOffsets:[F

    if-eqz v0, :cond_1

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    :cond_1
    iget-object v0, p1, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    if-eqz v0, :cond_2

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    :cond_2
    iget-object p1, p1, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-eqz p1, :cond_3

    invoke-virtual {p1}, [[I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    :cond_3
    return-void
.end method

.method private greylist-max-o applyItemsAttrsTheme(Landroid/content/res/Resources$Theme;)V
    .locals 9

    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    if-eqz v5, :cond_2

    sget-object v6, Lcom/android/internal/R$styleable;->GradientColorItem:[I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v6

    aput-object v6, v0, v3

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    move v4, v7

    :cond_1
    iget-object v6, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    aget v8, v6, v3

    invoke-virtual {v5, v2, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    aput v8, v6, v3

    iget-object v6, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    aget v8, v6, v3

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    aput v7, v6, v3

    iget v6, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    :cond_4
    :goto_1
    return-void
.end method

.method private greylist-max-o applyRootAttrsTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2

    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    sget-object v1, Lcom/android/internal/R$styleable;->GradientColor:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    invoke-direct {p0, p1}, Landroid/content/res/GradientColor;->updateRootElementState(Landroid/content/res/TypedArray;)V

    iget v0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private greylist-max-o applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/content/res/GradientColor;->applyRootAttrsTheme(Landroid/content/res/Resources$Theme;)V

    :cond_0
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/content/res/GradientColor;->applyItemsAttrsTheme(Landroid/content/res/Resources$Theme;)V

    :cond_1
    invoke-direct {p0}, Landroid/content/res/GradientColor;->onColorsChange()V

    return-void
.end method

.method public static greylist-max-o createFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    invoke-static {p0, p1, v0, p2}, Landroid/content/res/GradientColor;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static greylist-max-o createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gradient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/res/GradientColor;

    invoke-direct {v0}, Landroid/content/res/GradientColor;-><init>()V

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/GradientColor;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0

    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": invalid gradient color tag "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->GradientColor:[I

    invoke-static {p1, p4, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/res/GradientColor;->updateRootElementState(Landroid/content/res/TypedArray;)V

    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/content/res/GradientColor;->validateXmlContent()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/GradientColor;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0}, Landroid/content/res/GradientColor;->onColorsChange()V

    return-void
.end method

.method private greylist-max-o inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0x14

    new-array v4, v3, [F

    new-array v5, v3, [I

    new-array v3, v3, [[I

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v2, :cond_6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-ge v10, v1, :cond_0

    const/4 v11, 0x3

    if-eq v9, v11, :cond_6

    :cond_0
    const/4 v11, 0x2

    if-eq v9, v11, :cond_1

    goto/16 :goto_1

    :cond_1
    if-gt v10, v1, :cond_5

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    sget-object v9, Lcom/android/internal/R$styleable;->GradientColorItem:[I

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static {v10, v12, v11, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    if-eqz v13, :cond_4

    if-eqz v14, :cond_4

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v13

    invoke-virtual {v9, v6, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v9, v2, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    iget v2, v0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v16

    or-int v2, v2, v16

    iput v2, v0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v13, :cond_3

    const/4 v8, 0x1

    :cond_3
    invoke-static {v5, v7, v14}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v5

    invoke-static {v4, v7, v15}, Lcom/android/internal/util/GrowingArrayUtils;->append([FIF)[F

    move-result-object v4

    invoke-static {v3, v7, v13}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [[I

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_6
    if-lez v7, :cond_8

    if-eqz v8, :cond_7

    new-array v1, v7, [[I

    iput-object v1, v0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    invoke-static {v3, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    :goto_3
    new-array v1, v7, [I

    iput-object v1, v0, Landroid/content/res/GradientColor;->mItemColors:[I

    new-array v2, v7, [F

    iput-object v2, v0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    invoke-static {v5, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    invoke-static {v4, v6, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    return-void
.end method

.method private greylist-max-o onColorsChange()V
    .locals 14

    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    new-array v4, v0, [I

    new-array v5, v0, [F

    move v6, v3

    :goto_0
    if-ge v6, v0, :cond_2

    iget-object v7, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    aget v7, v7, v6

    aput v7, v4, v6

    iget-object v7, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    aget v7, v7, v6

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v4, v0, [I

    iget v5, p0, Landroid/content/res/GradientColor;->mStartColor:I

    aput v5, v4, v3

    iget v5, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    aput v5, v4, v2

    iget v5, p0, Landroid/content/res/GradientColor;->mEndColor:I

    aput v5, v4, v1

    new-array v5, v0, [F

    const/4 v0, 0x0

    aput v0, v5, v3

    const/high16 v0, 0x3f000000    # 0.5f

    aput v0, v5, v2

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v5, v1

    goto :goto_1

    :cond_1
    new-array v4, v1, [I

    iget v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    aput v0, v4, v3

    iget v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    aput v0, v4, v2

    const/4 v5, 0x0

    :cond_2
    :goto_1
    move-object v10, v4

    move-object v11, v5

    array-length v0, v10

    if-ge v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<gradient> tag requires 2 color values specified!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GradientColor"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    if-nez v0, :cond_4

    new-instance v6, Landroid/graphics/LinearGradient;

    iget v7, p0, Landroid/content/res/GradientColor;->mStartX:F

    iget v8, p0, Landroid/content/res/GradientColor;->mStartY:F

    iget v9, p0, Landroid/content/res/GradientColor;->mEndX:F

    move-object v12, v11

    move-object v11, v10

    iget v10, p0, Landroid/content/res/GradientColor;->mEndY:F

    iget v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    invoke-static {v0}, Landroid/content/res/GradientColor;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v13

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v6, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    goto :goto_2

    :cond_4
    move-object v12, v11

    move-object v11, v10

    if-ne v0, v2, :cond_5

    new-instance v6, Landroid/graphics/RadialGradient;

    iget v7, p0, Landroid/content/res/GradientColor;->mCenterX:F

    iget v8, p0, Landroid/content/res/GradientColor;->mCenterY:F

    iget v9, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    iget v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    invoke-static {v0}, Landroid/content/res/GradientColor;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    move-object v10, v11

    move-object v11, v12

    move-object v12, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v11, v10

    iput-object v6, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    iget v2, p0, Landroid/content/res/GradientColor;->mCenterY:F

    invoke-direct {v0, v1, v2, v11, v12}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    :goto_2
    aget v0, v11, v3

    iput v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    return-void
.end method

.method private static greylist-max-o parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object p0

    :cond_2
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method private greylist-max-o updateRootElementState(Landroid/content/res/TypedArray;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    const/16 v0, 0x8

    iget v1, p0, Landroid/content/res/GradientColor;->mStartX:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    const/16 v0, 0x9

    iget v1, p0, Landroid/content/res/GradientColor;->mStartY:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    const/16 v0, 0xa

    iget v1, p0, Landroid/content/res/GradientColor;->mEndX:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    const/16 v0, 0xb

    iget v1, p0, Landroid/content/res/GradientColor;->mEndY:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    const/4 v0, 0x3

    iget v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    const/4 v0, 0x4

    iget v1, p0, Landroid/content/res/GradientColor;->mCenterY:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    const/4 v0, 0x2

    iget v1, p0, Landroid/content/res/GradientColor;->mGradientType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/res/GradientColor;->mStartColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    iget-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    or-int/2addr v0, v2

    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    iget v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    const/4 v0, 0x1

    iget v1, p0, Landroid/content/res/GradientColor;->mEndColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    const/4 v0, 0x6

    iget v1, p0, Landroid/content/res/GradientColor;->mTileMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    const/4 v0, 0x5

    iget v1, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    return-void
.end method

.method private greylist-max-o validateXmlContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget p0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public greylist-max-o canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist-max-o getChangingConfigurations()I
    .locals 1

    invoke-super {p0}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v0

    iget p0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    or-int/2addr p0, v0

    return p0
.end method

.method public greylist-max-o getConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/res/GradientColor$GradientColorFactory;

    invoke-direct {v0, p0}, Landroid/content/res/GradientColor$GradientColorFactory;-><init>(Landroid/content/res/GradientColor;)V

    iput-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    :cond_0
    iget-object p0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    return-object p0
.end method

.method public greylist-max-o getDefaultColor()I
    .locals 0

    iget p0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    return p0
.end method

.method public greylist-max-o getShader()Landroid/graphics/Shader;
    .locals 0

    iget-object p0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    return-object p0
.end method

.method public bridge synthetic blacklist obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/res/GradientColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/res/GradientColor;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/res/GradientColor;

    invoke-direct {v0, p0}, Landroid/content/res/GradientColor;-><init>(Landroid/content/res/GradientColor;)V

    invoke-direct {v0, p1}, Landroid/content/res/GradientColor;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method
