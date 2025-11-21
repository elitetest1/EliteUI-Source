.class final Lcom/android/internal/widget/NotificationProgressDrawable$State;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "NotificationProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation


# instance fields
.field blacklist mChangingConfigurations:I

.field blacklist mDensity:I

.field blacklist mFadedSegmentHeight:F

.field blacklist mPointRadius:F

.field blacklist mPointRectCornerRadius:F

.field blacklist mPointRectInset:F

.field blacklist mSegmentCornerRadius:F

.field blacklist mSegmentHeight:F

.field blacklist mThemeAttrs:[I

.field blacklist mThemeAttrsPoints:[I

.field blacklist mThemeAttrsSegments:[I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    iget-object v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrs:[I

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrs:[I

    iget-object v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    iget-object v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    iget v0, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    invoke-static {p2, v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    iget p1, p1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    if-eq p1, p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->applyDensityScaling(II)V

    :cond_0
    return-void
.end method

.method private blacklist applyDensityScaling(II)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    :cond_2
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    :cond_3
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    :cond_4
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->-$$Nest$smscaleFromDensity(FII)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    :cond_5
    return-void
.end method


# virtual methods
.method public whitelist canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrs:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result p0

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

.method public whitelist getChangingConfigurations()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    return p0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lcom/android/internal/widget/NotificationProgressDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;Lcom/android/internal/widget/NotificationProgressDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    invoke-static {p1, v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V

    move-object p0, v0

    :cond_0
    new-instance v0, Lcom/android/internal/widget/NotificationProgressDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;Lcom/android/internal/widget/NotificationProgressDrawable-IA;)V

    return-object v0
.end method

.method public blacklist setDensity(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mDensity:I

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->applyDensityScaling(II)V

    :cond_0
    return-void
.end method
