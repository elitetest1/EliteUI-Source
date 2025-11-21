.class public Landroid/text/method/InsertModeTransformationMethod;
.super Ljava/lang/Object;
.source "InsertModeTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;,
        Landroid/text/method/InsertModeTransformationMethod$TransformedText;
    }
.end annotation


# instance fields
.field private blacklist mEnd:I

.field private final blacklist mOldTransformationMethod:Landroid/text/method/TransformationMethod;

.field private final blacklist mSingleLine:Z

.field private blacklist mStart:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I
    .locals 0

    iget p0, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/text/method/InsertModeTransformationMethod;)I
    .locals 0

    iget p0, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smintersect(IIII)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/text/method/InsertModeTransformationMethod;->intersect(IIII)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(IIZLandroid/text/method/TransformationMethod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    iput p2, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    iput-boolean p3, p0, Landroid/text/method/InsertModeTransformationMethod;->mSingleLine:Z

    iput-object p4, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    return-void
.end method

.method public constructor blacklist <init>(IZLandroid/text/method/TransformationMethod;)V
    .locals 0

    invoke-direct {p0, p1, p1, p2, p3}, Landroid/text/method/InsertModeTransformationMethod;-><init>(IIZLandroid/text/method/TransformationMethod;)V

    return-void
.end method

.method private blacklist getPlaceholderText(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 4

    iget-boolean p0, p0, Landroid/text/method/InsertModeTransformationMethod;->mSingleLine:Z

    if-nez p0, :cond_0

    const-string p0, "\n\n"

    return-object p0

    :cond_0
    new-instance p0, Landroid/text/SpannableString;

    const-string/jumbo v0, "\ufffd"

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x42d80000    # 108.0f

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    new-instance v0, Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;

    invoke-direct {v0, p1}, Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;-><init>(I)V

    const/4 p1, 0x0

    const/16 v2, 0x21

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method private static blacklist intersect(IIII)Z
    .locals 1

    const/4 v0, 0x0

    if-le p0, p3, :cond_0

    return v0

    :cond_0
    if-ge p1, p2, :cond_1

    return v0

    :cond_1
    if-eq p0, p1, :cond_3

    if-eq p2, p3, :cond_3

    if-ne p0, p3, :cond_2

    return v0

    :cond_2
    if-ne p1, p2, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public blacklist getOldTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 0

    iget-object p0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    return-object p0
.end method

.method public whitelist getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 5

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v2

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {p1, v1, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    move-object p1, v0

    :cond_1
    invoke-direct {p0, p2}, Landroid/text/method/InsertModeTransformationMethod;->getPlaceholderText(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p2

    new-instance v0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;-><init>(Landroid/text/method/InsertModeTransformationMethod;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public whitelist onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    if-le p2, v0, :cond_0

    goto :goto_1

    :cond_0
    sub-int v0, p4, p3

    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    if-ge p2, v1, :cond_3

    add-int v2, p2, p3

    if-gt v2, v1, :cond_1

    add-int/2addr v1, v0

    iput v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/text/flags/Flags;->insertModeHighlightRange()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    goto :goto_0

    :cond_2
    iput p2, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    :cond_3
    :goto_0
    add-int/2addr p3, p2

    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    if-gt p3, v1, :cond_4

    add-int/2addr v1, v0

    iput v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    return-void

    :cond_4
    if-ge p2, v1, :cond_6

    invoke-static {}, Lcom/android/text/flags/Flags;->insertModeHighlightRange()Z

    move-result p3

    if-eqz p3, :cond_5

    iget p2, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    return-void

    :cond_5
    add-int/2addr p2, p4

    iput p2, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    :cond_6
    :goto_1
    return-void
.end method

.method public blacklist update(Landroid/text/method/TransformationMethod;Z)Landroid/text/method/InsertModeTransformationMethod;
    .locals 2

    new-instance v0, Landroid/text/method/InsertModeTransformationMethod;

    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    iget p0, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    invoke-direct {v0, v1, p0, p2, p1}, Landroid/text/method/InsertModeTransformationMethod;-><init>(IIZLandroid/text/method/TransformationMethod;)V

    return-object v0
.end method
