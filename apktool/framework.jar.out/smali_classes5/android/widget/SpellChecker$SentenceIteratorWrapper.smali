.class Landroid/widget/SpellChecker$SentenceIteratorWrapper;
.super Ljava/lang/Object;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SentenceIteratorWrapper"
.end annotation


# instance fields
.field private blacklist mEndOffset:I

.field private blacklist mSentenceIterator:Ljava/text/BreakIterator;

.field private blacklist mStartOffset:I


# direct methods
.method constructor blacklist <init>(Ljava/text/BreakIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mSentenceIterator:Ljava/text/BreakIterator;

    return-void
.end method


# virtual methods
.method public blacklist following(I)I
    .locals 3

    iget v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mEndOffset:I

    const/4 v1, -0x1

    if-le p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mSentenceIterator:Ljava/text/BreakIterator;

    iget v2, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    iget p0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    add-int/2addr p1, p0

    return p1
.end method

.method public blacklist isBoundary(I)Z
    .locals 2

    iget v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mEndOffset:I

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mSentenceIterator:Ljava/text/BreakIterator;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist preceding(I)I
    .locals 3

    iget v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    const/4 v1, -0x1

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mSentenceIterator:Ljava/text/BreakIterator;

    sub-int/2addr p1, v0

    invoke-virtual {v2, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    iget p0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    add-int/2addr p1, p0

    return p1
.end method

.method public blacklist setCharSequence(Ljava/lang/CharSequence;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mEndOffset:I

    iget-object p3, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mSentenceIterator:Ljava/text/BreakIterator;

    iget p0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    invoke-interface {p1, p0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    return-void
.end method
