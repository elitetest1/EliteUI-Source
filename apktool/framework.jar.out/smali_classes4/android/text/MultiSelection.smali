.class public Landroid/text/MultiSelection;
.super Ljava/lang/Object;
.source "MultiSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/MultiSelection$START;,
        Landroid/text/MultiSelection$END;
    }
.end annotation


# static fields
.field public static final blacklist CURRENT_SELECTION_END:Ljava/lang/Object;

.field public static final blacklist CURRENT_SELECTION_START:Ljava/lang/Object;

.field private static blacklist mHoveredIcon:I

.field private static blacklist mIsSelecting:Z

.field private static blacklist mIsTextViewHovered:Z

.field private static blacklist mNeedToScroll:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/text/MultiSelection$START;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/MultiSelection$START;-><init>(Landroid/text/MultiSelection-IA;)V

    sput-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    new-instance v0, Landroid/text/MultiSelection$END;

    invoke-direct {v0, v1}, Landroid/text/MultiSelection$END;-><init>(Landroid/text/MultiSelection-IA;)V

    sput-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/text/MultiSelection;->mIsSelecting:Z

    sput-boolean v0, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    sput-boolean v0, Landroid/text/MultiSelection;->mNeedToScroll:Z

    const/4 v0, -0x1

    sput v0, Landroid/text/MultiSelection;->mHoveredIcon:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist addMultiSelection(Landroid/text/Spannable;II)V
    .locals 3

    if-ltz p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/MultiSelection$START;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/MultiSelection$START;-><init>(Landroid/text/MultiSelection-IA;)V

    new-instance v2, Landroid/text/MultiSelection$END;

    invoke-direct {v2, v1}, Landroid/text/MultiSelection$END;-><init>(Landroid/text/MultiSelection-IA;)V

    const/16 v1, 0x222

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/16 p1, 0x22

    invoke-interface {p0, v2, p2, p2, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final blacklist clearMultiSelection(Landroid/text/Spannable;)V
    .locals 4

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/MultiSelection$START;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$START;

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v3, Landroid/text/MultiSelection$END;

    invoke-interface {p0, v2, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$END;

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    aget-object v3, v1, v2

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final blacklist getHoveredIcon()I
    .locals 1

    sget v0, Landroid/text/MultiSelection;->mHoveredIcon:I

    return v0
.end method

.method public static final blacklist getIsMultiSelectingText()Z
    .locals 1

    sget-boolean v0, Landroid/text/MultiSelection;->mIsSelecting:Z

    return v0
.end method

.method public static final blacklist getMultiSelectionCount(Landroid/text/Spannable;)I
    .locals 3

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/MultiSelection$START;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/MultiSelection$START;

    array-length p0, p0

    return p0
.end method

.method public static final blacklist getMultiSelectionEnd(Landroid/text/Spannable;)[I
    .locals 4

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/MultiSelection$END;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$END;

    array-length v1, v0

    new-array v1, v1, [I

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final blacklist getMultiSelectionStart(Landroid/text/Spannable;)[I
    .locals 4

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/MultiSelection$START;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$START;

    array-length v1, v0

    new-array v1, v1, [I

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final blacklist getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 1

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/Spanned;

    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static final blacklist getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 1

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/Spanned;

    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static final blacklist isNeedToScroll()Z
    .locals 1

    sget-boolean v0, Landroid/text/MultiSelection;->mNeedToScroll:Z

    return v0
.end method

.method public static final blacklist isTextViewHovered()Z
    .locals 1

    sget-boolean v0, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    return v0
.end method

.method public static final blacklist removeCurSelection(Landroid/text/Spannable;)V
    .locals 1

    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public static final blacklist removeMultiSelection(Landroid/text/Spannable;II)Z
    .locals 3

    const-class v0, Landroid/text/MultiSelection$START;

    invoke-interface {p0, p1, p1, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/MultiSelection$START;

    const-class v0, Landroid/text/MultiSelection$END;

    invoke-interface {p0, p2, p2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/MultiSelection$END;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object p1, p1, v1

    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    array-length v0, p2

    if-ne v0, v2, :cond_1

    aget-object p2, p2, v1

    invoke-interface {p0, p2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return p1

    :cond_1
    return v1
.end method

.method public static final blacklist selectAll(Landroid/text/Spannable;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public static final blacklist setIsMultiSelectingText(Z)V
    .locals 0

    sput-boolean p0, Landroid/text/MultiSelection;->mIsSelecting:Z

    return-void
.end method

.method public static final blacklist setNeedToScroll(Z)V
    .locals 0

    sput-boolean p0, Landroid/text/MultiSelection;->mNeedToScroll:Z

    return-void
.end method

.method public static blacklist setSelection(Landroid/text/Spannable;II)V
    .locals 12

    if-eq p1, p2, :cond_10

    if-ltz p1, :cond_10

    if-gez p2, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {p0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    const/4 v11, 0x0

    if-lez p1, :cond_1

    if-lt p1, v5, :cond_2

    :cond_1
    if-lez p2, :cond_a

    if-ge p2, v5, :cond_a

    :cond_2
    const/4 v2, 0x1

    if-lez p1, :cond_5

    if-ge p1, v5, :cond_5

    invoke-interface {p0, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v11

    :goto_1
    if-lez p2, :cond_8

    if-ge p2, v5, :cond_8

    invoke-interface {p0, p2}, Landroid/text/Spannable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    if-nez v3, :cond_8

    invoke-static {v4}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v3, v2

    :cond_8
    :goto_2
    if-eqz v3, :cond_a

    new-array v9, v5, [F

    new-array v3, v5, [C

    move v4, v2

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {p0, v11, v5, v3, v11}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v7, v5

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    :goto_3
    const/16 v2, 0xa

    const/4 v4, 0x0

    if-ge p1, v5, :cond_9

    aget v6, v9, p1

    cmpl-float v6, v6, v4

    if-nez v6, :cond_9

    aget-char v6, v3, p1

    if-eq v6, v2, :cond_9

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-ge p2, v5, :cond_a

    aget v6, v9, p2

    cmpl-float v6, v6, v4

    if-nez v6, :cond_a

    aget-char v6, v3, p2

    if-eq v6, v2, :cond_a

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_a
    if-ne v0, p1, :cond_b

    if-eq v1, p2, :cond_10

    :cond_b
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/MultiSelection$START;

    invoke-interface {p0, v11, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$START;

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/MultiSelection$END;

    invoke-interface {p0, v11, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$END;

    :goto_5
    array-length v2, v0

    if-ge v11, v2, :cond_f

    aget-object v2, v0, v11

    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    aget-object v3, v1, v11

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-gt v2, p1, :cond_c

    if-lt p1, v3, :cond_d

    :cond_c
    if-ge v2, p2, :cond_e

    if-gt p2, v3, :cond_e

    :cond_d
    aget-object v2, v0, v11

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    aget-object v2, v1, v11

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_f
    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    const/16 v1, 0x222

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    sget-object p1, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    const/16 v0, 0x22

    invoke-interface {p0, p1, p2, p2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_10
    :goto_6
    return-void
.end method

.method public static final blacklist setTextViewHovered(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/text/MultiSelection;->setTextViewHovered(ZI)V

    return-void
.end method

.method public static final blacklist setTextViewHovered(ZI)V
    .locals 0

    sput-boolean p0, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    sput p1, Landroid/text/MultiSelection;->mHoveredIcon:I

    return-void
.end method
