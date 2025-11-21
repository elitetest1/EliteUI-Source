.class public Landroid/app/Notification$Colors;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Colors"
.end annotation


# instance fields
.field private blacklist mBackgroundColor:I

.field private blacklist mContrastColor:I

.field private blacklist mErrorColor:I

.field private blacklist mOnTertiaryAccentTextColor:I

.field private blacklist mOnTertiaryFixedAccentTextColor:I

.field private blacklist mPaletteIsForColorized:Z

.field private blacklist mPaletteIsForNightMode:Z

.field private blacklist mPaletteIsForRawColor:I

.field private blacklist mPrimaryAccentColor:I

.field private blacklist mPrimaryTextColor:I

.field private blacklist mProtectionColor:I

.field private blacklist mRippleAlpha:I

.field private blacklist mSecondaryAccentColor:I

.field private blacklist mSecondaryTextColor:I

.field private blacklist mTertiaryAccentColor:I

.field private blacklist mTertiaryFixedDimAccentColor:I

.field private blacklist mThirdTextColor:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smflattenAlpha(II)I
    .locals 0

    invoke-static {p0, p1}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mThirdTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    iput v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    const/16 v0, 0x33

    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return-void
.end method

.method private static blacklist calculateContrastColor(Landroid/content/Context;IIIZ)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    invoke-static {p0, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result p2

    :cond_1
    :goto_0
    invoke-static {p2, p3}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result p0

    return p0
.end method

.method private static blacklist flattenAlpha(II)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result p0

    return p0
.end method

.method private static blacklist getColor(Landroid/content/res/TypedArray;II)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    return p0
.end method

.method private static blacklist obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x10302e3

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getBackgroundColor()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    return p0
.end method

.method public blacklist getContrastColor()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    return p0
.end method

.method public blacklist getErrorColor()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    return p0
.end method

.method public blacklist getOnTertiaryAccentTextColor()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    return p0
.end method

.method public blacklist getOnTertiaryFixedAccentTextColor()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    return p0
.end method

.method public blacklist getPrimaryAccentColor()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    return p0
.end method

.method public blacklist getPrimaryTextColor()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    return p0
.end method

.method public blacklist getProtectionColor()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    return p0
.end method

.method public blacklist getRippleAlpha()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return p0
.end method

.method public blacklist getSecondaryAccentColor()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    return p0
.end method

.method public blacklist getSecondaryTextColor()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    return p0
.end method

.method public blacklist getTertiaryAccentColor()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    return p0
.end method

.method public blacklist getTertiaryFixedDimAccentColor()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    return p0
.end method

.method public blacklist getThirdTextColor()I
    .locals 0

    iget p0, p0, Landroid/app/Notification$Colors;->mThirdTextColor:I

    return p0
.end method

.method public blacklist resolvePalette(Landroid/content/Context;IZZ)V
    .locals 4

    iget v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    if-ne v0, p3, :cond_0

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    if-ne v0, p4, :cond_0

    return-void

    :cond_0
    iput p2, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    iput-boolean p3, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    iput-boolean p4, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    const v0, 0x3f666666    # 0.9f

    const v1, 0x10602fc

    if-eqz p3, :cond_4

    if-nez p2, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    goto :goto_0

    :cond_1
    iput p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    :goto_0
    invoke-static {}, Landroid/app/Flags;->uiRichOngoing()Z

    move-result p2

    const-wide/high16 v1, 0x4012000000000000L    # 4.5

    if-eqz p2, :cond_3

    iget p1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1}, Landroid/app/Notification$Builder;->isColorDark(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, -0x1

    goto :goto_1

    :cond_2
    const/high16 p2, -0x1000000

    :goto_1
    iget p3, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p3, p2, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p3

    iget p4, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p3, p4, p1, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->ensureContrast(IIZD)I

    move-result p3

    iput p3, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iget p3, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    const p4, 0x3f4ccccd    # 0.8f

    invoke-static {p3, p2, p4}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    iget p3, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p2, p3, p1, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->ensureContrast(IIZD)I

    move-result p1

    iput p1, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    goto :goto_2

    :cond_3
    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result p2

    iget p3, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p2, p3, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result p1

    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result p1

    iput p1, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    :goto_2
    iget p1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput p1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput p1, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    iget p2, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result p1

    iput p1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    iput p1, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    iget p1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput p1, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    const/16 p1, 0x33

    iput p1, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    goto/16 :goto_3

    :cond_4
    const p3, 0x1010543

    const v2, 0x101042c

    filled-new-array {p3, v2}, [I

    move-result-object p3

    const v2, 0x1060304

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    const v2, 0x10602ea

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    const v2, 0x10602eb

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    const v2, 0x10602f7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    const v1, 0x106030b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    const v1, 0x10602ec

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    const v1, 0x106030e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    const v1, 0x10602ee

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    invoke-static {p1, p3}, Landroid/app/Notification$Colors;->obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p3, v1, v2}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    const v3, 0x33ffffff

    invoke-static {p3, v2, v3}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->close()V

    :cond_5
    iget p3, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    iget v3, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2, p3, v3, p4}, Landroid/app/Notification$Colors;->calculateContrastColor(Landroid/content/Context;IIIZ)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveThirdColor(Landroid/content/Context;IZ)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mThirdTextColor:I

    iget p2, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    if-ne p2, v2, :cond_6

    iget p2, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    :cond_6
    iget p2, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    const/16 p3, 0xff

    if-ne p2, v2, :cond_7

    iget p2, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    invoke-static {p1, p2, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result p2

    invoke-static {p2, p3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    iput p2, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    :cond_7
    iget p2, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    if-ne p2, v2, :cond_8

    iget p2, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput p2, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    :cond_8
    iget p2, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    if-ne p2, v2, :cond_9

    iget p2, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    invoke-static {p1, p2, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result p1

    invoke-static {p1, p3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    :cond_9
    iget p1, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    if-ne p1, v2, :cond_a

    iget p1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput p1, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    :cond_a
    :goto_3
    iget p1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iget p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    return-void

    :catchall_0
    move-exception p0

    if-eqz p3, :cond_b

    :try_start_1
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    throw p0
.end method
