.class Landroid/widget/TextView$CharWrapper;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/GraphicsOperations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharWrapper"
.end annotation


# instance fields
.field private greylist-max-o mChars:[C

.field private greylist-max-o mLength:I

.field private greylist-max-o mStart:I


# direct methods
.method constructor greylist-max-o <init>([CII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    return-void
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p1, p0

    aget-char p0, v0, p1

    return p0
.end method

.method public greylist-max-o drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V
    .locals 1

    move-object v0, p0

    move-object p0, p1

    iget-object p1, v0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, v0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v0, p2

    sub-int/2addr p3, p2

    move p2, v0

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public greylist-max-o drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V
    .locals 1

    sub-int/2addr p3, p2

    sub-int/2addr p5, p4

    move-object v0, p0

    move-object p0, p1

    iget-object p1, v0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, v0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p2, v0

    add-int/2addr p4, v0

    invoke-virtual/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist getChars(II[CI)V
    .locals 1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-static {v0, p0, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .locals 1

    sub-int/2addr p2, p1

    sub-int/2addr p4, p3

    move v0, p1

    iget-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v0, p0

    add-int/2addr p3, p0

    move-object p0, p8

    move p8, p7

    move-object p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, v0

    invoke-virtual/range {p0 .. p8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result p0

    return p0
.end method

.method public blacklist getTextRunCursor(IIZIILandroid/graphics/Paint;)I
    .locals 1

    sub-int/2addr p2, p1

    move v0, p1

    iget-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v0, p0

    add-int/2addr p4, p0

    move-object p0, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, v0

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result p0

    return p0
.end method

.method public greylist-max-o getTextWidths(II[FLandroid/graphics/Paint;)I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-virtual {p4, v0, p0, p2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result p0

    return p0
.end method

.method public whitelist test-api length()I
    .locals 0

    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    return p0
.end method

.method public greylist-max-o measureText(IILandroid/graphics/Paint;)F
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-virtual {p3, v0, p0, p2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p0

    return p0
.end method

.method greylist-max-o set([CII)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    return-void
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p0, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    iget p0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
