.class public Lcom/android/internal/widget/NumericTextView;
.super Landroid/widget/TextView;
.source "NumericTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;
    }
.end annotation


# static fields
.field private static final blacklist LOG_RADIX:D

.field private static final blacklist RADIX:I = 0xa


# instance fields
.field private blacklist mCount:I

.field private blacklist mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

.field private blacklist mMaxCount:I

.field private blacklist mMaxValue:I

.field private blacklist mMinValue:I

.field private blacklist mPreviousValue:I

.field private blacklist mShowLeadingZeroes:Z

.field private blacklist mValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/widget/NumericTextView;->LOG_RADIX:D

    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    const/16 p2, 0x63

    iput p2, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {p1}, Landroid/util/StateSet;->get(I)[I

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/NumericTextView;->setHintTextColor(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/NumericTextView;->setFocusable(Z)V

    return-void
.end method

.method private blacklist handleKeyUp(I)Z
    .locals 6

    const/16 v0, 0x43

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    if-lez p1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    iget v3, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    if-ge v0, v3, :cond_1

    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->numericKeyCodeToInt(I)I

    move-result p1

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, p1

    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    if-gt v0, p1, :cond_1

    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    if-lez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "%0"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    if-eqz p1, :cond_6

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    iget v3, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    if-lt v0, v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    if-ge v4, v5, :cond_4

    mul-int/lit8 v4, v0, 0xa

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    if-le v4, v5, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    invoke-interface {p1, p0, v0, v3, v1}, Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/android/internal/widget/NumericTextView;IZZ)V

    :cond_6
    return v2

    :cond_7
    return v1
.end method

.method private static blacklist isKeyCodeNumeric(I)Z
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist numericKeyCodeToInt(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x7

    return p0
.end method

.method private blacklist updateDisplayedValue()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "%d"

    :goto_0
    iget v1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private blacklist updateMinimumWidth()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    if-ge v2, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "%0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1, v1}, Lcom/android/internal/widget/NumericTextView;->measure(II)V

    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getMeasuredWidth()I

    move-result v4

    if-le v4, v3, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/NumericTextView;->setMinWidth(I)V

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/NumericTextView;->setMinimumWidth(I)V

    return-void
.end method


# virtual methods
.method public final blacklist getOnDigitEnteredListener()Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    return-object p0
.end method

.method public final blacklist getRangeMaximum()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    return p0
.end method

.method public final blacklist getRangeMinimum()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    return p0
.end method

.method public final blacklist getShowLeadingZeroes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    return p0
.end method

.method public final blacklist getValue()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    return p0
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const-string p2, ""

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mPreviousValue:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/NumericTextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mPreviousValue:I

    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/NumericTextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    iget p2, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    if-ge p1, p2, :cond_2

    iput p2, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    :cond_2
    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    iget-object p1, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    if-eqz p1, :cond_3

    iget p2, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    const/4 p3, 0x1

    invoke-interface {p1, p0, p2, p3, p3}, Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/android/internal/widget/NumericTextView;IZZ)V

    :cond_3
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

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

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

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

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NumericTextView;->handleKeyUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

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

.method public final blacklist setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    return-void
.end method

.method public final blacklist setRange(II)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    :cond_0
    iget p1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    if-eq p1, p2, :cond_1

    iput p2, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    int-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    sget-wide v0, Lcom/android/internal/widget/NumericTextView;->LOG_RADIX:D

    div-double/2addr p1, v0

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateMinimumWidth()V

    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    :cond_1
    return-void
.end method

.method public final blacklist setShowLeadingZeroes(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    :cond_0
    return-void
.end method

.method public final blacklist setValue(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    :cond_0
    return-void
.end method
