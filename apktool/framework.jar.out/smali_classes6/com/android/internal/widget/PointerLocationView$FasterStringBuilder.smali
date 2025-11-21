.class final Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
.super Ljava/lang/Object;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FasterStringBuilder"
.end annotation


# instance fields
.field private blacklist mChars:[C

.field private blacklist mLength:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    return-void
.end method

.method private blacklist reserve(I)I
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr p1, v0

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    array-length v2, v1

    if-le p1, v2, :cond_0

    mul-int/lit8 v2, v2, 0x2

    new-array p1, v2, [C

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    :cond_0
    return v0
.end method


# virtual methods
.method public blacklist append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-float v1, v0

    mul-float/2addr p1, v1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    int-to-double v4, v0

    div-double/2addr v2, v4

    double-to-float p1, v2

    float-to-int v0, p1

    if-nez v0, :cond_1

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    const-string v2, "-"

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    if-eqz p2, :cond_2

    const-string v0, "."

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float p1, v2

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    :cond_2
    return-object p0
.end method

.method public blacklist append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist append(II)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 7

    const/4 v0, 0x1

    if-gez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    neg-int p1, p1

    if-gez p1, :cond_1

    const-string p1, "-2147483648"

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    return-object p0

    :cond_1
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    const/16 v4, 0x30

    if-nez p1, :cond_2

    aput-char v4, v3, v2

    iget p1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    return-object p0

    :cond_2
    if-eqz v1, :cond_3

    add-int/lit8 v0, v2, 0x1

    const/16 v1, 0x2d

    aput-char v1, v3, v2

    move v2, v0

    :cond_3
    const/16 v0, 0xa

    const v1, 0x3b9aca00

    move v5, v0

    :cond_4
    :goto_1
    if-ge p1, v1, :cond_5

    div-int/lit8 v1, v1, 0xa

    add-int/lit8 v5, v5, -0x1

    if-ge v5, p2, :cond_4

    add-int/lit8 v6, v2, 0x1

    aput-char v4, v3, v2

    move v2, v6

    goto :goto_1

    :cond_5
    :goto_2
    div-int p2, p1, v1

    mul-int v5, p2, v1

    sub-int/2addr p1, v5

    div-int/2addr v1, v0

    add-int/lit8 v5, v2, 0x1

    add-int/2addr p2, v4

    int-to-char p2, p2

    aput-char p2, v3, v2

    if-nez v1, :cond_6

    iput v5, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    return-object p0

    :cond_6
    move v2, v5

    goto :goto_2
.end method

.method public blacklist append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->reserve(I)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    return-object p0
.end method

.method public blacklist clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mChars:[C

    const/4 v2, 0x0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->mLength:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
